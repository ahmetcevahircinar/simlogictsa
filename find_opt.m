function [ m11,m01,m10,z ] = find_opt(n0,n1,A)
k=1;
triplet=zeros((n1+1)*(n0+1),3);
obj=zeros((n1+1)*(n0+1),1);
for i=0:n1
    for j=0:n0
        triplet(k,:)=[i,n1-i,j];
        obj(k)=abs(1-triplet(k,1)/(triplet(k,1)+triplet(k,2)+triplet(k,3))-A);
        k=k+1;
    end;
end;
[deger indis]=min(obj);
indis=indis(end);
m11=triplet(indis,1);
m01=triplet(indis,2);
m10=triplet(indis,3);
z=deger;
end

