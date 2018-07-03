%multi_index retrival
%
clc
clear

%%
T=300;

%% ready
load index1;
load index2
load centers1
load centers2

data_q = fvecs_read('siftsmall_query.fvecs');
data_query=data_q';
[num, dim] = size(data_query);
d=dim/2;
data_query_truth = ivecs_read('siftsmall_groundtruth.ivecs');

[~,numClusters]=size(centers1);

%%
data_query1=data_query(:,1:d);
data_query2=data_query(:,(d+1):end);

% X1=data_query1;
% X2=centers1';
% distance=pdist2(X1,X2);
% dis_new=distance';
% [v1,word1]=min(dis_new);
% 
% X1=data_query2;
% X2=centers2';
% distance=pdist2(X1,X2);
% dis_new=distance';
% [v2,word2]=min(dis_new);

for i=1:num
    x1=data_query1(i,:);
    c1=centers1';
    dis=pdist2(x1,c1);
    [v1 word1]=sort(dis);
    
    x2=data_query2(i,:);
    c2=centers2';
    dis=pdist2(x2,c2);
    [v2 word2]=sort(dis);
    
    for tt=1:numClusters
        for jj=1:numClusters
            vv(tt,jj)=v1(tt)+v2(jj);
        end
    end
    
    y_inverted= multi_sequence(v1,v2,vv,index1,index2,word1,word2,T);
    
    tt=data_query(i,:);
    y_inverted=rerank(y_inverted,tt);
    
    
    y1=data_query_truth(:,i)';
    
%     y2=index1{word1(1)};
%     y3=index2{word2(1)};
%     
%     y_inverted =intersect(y2,y3);
    
    [num1,num2]=size(y_inverted);
    num_tota(i)=max(num1,num2);
    y1=y1+1;
    [q1,q2] = size(intersect(y1,y_inverted));
    recall_num(i)=max(q1,q2);
    recall(i) = recall_num(i)/100;
    
end
%n=1;
recall_total = sum(recall)/num
num_total=sum(num_tota)/num

save y_inverted y_inverted