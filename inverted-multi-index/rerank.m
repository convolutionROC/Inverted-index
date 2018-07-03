function y=rerank(y_inverted,yy1)

load centers_pq_1
load centers_pq_2
load centers_pq_3
load centers_pq_4
load centers_pq_5
load centers_pq_6
load centers_pq_7
load centers_pq_8

load data_pq 

data=data_pq(y_inverted,:);

[n1,n2]=size(y_inverted);
n=max(n1,n2);

for i=1:n
    tt=norm(centers_pq_1(data(i,1),:)-yy1(1:16));
    dis(i)=norm(centers_pq_1(data(i,1),:)-yy1(1:16))+...
        norm(centers_pq_2(data(i,2),:)-yy1((1*16+1):2*16))+...
        norm(centers_pq_3(data(i,3),:)-yy1((2*16+1):3*16))+...
        norm(centers_pq_4(data(i,4),:)-yy1((3*16+1):4*16))+...
        norm(centers_pq_5(data(i,5),:)-yy1((4*16+1):5*16))+...
        norm(centers_pq_6(data(i,6),:)-yy1((5*16+1):6*16))+...
        norm(centers_pq_7(data(i,7),:)-yy1((6*16+1):7*16))+...
        norm(centers_pq_8(data(i,8),:)-yy1((7*16+1):8*16));
end
    
[~,loc]=sort(dis);

y=y_inverted(loc);


