function [ m11 m10 m01 benzema ] = jaccard(v,x)
[sat sut]=size(v);
m11=0;m10=0;m01=0;
for i=1:sut
    if(v(i)==1 && x(i)==1)
        m11=m11+1;
    end;
    if(v(i)==1 && x(i)==0)
        m10=m10+1;
    end;
    if(v(i)==0 && x(i)==1)
        m01=m01+1;
    end;
end;

a=m11+m10+m01;

if(a==0)
    benzema=1;
else
    benzema=m11/(m11+m10+m01);
end;

end