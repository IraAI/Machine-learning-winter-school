function A=affine(x1,y1,x2,y2,x3,y3)

B = [0,1,0; 0,0,1; 1,1,1];
C = [x1,x2,x3; y1,y2,y3; 1,1,1]

A = (inv(B*B')*B*C')'
end 