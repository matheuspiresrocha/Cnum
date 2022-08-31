f1(x) = sqrt(x)-cos(x)

error = 10^-3

function bisection(a,b,f)
  x= (a+b)/2
  while abs(f(x)) > error
    if f(a)*f(x) > 0
      a = x
    else
      b = x
    end
    x  = (a+b)/2
  end
  return x
end

r = bisection(0,1,f1)
println(r)






f2(x) = 5*sin(x^2) - MathConstants.e^(x/10)

error = 10^-3


r2 = bisection(0,1,f2)
println(r2)

r2 = bisection(0.5,2,f2)
println(r2)

r2 = bisection(2.5,2.7,f2)
println(r2)




f3(x) = ((10^-12)*(MathConstants.e^((x*(1.60217663*10^-19))/((1.380649*10^-23)*(300)))-1))+x-30

error = 10^-3

r3 = bisection(-1,1,f3)
println(r3)


f3(x) = ((10^-12)*(MathConstants.e^((x*(1.60217663*10^-19))/((1.380649*10^-23)*(300)))-1))+x-3

error = 10^-3

r3 = bisection(0.72,0.75,f3)
println(r3)

f4(x) =10*((10^-12)*MathConstants.e^((x*1.60217663*10^-19)/((1.380649*10^-23)*(300))-1))+x-3

r4 = bisection(0.7, 0.8, f4)
println(r4)

f5(x) = ((10^-12)*MathConstants.e^((x*1.60217663*10^-19)/((1.380649*10^-23)*(300))-1))+x-0.3

r5 = bisection(0.25, 0.35, f5)
println(r5)

f6(x) = ((10^-12)*MathConstants.e^((x*1.60217663*10^-19)/((1.380649*10^-23)*(300))-1))+x+0.3

r6 = bisection(-0.25, -0.35, f6)
println(r6)

f7(x) = ((10^-12)*MathConstants.e^((x*1.60217663*10^-19)/((1.380649*10^-23)*(300))-1))+x+30

r7 = bisection(-30.5, -29.5, f7)
println(r7)

f8(x) = 10*((10^-12)*MathConstants.e^((x*1.60217663*10^-19)/((1.380649*10^-23)*(300))-1))+x+30

r8 = bisection(-30.5, -29.5, f8)
println(r7)











