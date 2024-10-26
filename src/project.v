/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_test( input wire clock,reset,
             output reg [3:0]count );
                
           // design functionality
           
           always @(posedge clock, posedge reset)
            begin
             if(reset)
              count <= 4'd0;
             else
              count <= count + 1'b1;
            end
           
endmodule
