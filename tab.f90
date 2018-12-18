program tab
use myprec
implicit none
real(mp) t, r0, r1, t0, tn, ht, x, fun0, fun1
integer n, i, ninp, nres
data ninp / 5 /, nres / 6 /
open(unit=ninp, file='input')
open(unit=nres, file='result',status='replace')
read(ninp,100) t0, tn
read(ninp,101) n
write(nres, 1) t0, tn, n
ht=(tn-t0)/n
write(nres,1100)
do i=0,n  
  t=t0+i*ht
  x=exp(-t*t)
  r0=fun0(x)
  r1=fun1(x)
  write(nres, 1001) i, t, r0
  write(nres, 10010) r1
enddo
close(nres)
1 format(2x, '#', 1x, 't0', 1x, '=', 1x, e15.7, 1x, 'tn', 1x, '=', 1x, e15.7, 1x, 'n', 1x, '=', 1x, i5)
100 format(e15.7)
101 format(i15)
1100 format(1x,' #',3x,'i',12x,'t',11x,'fun0', 12x, 'fun1')
1001 format(1x,i5,2x,2x,e15.7,e15.7,$)
10010 format(1x,e15.7)
end

