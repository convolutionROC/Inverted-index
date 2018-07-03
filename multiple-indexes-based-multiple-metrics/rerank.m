function y=rerank(y_inverted,yy1)

load centers_pq_1
load centers_pq_2
load centers_pq_3
load centers_pq_4
load centers_pq_5
load centers_pq_6
load centers_pq_7
load centers_pq_8
load centers_pq_9
load centers_pq_10
load centers_pq_11
load centers_pq_12
load centers_pq_13
load centers_pq_14
load centers_pq_15
load centers_pq_16
load data_pq 

data=data_pq(y_inverted,:);

[n1,n2]=size(y_inverted);
n=max(n1,n2);

[d1,d2]=size(yy1);
dd=max(d1,d2);
dim=dd/16;
for i=1:n
   
    dis(i)=norm(centers_pq_1(data(i,1),:)-yy1(1:dim))+...
        norm(centers_pq_2(data(i,2),:)-yy1((1*dim+1):2*dim))+...
        norm(centers_pq_3(data(i,3),:)-yy1((2*dim+1):3*dim))+...
        norm(centers_pq_4(data(i,4),:)-yy1((3*dim+1):4*dim))+...
        norm(centers_pq_5(data(i,5),:)-yy1((4*dim+1):5*dim))+...
        norm(centers_pq_6(data(i,6),:)-yy1((5*dim+1):6*dim))+...
        norm(centers_pq_7(data(i,7),:)-yy1((6*dim+1):7*dim))+...
        norm(centers_pq_8(data(i,8),:)-yy1((7*dim+1):8*dim))+...
        norm(centers_pq_9(data(i,9),:)-yy1((8*dim+1):9*dim))+...
        norm(centers_pq_10(data(i,10),:)-yy1((9*dim+1):10*dim))+...
        norm(centers_pq_11(data(i,11),:)-yy1((10*dim+1):11*dim))+...
        norm(centers_pq_12(data(i,12),:)-yy1((11*dim+1):12*dim))+...
        norm(centers_pq_13(data(i,13),:)-yy1((12*dim+1):13*dim))+...
        norm(centers_pq_14(data(i,14),:)-yy1((13*dim+1):14*dim))+...
        norm(centers_pq_15(data(i,15),:)-yy1((14*dim+1):15*dim))+...
        norm(centers_pq_16(data(i,16),:)-yy1((15*dim+1):16*dim));
end
    
[~,loc]=sort(dis);

y=y_inverted(loc);


