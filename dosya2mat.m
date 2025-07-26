function [ matris ] = dosya2mat(dosya)

a=textread(dosya,'%f');

[satir sutun]=size(a);

fab_say=a(1);
talep_say=a(2);
a(1:2)=[];

fc=a(1:fab_say*2);
a(1:fab_say*2)=[];

[satir sutun]=size(a);

a(1:fab_say+1:satir)=[];
k=1;
for i=1:2:fab_say*2
    cap(k)=fc(i);
    mal(k)=fc(i+1);
    k=k+1;
end;

capmal=[cap;mal];
k=1;
for i=1:talep_say
    for j=1:fab_say
        matris(i,j)=a(k);
        k=k+1;
    end;
end;
matris=[capmal;matris];

end