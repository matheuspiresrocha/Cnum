using .MathConstants: e

error = 10^-8

function fixedpoint(a,g, error)
 x=g(a)
 while abs(x-a) > error
 a=x
 x=g(a)
 end
 return x
end

#Exer: 3.3.1
g(x)=MathConstants.e^(x)-2

r = fixedpoint(-1.8,g, error)
println("Exer: 3.3.1")
println(r)

#Exer: 3.4.1
g(x)=x+(cos(x)-x^2)/(sin(x)+2*x)

r = fixedpoint(1,g, error)
println("Exer: 3.4.1")
println(r)

function secant(a,b,f,error)
 g(a,b) = (a*f(b)-b*f(a))/(f(b)-f(a))
 x = g(a,b)
 while abs(x-b) > error
 a = b
 b = x
 x = g(a,b)
 end
 return x
end

f(x)= MathConstants.e^(-x^2)-2*x

#Exer: 3.6.3
r = secant(0.4,0.45,f,error)
println("Exer 3.6.3")
println(r)

#Exer: 3.6.4

Ir = 10^-12
T = 300
k = 1.380649*(10^-23)
q = 1.60217663*(10^-19)

I(x) = Ir*(e^((x*q)/(k*T))-1)
dI(x) = ((Ir*q)/(k*T))*e^((x*q)/(k*T))
g(x,V,R) = R*I(x) + x - V
dg(x,R) = R*dI(x) + 1
d(x,R,f) = x - (f(x)/dg(x,R))
error = 10^-3

# v = 30 r = 1
f(x) = g(x, 30, 1)
h(x) = d(x, 1, f)
println("Exer 3.6.4")
r = fixedpoint(0.8, h, error)
println(r)
r = secant(0.8, 0.9, f, error)
println(r)

# v = 3 r = 1
f(x) = g(x, 3, 1)
h(x) = d(x, 1, f)
r = fixedpoint(0.8, h, error)
println(r)
r = secant(0.8, 0.9, f, error)
println(r)

# v = 300m r = 1
f(x) = g(x, 0.3, 1)
h(x) = d(x, 1, f)
r = fixedpoint(0.8, h, error)
println(r)
r = secant(0.8, 0.9, f, error)
println(r)

# v = -300m r = 1
f(x) = g(x, -0.3, 1)
h(x) = d(x, 1, f)
r = fixedpoint(0.8, h, error)
println(r)
r = secant(0.8, 0.9, f, error)
println(r)

# v = -30 r = 1
f(x) = g(x, -30, 1)
h(x) = d(x, 1, f)
r = fixedpoint(0.8, h, error)
println(r)
r = secant(0.8, 0.9, f, error)
println(r)

# v = -30 r = 10
f(x) = g(x, -30, 10)
h(x) = d(x, 1, f)
r = fixedpoint(0.8, h, error)
println(r)
r = secant(0.8, 0.9, f, error)
println(r)