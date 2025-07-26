function [ obj ] = objective(trees)
load('temp.mat');
[satir sutun]=size(temp);
[sa su]=size(trees);
obj=zeros(1,sa);
for b=1:sa
    x=trees(b,:);
    if(sum(x)==0)
        x(:)=1;
    end;
    for i=3:satir
        tmp=x.*temp(i,:);
        a=find(x>0);
        [deger indis]=min(tmp(a));
        obj(b)=obj(b)+deger;
    end;
    obj(b)=obj(b)+sum(x.*temp(2,:));    
end;      
end