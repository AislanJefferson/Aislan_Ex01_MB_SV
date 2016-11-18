module Contador16_UD_q1 (input logic clk,clr, output logic [3:0] saida);
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
			begin
			ud <= 1'b1;
			saida <= saida - 4'd1;
			end
		else
			saida <= saida + 4'd1;
	else
		if(saida == 4'd0)
			begin
			ud <= 1'b0;
			saida = saida + 4'd1;
			end
		else
			saida <= saida - 4'd1;
end
endmodule