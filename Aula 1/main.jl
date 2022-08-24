
function fz(z, a, b, c)
  y(z) = a*z^2 + z*b + c 
  return y(z)
end

r = fz(1, 2, 3, 4) + 1

println(r)
