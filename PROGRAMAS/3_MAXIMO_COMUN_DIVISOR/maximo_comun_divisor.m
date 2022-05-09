1;
function u = Maximo_comun_divisor(grande,peque)
	residuo = mod(grande,peque);
	while (residuo !=0)
		grande = peque;
		peque  = residuo;
		residuo = mod(grande,peque);
	end
	u = peque;
end

format long
disp(Maximo_comun_divisor(6983776800,5587021440))
