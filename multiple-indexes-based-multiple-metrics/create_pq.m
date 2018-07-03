% create pq index
% set the m, just onece
% for ADC
% by zhang kai 
% 20170608

clc
clear

%%
m=8;
numClusters=64;

data_t = fvecs_read('sift_base.fvecs');
data_train=data_t';
[num,dim] = size(data_train);
dim_f=dim/m;

data_train1=data_train(:,1:dim_f);
data_train2=data_train(:,(dim_f+1):2*dim_f);
data_train3=data_train(:,(2*dim_f+1):3*dim_f);
data_train4=data_train(:,(3*dim_f+1):4*dim_f);
data_train5=data_train(:,(4*dim_f+1):5*dim_f);
data_train6=data_train(:,(5*dim_f+1):6*dim_f);
data_train7=data_train(:,(6*dim_f+1):7*dim_f);
data_train8=data_train(:,(7*dim_f+1):8*dim_f);

[assign1,centers_pq_1] = kmeans(data_train1, numClusters,'distance', 'sqeuclidean');
save centers_pq_1 centers_pq_1

[assign2,centers_pq_2] = kmeans(data_train2, numClusters,'distance', 'sqeuclidean');
save centers_pq_2 centers_pq_2

[assign3,centers_pq_3] = kmeans(data_train3, numClusters,'distance', 'sqeuclidean');
save centers_pq_3 centers_pq_3

[assign4,centers_pq_4] = kmeans(data_train4, numClusters,'distance', 'sqeuclidean');
save centers_pq_4 centers_pq_4

[assign5,centers_pq_5] = kmeans(data_train5, numClusters,'distance', 'sqeuclidean');
save centers_pq_5 centers_pq_5

[assign6,centers_pq_6] = kmeans(data_train6, numClusters,'distance', 'sqeuclidean');
save centers_pq_6 centers_pq_6

[assign7,centers_pq_7] = kmeans(data_train7, numClusters,'distance', 'sqeuclidean');
save centers_pq_7 centers_pq_7

[assign8,centers_pq_8] = kmeans(data_train8, numClusters,'distance', 'sqeuclidean');
save centers_pq_8 centers_pq_8

for i=1:num
    data_pq(i,:)=[assign1(i),assign2(i),assign3(i),assign4(i),assign5(i),...
        assign6(i),assign7(i),assign8(i)];
end

save data_pq data_pq


