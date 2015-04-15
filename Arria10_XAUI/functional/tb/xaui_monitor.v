//-------------------------------------------------
// The monitor converts the serial data on the XAUI
// interface to 10-bit parallel data
//-------------------------------------------------
module xaui_monitor (
  input             xaui_bit_clock,
  input             xaui_lane_p,
  output reg        xaui_recclk,
  output reg [7:0]  xaui_tx_pdata,
  output reg        xaui_tx_is_k
);


reg   [0:9]   code_buffer;
reg   [7:0]   decoded_data;

reg           is_k_var;
integer       bit_count    = 0;
reg           initial_sync = 0;

initial begin 
  xaui_recclk = 0;
  forever begin
    @(posedge xaui_bit_clock or negedge xaui_bit_clock);
    code_buffer = {code_buffer[1:9], xaui_lane_p};
    // comma detection
    if (is_comma(code_buffer)) begin
      bit_count = 0;
      initial_sync = 1;
    end

    if (bit_count == 0 && initial_sync) begin
      decode_8b10b( code_buffer, decoded_data, is_k_var);
      xaui_tx_pdata <= decoded_data;
      xaui_tx_is_k <= is_k_var;
    end

    if (initial_sync) begin
      bit_count = bit_count + 1;
      if (bit_count == 5)
        xaui_recclk <= ~xaui_recclk;
      if (bit_count == 10)
        bit_count = 0;
    end
  end // forever begin
end

