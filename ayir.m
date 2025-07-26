function [ birler sifirlar ] = ayir( v )
[sat sut]=size(v);
indisler=find(v==1);
[s birler]=size(indisler);
sifirlar=sut-birler;
end

