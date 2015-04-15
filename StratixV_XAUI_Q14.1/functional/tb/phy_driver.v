//============================================================
// Code    ordered_set    #code groups   encoding
// I        idle                         
// K        sync column   4               4{K28.5} BCBCBCBC    
// R        Skip column   4               4{K28.0} 1C1C1C1C   
// A        Align column  4               4{K28.3} 7C7C7C7C   
//============================================================
`define K28_0 8'h1C  
`define K28_3 8'h7C
`define K28_5 8'hBC
`define SEND_K 1
`define SEND_RANDOM_R 2
`define SEND_RANDOM_K 3
`define SEND_RANDOM_A 4
`define SEND_DATA 5

   reg [1:7]      code_sel_generator;
   reg [3:0]      disp_is_pos;
   integer        a_cnt;
   integer        idle_state;
   reg            next_ifg_is_a;

   task rx_stimulus_send_idle;
     reg [7:0] next_idle_code;
     begin
       get_next_idle_code(next_idle_code);
       rx_stimulus_send_column( { 4{next_idle_code} }, 4'b1111 );
     end
   endtask // rx_stimulus_send_idle

   task get_next_idle_code;
     output [7:0] idle_code;
     case (idle_state)
       `SEND_DATA :
          begin
            if (next_ifg_is_a && a_cnt == 0)
              begin
                idle_code = `K28_3;
                next_ifg_is_a = 0;
              end
            else
              begin
                idle_code = `K28_5;
                next_ifg_is_a = 1;
              end
            idle_state = `SEND_RANDOM_R;
          end // case: `SEND_DATA
        `SEND_K :
          begin
            idle_code = `K28_5;
            idle_state = `SEND_RANDOM_R;
            next_ifg_is_a = 1;
          end
        `SEND_RANDOM_R :
          begin
            idle_code = `K28_0;
            if (!a_cnt)
              idle_state = `SEND_RANDOM_A;
            else if (code_sel_generator[7])
              idle_state = `SEND_RANDOM_R;
            else
              idle_state = `SEND_RANDOM_K;
          end
        `SEND_RANDOM_A :
          begin
            idle_code = `K28_3;
            if (!code_sel_generator[7])
              idle_state = `SEND_RANDOM_K;
            else
              idle_state = `SEND_RANDOM_R;
            end
        `SEND_RANDOM_K :
          begin
            idle_code = `K28_5;
            if (!a_cnt)
              idle_state = `SEND_RANDOM_A;
            else if (!code_sel_generator[7])
              idle_state = `SEND_RANDOM_K;
            else
              idle_state = `SEND_RANDOM_R;
          end
      endcase
   endtask // get_next_idle_code


   task rx_stimulus_send_column;
     input [31:0] d;
     input [ 3:0] c;
     reg [0:39] codegroups;
     reg [0:9] current_codegroup;
     reg [7:0] current_byte;
     integer I, J;
     begin
       // encode each character in the codegroups
       for (I = 0; I < 4; I = I + 1)
         begin
           for (J = 0; J < 8; J = J + 1)
             current_byte[J] = d[I*8+J];

           if (current_byte == 8'h07 && c[I])
             // convert idles in data column to K28.5
              encode_8b10b(
                `K28_5,
                1,
                current_codegroup,
                disp_is_pos[I],
                disp_is_pos[I]);
           else
             encode_8b10b(
               current_byte,
               c[I],
               current_codegroup,
               disp_is_pos[I],
               disp_is_pos[I]);

           for (J =0; J < 10; J = J + 1)
             codegroups[I*10+J] = current_codegroup[J];
       end // for (I = 0; I < 4; I = I + 1)

       rx_stimulus_send_10b_column(codegroups);

       if (d[7:0] == `K28_3 && c[0])
         // ||A|| column
         a_cnt = {1'b1, code_sel_generator[4:7]};
       else if (a_cnt > 0)
         a_cnt = a_cnt - 1;

       if (!is_idle(d[7:0], c[0]))
         idle_state = `SEND_DATA;

       update_prbs;
     end
   endtask // rx_stimulus_send_column

   function is_idle;
     input [7:0] d;
     input c;
     begin
       if (c)
         case (d)
           `K28_0, `K28_3, `K28_5 :
             is_idle = 1;
           default:
             is_idle = 0;
         endcase // case(d)
       else
         is_idle = 0;
       end
   endfunction // is_idle

   task update_prbs;
     begin
       code_sel_generator = {
         code_sel_generator[7] ^ code_sel_generator[3],
         code_sel_generator[1:6]};
      end
   endtask // update_prbs


   /* helper task for RX stimulus process */
   task encode_8b10b;
      input [7:0] d8;
      input is_k;
      output [0:9] q10;
      input disparity_pos_in;
      output disparity_pos_out;
      reg [5:0] b6;
      reg [3:0] b4;
      reg k28, pdes6, a7, l13, l31, a, b, c, d, e;
      integer I;

      begin  // encode_8b10b
        // precalculate some common terms
        a = d8[0];
        b = d8[1];
        c = d8[2];
        d = d8[3];
        e = d8[4];

       k28 = is_k && d8[4:0] === 5'b11100;

       l13 = (((a ^ b) & !(c | d))
            | ((c ^ d) & !(a | b)));

       l31 = (((a ^ b) & (c & d))
            | ((c ^ d) & (a & b)));

       a7 = is_k | ((l31 & d & !e & disparity_pos_in)
                  | (l13 & !d & e & !disparity_pos_in));
       /*------------------------------------------------------------------------
       * Do the 5B/6B conversion (calculate the 6b symbol)
       *----------------------------------------------------------------------*/

       if (k28)                           //K.28
         if (!disparity_pos_in)
           b6 = 6'b111100;
         else
           b6 = 6'b000011;
       else
         case (d8[4:0])
           5'b00000 :                 //D.0
             if (disparity_pos_in)
               b6 = 6'b000110;
             else
               b6 = 6'b111001;
           5'b00001 :                 //D.1
             if (disparity_pos_in)
               b6 = 6'b010001;
             else
               b6 = 6'b101110;
           5'b00010 :                 //D.2
             if (disparity_pos_in)
               b6 = 6'b010010;
             else
               b6 = 6'b101101;
           5'b00011 :
             b6 = 6'b100011;               //D.3
           5'b00100 :                //-D.4
             if (disparity_pos_in)
               b6 = 6'b010100;
             else
               b6 = 6'b101011;
           5'b00101 :
             b6 = 6'b100101;               //D.5
           5'b00110 :
             b6 = 6'b100110;               //D.6
           5'b00111 :                 //D.7
             if (!disparity_pos_in)
               b6 = 6'b000111;
             else
               b6 = 6'b111000;
           5'b01000 :                 //D.8
             if (disparity_pos_in)
               b6 = 6'b011000;
             else
               b6 = 6'b100111;
           5'b01001 :
             b6 = 6'b101001;               //D.9
           5'b01010 :
             b6 = 6'b101010;               //D.10
           5'b01011 :
             b6 = 6'b001011;               //D.11
           5'b01100 :
             b6 = 6'b101100;               //D.12
           5'b01101 :
             b6 = 6'b001101;               //D.13
           5'b01110 :
             b6 = 6'b001110;               //D.14
           5'b01111 :                 //D.15
             if (disparity_pos_in)
               b6 = 6'b000101;
             else
               b6 = 6'b111010;
           5'b10000 :                 //D.16
             if (!disparity_pos_in)
               b6 = 6'b110110;
             else
               b6 = 6'b001001;

           5'b10001 :
             b6 = 6'b110001;               //D.17
           5'b10010 :
             b6 = 6'b110010;               //D.18
           5'b10011 :
             b6 = 6'b010011;               //D.19
           5'b10100 :
             b6 = 6'b110100;               //D.20
           5'b10101 :
             b6 = 6'b010101;               //D.21
           5'b10110 :
             b6 = 6'b010110;               //D.22
           5'b10111 :                      //D/K.23
             if (!disparity_pos_in)
               b6 = 6'b010111;
             else
               b6 = 6'b101000;
           5'b11000 :                 //D.24
             if (disparity_pos_in)
               b6 = 6'b001100;
             else
               b6 = 6'b110011;
           5'b11001 :
             b6 = 6'b011001;               //D.25
           5'b11010 :
             b6 = 6'b011010;               //D.26
           5'b11011 :                 //D/K.27
             if (!disparity_pos_in)
               b6 = 6'b011011;
             else
               b6 = 6'b100100;
           5'b11100 :
             b6 = 6'b011100;               //D.28
           5'b11101 :                 //D/K.29
             if (!disparity_pos_in)
               b6 = 6'b011101;
             else
               b6 = 6'b100010;
           5'b11110 :                 //D/K.30
             if (!disparity_pos_in)
               b6 = 6'b011110;
             else
               b6 = 6'b100001;
           5'b11111 :                 //D.31
             if (!disparity_pos_in)
               b6 = 6'b110101;
             else
               b6 = 6'b001010;
           default :
             b6 = 6'bXXXXXX;
         endcase // case(d8[4:0])

         // reverse the bits
         for (I = 0; I < 6; I = I + 1)
            q10[I] = b6[I];


         // calculate the running disparity after the 5B6B block encode
         if (k28)
           pdes6 = !disparity_pos_in;
         else
           case (d8[4:0])
             5'b00000 : pdes6 = !disparity_pos_in;
             5'b00001 : pdes6 = !disparity_pos_in;
             5'b00010 : pdes6 = !disparity_pos_in;
             5'b00011 : pdes6 = disparity_pos_in;
             5'b00100 : pdes6 = !disparity_pos_in;
             5'b00101 : pdes6 = disparity_pos_in;
             5'b00110 : pdes6 = disparity_pos_in;
             5'b00111 : pdes6 = disparity_pos_in;
             5'b01000 : pdes6 = !disparity_pos_in;
             5'b01001 : pdes6 = disparity_pos_in;
             5'b01010 : pdes6 = disparity_pos_in;
             5'b01011 : pdes6 = disparity_pos_in;
             5'b01100 : pdes6 = disparity_pos_in;
             5'b01101 : pdes6 = disparity_pos_in;
             5'b01110 : pdes6 = disparity_pos_in;
             5'b01111 : pdes6 = !disparity_pos_in;
             5'b10000 : pdes6 = !disparity_pos_in;
             5'b10001 : pdes6 = disparity_pos_in;
             5'b10010 : pdes6 = disparity_pos_in;
             5'b10011 : pdes6 = disparity_pos_in;
             5'b10100 : pdes6 = disparity_pos_in;
             5'b10101 : pdes6 = disparity_pos_in;
             5'b10110 : pdes6 = disparity_pos_in;
             5'b10111 : pdes6 = !disparity_pos_in;
             5'b11000 : pdes6 = !disparity_pos_in;
             5'b11001 : pdes6 = disparity_pos_in;
             5'b11010 : pdes6 = disparity_pos_in;
             5'b11011 : pdes6 = !disparity_pos_in;
             5'b11100 : pdes6 = disparity_pos_in;
             5'b11101 : pdes6 = !disparity_pos_in;
             5'b11110 : pdes6 = !disparity_pos_in;
             5'b11111 : pdes6 = !disparity_pos_in;
             default  : pdes6 = disparity_pos_in;
           endcase // case(d8[4:0])

           case (d8[7:5])
             3'b000 :                     //D/K.x.0
               if (pdes6)
                 b4 = 4'b0010;
               else
                 b4 = 4'b1101;
             3'b001 :                     //D/K.x.1
               if (k28 && !pdes6)
                 b4 = 4'b0110;
               else
                 b4 = 4'b1001;
             3'b010 :                     //D/K.x.2
               if (k28 && !pdes6)
                 b4 = 4'b0101;
               else
                 b4 = 4'b1010;
             3'b011 :                     //D/K.x.3
               if (!pdes6)
                 b4 = 4'b0011;
               else
                 b4 = 4'b1100;
             3'b100 :                     //D/K.x.4
               if (pdes6)
                 b4 = 4'b0100;
               else
                 b4 = 4'b1011;
             3'b101 :                     //D/K.x.5
               if (k28 && !pdes6)
                 b4 = 4'b1010;
               else
                 b4 = 4'b0101;
             3'b110 :                     //D/K.x.6
               if (k28 && !pdes6)
                 b4 = 4'b1001;
               else
                 b4 = 4'b0110;
             3'b111 :                     //D.x.P7
               if (!a7)
                 if (!pdes6)
                   b4 = 4'b0111;
                 else
                   b4 = 4'b1000;
               else                       //D/K.y.A7
                 if (!pdes6)
                   b4 = 4'b1110;
                 else
                   b4 = 4'b0001;
             default :
               b4 = 4'bXXXX;
           endcase

         // Reverse the bits
         for (I = 0; I < 4; I = I + 1)
           q10[I+6] = b4[I];

         // Calculate the running disparity after the 4B group
         case (d8[7:5])
           3'b000  : disparity_pos_out = ~pdes6;
           3'b001  : disparity_pos_out = pdes6;
           3'b010  : disparity_pos_out = pdes6;
           3'b011  : disparity_pos_out = pdes6;
           3'b100  : disparity_pos_out = ~pdes6;
           3'b101  : disparity_pos_out = pdes6;
           3'b110  : disparity_pos_out = pdes6;
           3'b111  : disparity_pos_out = ~pdes6;
           default : disparity_pos_out = pdes6;
         endcase
      end
   endtask // encode_8b10b

   task rx_stimulus_send_10b_column;
     input [0:39] d;
     integer I;
     begin
        for (I = 0; I < 10; I = I + 1) begin
          xaui_rx_serial_datain <= {d[I+30], d[I+20], d[I+10], d[I]};
          #320; // XAUI serial rx interface 
        end 
     end
   endtask // rx_stimulus_send_10b_column

   initial begin
     code_sel_generator = 7'b1000000;
     idle_state = `SEND_K;
     a_cnt      = 0;
     disp_is_pos        = 4'b0;
     next_ifg_is_a = 0;
   end
