
def max_com_div(grande,peque)
  residuo = grande.modulo(peque);
  while residuo !=0 do
    grande = peque;
    peque = residuo;
    residuo = grande.modulo(peque);
  end
  peque
end

puts max_com_div(6983776800,5587021440)
