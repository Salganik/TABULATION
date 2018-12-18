function fun1(t)

use myprec
implicit none
real(mp) fun1, t
fun1=1/(1.7**2 + 1.7 * ((1.7**3 - t)**(1.0/3)) + (((1.7**3)-t)**(2.0/3)))
end

