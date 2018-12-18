function fun0(t)

use myprec
implicit none
real(mp) fun0, t
fun0=(1.7-(1.7**3-t)**(1.0/3))/t
end

