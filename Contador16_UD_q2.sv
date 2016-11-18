module Contador16_UD_q2 (input logic clk,clr, output logic [3:0] saida);
logic ud;
always_ff @(posedge clk)
begin
if(clr)
	begin
	saida <= 4'd0;
	ud <= 1'b0;
	end
else
	if(ud == 1'b0)
		if(saida == 4'd15)
			ud <= 1'b1;
		else
			saida <= saida + 4'd1;
	else
		if(saida == 4'd0)
			ud <= 1'b0;
		else
			saida <= saida - 4'd1;
end
endmodule