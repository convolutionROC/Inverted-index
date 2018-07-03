function y = multi_sequence(v1,v2,vv,index1,index2,word1,word2,T)

vv_=vv';
list=vv_(:);
[~,list_loc]=sort(list);
[n1,n2]=size(vv);

T1=0;
i=1;
y=[];
%disp('sss');

while (T1<T)
    col=ceil(list_loc(i)/n1);
    row=mod(list_loc(i),n1);
    if(row==0)
        row=n1;
    end
    y1=index1{word1(col)};
    y2=index2{word2(row)};
    y_=intersect(y1,y2);
    [T_1,T_2]=size(y_);
    T11=max(T_1,T_2);
    T1=T1+T11;
    if (T1>T)
        y_=y_(1:(T11-(T1-T)));
    end
    y=union(y_,y);
    [TT1,TT2]=size(y);
    T1=max(TT1,TT2);
    i=i+1;
end

y=y;

