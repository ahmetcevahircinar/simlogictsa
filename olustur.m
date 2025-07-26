function [ v ] = olustur(tree,m11,m10)
[sat sut]=size(tree);
v=zeros(1,sut);
bir_indis=find(tree==1);
if(bir_indis)
    [s bir_sut]=size(bir_indis);
    birler=randperm(bir_sut);
    if(m11>0)
        birler=birler(1:m11);
        v(bir_indis(birler))=1;
    end;
end;
sifir_indis=find(tree==0);
if(sifir_indis)
    [s sif_sut]=size(sifir_indis);
    sifirlar=randperm(sif_sut);
    if(m10>0)
        sifirlar=sifirlar(1:m10);
        v(sifir_indis(sifirlar))=1;
    end;
end;
end