task decode_8b10b;
  input  [0:9] d10;
  output [7:0] q8;
  output       is_k;
  reg          k28;
  reg    [9:0] d10_rev;
  integer I;
  begin
    // reverse the 10B codeword
    for (I = 0; I < 10; I = I + 1)
      d10_rev[I] = d10[I];

    case (d10_rev[5:0])
      6'b000110 : q8[4:0] = 5'b00000;   //D.0
      6'b111001 : q8[4:0] = 5'b00000;   //D.0
      6'b010001 : q8[4:0] = 5'b00001;   //D.1
      6'b101110 : q8[4:0] = 5'b00001;   //D.1
      6'b010010 : q8[4:0] = 5'b00010;   //D.2
      6'b101101 : q8[4:0] = 5'b00010;   //D.2
      6'b100011 : q8[4:0] = 5'b00011;   //D.3
      6'b010100 : q8[4:0] = 5'b00100;   //D.4
      6'b101011 : q8[4:0] = 5'b00100;   //D.4
      6'b100101 : q8[4:0] = 5'b00101;   //D.5
      6'b100110 : q8[4:0] = 5'b00110;   //D.6
      6'b000111 : q8[4:0] = 5'b00111;   //D.7
      6'b111000 : q8[4:0] = 5'b00111;   //D.7
      6'b011000 : q8[4:0] = 5'b01000;   //D.8
      6'b100111 : q8[4:0] = 5'b01000;   //D.8
      6'b101001 : q8[4:0] = 5'b01001;   //D.9
      6'b101010 : q8[4:0] = 5'b01010;   //D.10
      6'b001011 : q8[4:0] = 5'b01011;   //D.11
      6'b101100 : q8[4:0] = 5'b01100;   //D.12
      6'b001101 : q8[4:0] = 5'b01101;   //D.13
      6'b001110 : q8[4:0] = 5'b01110;   //D.14
      6'b000101 : q8[4:0] = 5'b01111;   //D.15
      6'b111010 : q8[4:0] = 5'b01111;   //D.15
      6'b110110 : q8[4:0] = 5'b10000;   //D.16
      6'b001001 : q8[4:0] = 5'b10000;   //D.16
      6'b110001 : q8[4:0] = 5'b10001;   //D.17
      6'b110010 : q8[4:0] = 5'b10010;   //D.18
      6'b010011 : q8[4:0] = 5'b10011;   //D.19
      6'b110100 : q8[4:0] = 5'b10100;   //D.20
      6'b010101 : q8[4:0] = 5'b10101;   //D.21
      6'b010110 : q8[4:0] = 5'b10110;   //D.22
      6'b010111 : q8[4:0] = 5'b10111;   //D/K.23
      6'b101000 : q8[4:0] = 5'b10111;   //D/K.23
      6'b001100 : q8[4:0] = 5'b11000;   //D.24
      6'b110011 : q8[4:0] = 5'b11000;   //D.24
      6'b011001 : q8[4:0] = 5'b11001;   //D.25
      6'b011010 : q8[4:0] = 5'b11010;   //D.26
      6'b011011 : q8[4:0] = 5'b11011;   //D/K.27
      6'b100100 : q8[4:0] = 5'b11011;   //D/K.27
      6'b011100 : q8[4:0] = 5'b11100;   //D.28
      6'b111100 : q8[4:0] = 5'b11100;   //K.28
      6'b000011 : q8[4:0] = 5'b11100;   //K.28
      6'b011101 : q8[4:0] = 5'b11101;   //D/K.29
      6'b100010 : q8[4:0] = 5'b11101;   //D/K.29
      6'b011110 : q8[4:0] = 5'b11110;   //D.30
      6'b100001 : q8[4:0] = 5'b11110;   //D.30
      6'b110101 : q8[4:0] = 5'b11111;   //D.31
      6'b001010 : q8[4:0] = 5'b11111;   //D.31
      default   : q8[4:0] = 5'b11110;   //CODE VIOLATION - return /E/
    endcase

    k28 = ~((d10[2] | d10[3] | d10[4] | d10[5] | ~(d10[8] ^ d10[9])));

    case (d10_rev[9:6])
      4'b0010 : q8[7:5] = 3'b000;       //D/K.x.0
      4'b1101 : q8[7:5] = 3'b000;       //D/K.x.0  (K28.0 = 8'h1C)
      4'b1001 :
        if (!k28)
          q8[7:5] = 3'b001;             //D/K.x.1
        else
          q8[7:5] = 3'b110;             //K28.6

      4'b0110 :
        if (k28)
          q8[7:5] = 3'b001;             //K.28.1
        else
          q8[7:5] = 3'b110;             //D/K.x.6
      4'b1010 :
        if (!k28)
          q8[7:5] = 3'b010;             //D/K.x.2
        else
          q8[7:5] = 3'b101;             //K28.5 (1010_000011)
      4'b0101 :
        if (k28)
          q8[7:5] = 3'b010;             //K28.2
        else
          q8[7:5] = 3'b101;             //D/K.x.5 (0101_111100)
      4'b0011 : q8[7:5] = 3'b011;       //D/K.x.3 (K28.3 = 8'h7C)
      4'b1100 : q8[7:5] = 3'b011;       //D/K.x.3
      4'b0100 : q8[7:5] = 3'b100;       //D/K.x.4
      4'b1011 : q8[7:5] = 3'b100;       //D/K.x.4
      4'b0111 : q8[7:5] = 3'b111;       //D.x.7
      4'b1000 : q8[7:5] = 3'b111;       //D.x.7
      4'b1110 : q8[7:5] = 3'b111;       //D/K.x.7
      4'b0001 : q8[7:5] = 3'b111;       //D/K.x.7
      default : q8[7:5] = 3'b111;       //CODE VIOLATION - return /E/
    endcase

    is_k = ((d10[2] & d10[3] & d10[4] & d10[5])
         | ~(d10[2] | d10[3] | d10[4] | d10[5])
         | ((d10[4] ^ d10[5]) & ((d10[5] & d10[7] & d10[8] & d10[9])
         | ~(d10[5] | d10[7] | d10[8] | d10[9]))));

  end
endtask // decode_8b10b

// If K.28.7 is not used, the unique comma sequences 0011111 or 1100000 
// cannot be found at any bit position within any combination of normal codes.
 function is_comma;
   input [0:9] codegroup;
   begin
     case (codegroup[0:6])
       7'b0011111 : is_comma = 1;
       7'b1100000 : is_comma = 1;
       default : is_comma = 0;
     endcase // case(codegroup[0:6])
   end
 endfunction // is_comma

endmodule
