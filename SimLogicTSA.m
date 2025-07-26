function [eniyi,enkotu,ort,gap,sapma]=SimLogicTSA(problemismi,N,ST,optimum)

maxrun=30;
maxFEs=80000;

iterasyonlar=zeros(maxrun,round(maxFEs/N));
herrunmaxiter=zeros(1,maxrun);

nsmin=ceil(N*0.1);
nsmax=ceil(N*0.25);

problemdosyaadi=strcat('text/',problemismi,'.txt');
matris=dosya2mat(problemdosyaadi);
temp=matris;
save('temp.mat','temp');

[tal_say fab_say]=size(matris);
tal_say=tal_say-2;
D=fab_say;

F='objective';

Qmax=0.9;
Qmin=0.5;

trees=zeros(N,D);
obj_trees=zeros(1,N);
minimums=zeros(1,30);

for r=1:maxrun
    rng('shuffle');
    for i=1:N
        for j=1:D
            if(rand<0.5)
                trees(i,j)=0;
            else
                trees(i,j)=1;
            end;
        end;
    end
    
    obj_trees=feval(F,trees);
    [minimum]=min(obj_trees);
    
    FEs=N;
    iter=1;
    say=1;
    
    while(FEs<=maxFEs)
        for i=1:N
            ns=round(nsmin+(nsmax-nsmin)*rand);
            FEs=FEs+ns;
            seeds=zeros(ns,D);
            obj_seeds=zeros(1,ns);
            
            [minimum,min_indis]=min(obj_trees);
            bestParams=trees(min_indis,:);
            
            for j=1:ns
                komsu=fix(rand*N)+1;
                while(i==komsu)
                    komsu=fix(rand*N)+1;
                end
                
                if rand<0.5
                
                Qt=Qmax-((Qmax-Qmin)/maxFEs)*FEs;
                if(rand<ST)
                    [m11 m10 m01 benzema]=jaccard(trees(i,:),bestParams);
                else
                    [m11 m10 m01 benzema]=jaccard(trees(i,:),trees(komsu,:));
                end
                dissim=Qt*(1-benzema);
                [n1 n0]=ayir(trees(i,:));
                [m11 m01 m10 z]=find_opt(n0,n1,dissim);
                seeds(j,:)=olustur(trees(i,:),m11,m10);
                
                else
                
                for d=1:D
                    if(rand<ST)
                        seeds(j,d)=xor(trees(i,d),xor(bestParams(d),trees(komsu,d)));
                    else
                        seeds(j,d)=and(trees(i,d),or(trees(i,d),trees(komsu,d)));
                    end
                end
                
                end
                
            end
            
            obj_seeds=feval(F,seeds);
            
            [mintohum,mintohum_indis]=min(obj_seeds);
            if(mintohum<obj_trees(i))
                trees(i,:)=seeds(mintohum_indis,:);
                obj_trees(i)=mintohum;
            end;
            
        end;                        
        
        [min_tree,min_tree_index]=min(obj_trees);
        if(min_tree<minimum)
            minimum=min_tree;
            bestParams=trees(min_tree_index,:);
        end;
               
        check=minimum-optimum;
        if check<=0.01
            FEs=maxFEs+1;            
        end
        
        fprintf('Problem=%s..N=%d..ST=%g..Run=%d..FEs=%d..iter=%d..min=%g..\n',problemismi,N,ST,r,FEs,iter,minimum);
        iterasyonlar(r,iter)=minimum;
        say=say+1;
        iter=iter+1;
        
    end  
    
     herrunmaxiter(r)=iter;
    if say<round(maxFEs/N)
        iterasyonlar(r,say:round(maxFEs/N))=minimum;
    end
    
    minimums(r)=minimum;  
end
ort=mean(minimums);
eniyi=min(minimums);
enkotu=max(minimums);
sapma=std(minimums);
gap=((ort-optimum)/optimum)*100;

iterasyonlar=iterasyonlar(:,1:max(herrunmaxiter));
ortiterasyonlar=mean(iterasyonlar);

iterfilename = ['output/' mfilename,'_',problemismi,'_N' num2str(N),'_ST' num2str(ST),'_iters.mat'];
ortiterfilename = ['output/' mfilename,'_',problemismi,'_N' num2str(N),'_ST' num2str(ST),'_ortiter.mat'];

save(iterfilename,'iterasyonlar');
save(ortiterfilename,'ortiterasyonlar');

end