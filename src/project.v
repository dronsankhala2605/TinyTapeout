/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

//////////////////////////////////////////////////////////////////////////////////
// Company: IIT JMU
// Engineer: Dron Sankhala
// 
// Create Date: 11/06/2024 10:15:09 PM
// Design Name: tiny_tapeout
// Module Name: top_module
// Project Name: custom frequency divider for tiny tapeout
//////////////////////////////////////////////////////////////////////////////////


module tt_um_devider( input wire clk,
                   input wire rst_n,
                   input wire [7:0]ui_in,
                   output reg clock_dummy
                 );
            
          reg [25:0]count;
          reg [25:0]devider;
              
        // design functionality
        
        
        always @(posedge clk)  // input clock frequency is 60 MHz
           begin
            case (in)
             8'd1: begin
                     devider <= 26'd59999999; // 1 Hz output frequency
                   end
             8'd2: begin
                     devider <= 26'd29999999; // 2 Hz output frequency
                   end
             8'd3: begin 
                    devider <= 26'd1999999; // 3 Hz output frequency
                   end
             8'd4: begin 
                     devider <= 26'd1499999; // 4 Hz output frequency 
                   end   
             8'd5: begin
                    devider <= 26'd1199999; // 5 Hz output frequency
                   end
             8'd6: begin
                     devider <= 26'd999999;   // 6 Hz output frequency
                   end
             8'd8: begin
                     devider <= 26'd749999;   // 8 Hz output frequency
                   end
             8'd10: begin
                     devider <= 26'd599999;   // 10 Hz output frequency
                   end
             8'd12: begin
                     devider <= 26'd499999;   // 12 Hz output frequency
                   end
             8'd15: begin
                     devider <= 26'd399999;   // 15 Hz output frequency
                   end
             8'd16: begin
                     devider <= 26'd374999;   // 16 Hz output frequency
                   end
             8'd20: begin
                     devider <= 26'd299999;   // 20 Hz output frequency
                   end
             8'd24: begin
                     devider <= 26'd249999;   // 24 Hz output frequency
                   end
             8'd25: begin
                     devider <= 26'd239999;   // 25 Hz output frequency
                   end
             8'd30: begin
                     devider <= 26'd199999;   // 30 Hz output frequency
                   end
             8'd40: begin
                     devider <= 26'd149999;   // 40 Hz output frequency
                   end
             8'd48: begin
                     devider <= 26'd124999;   // 48 Hz output frequency
                   end
             8'd50: begin
                     devider <= 26'd119999;   // 50 Hz output frequency
                   end
             8'd60: begin
                     devider <= 26'd99999;    // 60 Hz output frequency
                   end
             8'd75: begin
                     devider <= 26'd79999;    // 75 Hz output frequency
                    end
             8'd80: begin
                     devider <= 26'd74999;    // 80 Hz output frequency
                    end
             8'd100: begin
                      devider <= 26'd59999;    // 100 Hz output frequency
                     end
             8'd200: begin
                      devider <= 26'd299999;    // 200 Hz output frequency
                     end
             8'd201: begin
                      devider <= 26'd199999;   // 300 Hz output frequency
                     end
             8'd202: begin
                      devider <= 26'd149999;   // 400 Hz output frequency
                     end
             8'd203: begin
                      devider <= 26'd119999;   // 500 Hz output frequency
                     end              
             8'd204: begin
                      devider <= 26'd99999;   // 600 Hz output frequency
                     end          
             8'd205: begin
                      devider <= 26'd74999;   // 800 Hz output frequency
                     end  
             8'd206: begin
                      devider <= 26'd59999;   // 1 KHz output frequency
                     end       
             8'd207: begin
                      devider <= 26'd29999;   // 2 KHz output frequency
                     end
             8'd208: begin
                      devider <= 26'd19999;   // 3 KHz output frequency
                     end          
             8'd29: begin
                      devider <= 26'd14999;   // 4 KHz output frequency
                     end
             8'd210: begin
                      devider <= 26'd11999;   // 5 KHz output frequency
                     end
             8'd211: begin
                      devider <= 26'd9999;   // 6 KHz output frequency
                     end
             8'd212: begin
                      devider <= 26'd7499;   // 8 KHz output frequency
                     end
             8'd213: begin
                      devider <= 26'd5999;   // 10 KHz output frequency
                     end
             8'd214: begin
                      devider <= 26'd2999;   // 20 KHz output frequency
                     end                        
             8'd215: begin
                      devider <= 26'd1999;   // 30 KHz output frequency
                     end        
             8'd216: begin
                      devider <= 26'd1499;   // 40 KHz output frequency
                     end                     
             8'd217: begin
                      devider <= 26'd1199;   // 50 KHz output frequency
                     end 
             8'd218: begin
                      devider <= 26'd999;   // 60 KHz output frequency
                     end         
             8'd219: begin
                      devider <= 26'd749;   // 80 KHz output frequency
                     end         
             8'd220: begin
                      devider <= 26'd599;   // 100 KHz output frequency
                     end        
             8'd221: begin
                      devider <= 26'd299;   // 200 KHz output frequency
                     end                
             8'd222: begin
                      devider <= 26'd199;   // 300 KHz output frequency
                     end
             8'd223: begin
                      devider <= 26'd149;   // 400 KHz output frequency
                     end
             8'd224: begin
                      devider <= 26'd119;   // 500 KHz output frequency
                     end               
             8'd225: begin
                      devider <= 26'd99;   // 600 KHz output frequency
                     end
             8'd226: begin
                      devider <= 26'd74;   // 800 KHz output frequency
                     end                  
             8'd227: begin
                      devider <= 26'd59;   // 1 MHz output frequency
                     end
             8'd228: begin
                      devider <= 26'd29;   // 2 MHz output frequency
                     end
             8'd229: begin
                      devider <= 26'd19;   // 3 MHz output frequency
                     end        
              8'd230: begin
                      devider <= 26'd14;   // 4 MHz output frequency
                     end
              8'd231: begin
                      devider <= 26'd11;   // 5 MHz output frequency
                     end
              8'd232: begin
                       devider <= 26'd9;   // 6 MHz output frequency
                      end              
              8'd233: begin
                       devider <= 26'd5;   // 10 MHz output frequency
                      end        
              8'd234: begin
                       devider <= 26'd2;   // 20 MHz output frequency
                      end       
              8'd235: begin
                       devider <= 26'd1;   // 30 MHz output frequency
                      end
              default: begin
                       devider <= 26'd59999999; // Default 1 Hz output frequency if input is outside range
                     end
            endcase
          end

          
        always @(posedge clk, negedge rst_n)
         begin
          if(!rst_n)
           begin
            count <= 26'd0;
            clock_dummy <= 1'd0;
           end
          else
           if ( count == devider )
            begin
             count <= 26'd0;
             clock_dummy <= ~clock_dummy;
           end
          else
           count <= count + 1'd1;
         end

       always @(in, devider)
        begin
         count <= 26'd0;
         clock_dummy <= 1'd0;
        end
        
 endmodule
