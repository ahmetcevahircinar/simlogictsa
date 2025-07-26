Problemler={'cap71','cap72','cap73','cap74','cap101','cap102','cap103','cap104','cap131','cap132','cap133','cap134','capa','capb','capc'};
optimumlar=[932615.75 977799.40 1010641.45 1034976.98 796648.44 854704.20 893782.11 928941.75 793439.56 851495.33 893076.71 928941.75 17156454.48 12979071.58 11505594.33];
Pop=[10 20 30 40 50 60 70 80 90 100];
ST=[0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9];

for p=1:1
    for n=1:1
        for s=1:1
            dosya=strcat('sonuclar/SimLogicTSA_',Problemler{p},'_Pop=',int2str(Pop(n)),'_ST=',num2str(ST(s)),'.xls');
            [eniyi,enkotu,ort,gap,sapma]=SimLogicTSA(Problemler{p},Pop(n),ST(s),optimumlar(p));
            xlswrite(dosya,eniyi,1,strcat('A',int2str(1)));
            xlswrite(dosya,enkotu,1,strcat('B',int2str(1)));
            xlswrite(dosya,ort,1,strcat('C',int2str(1)));
            xlswrite(dosya,gap,1,strcat('D',int2str(1)));
            xlswrite(dosya,sapma,1,strcat('E',int2str(1)));
        end
    end
end