%there is 16 index
%KLSH
%by zhang kai
%2016/08/30

clc
clear

%% set the para
numClusters = 2^7;

%% read the data

%data_query_truth = ivecs_read('sift_groundtruth.ivecs');
data_train = fvecs_read('sift_base.fvecs');
[dim,numFea] = size(data_train);
%data_query = fvecs_read('sift_query.fvecs');
%data_query_truth = ivecs_read('sift_groundtruth.ivecs');
data_train1=data_train;
[ assign_,centers_] = kmeans(data_train1', numClusters,'distance',  'sqeuclidean');
centers=centers_';assign=assign_';
dlmwrite('visualWord.txt',centers);
clear data_train1;clear assign_;clear centers_;clear centers;
 
%ma_st=eye(128);
load MM2;
data_train2=ma_st*data_train;
[assign2_,centers2_] = kmeans(data_train2', numClusters,'distance',  'sqeuclidean');
centers2=centers2_';assign2=assign2_';
dlmwrite('visualWord2.txt',centers2);
clear data_train2;clear assign2_;clear centers2_;clear centers2;

load MM3;
data_train3=ma_st*data_train;
[assign3_,centers3_] = kmeans(data_train3', numClusters,'distance',   'sqeuclidean');
centers3=centers3_';assign3=assign3_';
dlmwrite('visualWord3.txt',centers3);
clear data_train3;clear assign3_;clear centers3_;clear centers3;

load MM4;
data_train4=ma_st*data_train;
[assign4_,centers4_] = kmeans(data_train4', numClusters,'distance',  'sqeuclidean');
centers4=centers4_';assign4=assign4_';
dlmwrite('visualWord4.txt',centers4);
clear data_train4;clear assign4_;clear centers4_;clear centers4;


load MM5;
data_train5=ma_st*data_train;
[assign5_,centers5_] = kmeans(data_train5', numClusters,'distance','sqeuclidean');
centers5=centers5_';assign5=assign5_';
dlmwrite('visualWord5.txt',centers5);
clear data_train5;clear assign5_;clear centers5_;clear centers5;

load MM6;
data_train6=ma_st*data_train;
[assign6_,centers6_] = kmeans(data_train6', numClusters,'distance','sqeuclidean');
centers6=centers6_';assign6=assign6_';
dlmwrite('visualWord6.txt',centers6);
clear data_train6;clear assign6_;clear centers6_;clear centers6;

load MM7;
data_train7=ma_st*data_train;
[assign7_,centers7_] = kmeans(data_train7', numClusters,'distance', 'sqeuclidean');
centers7=centers7_';assign7=assign7_';
dlmwrite('visualWord7.txt',centers7);
clear data_train7;clear assign7_;clear centers7_;clear centers7;

load MM8;
data_train8=ma_st*data_train;
[assign8_,centers8_] = kmeans(data_train8', numClusters,'distance',  'sqeuclidean');
centers8=centers8_';assign8=assign8_';
dlmwrite('visualWord8.txt',centers8);
clear data_train8;clear assign8_;clear centers8_;clear centers8;


load MM9;
data_train9=ma_st*data_train;
[assign9_,centers9_] = kmeans(data_train9', numClusters,'distance', 'sqeuclidean');
centers9=centers9_';assign9=assign9_';
dlmwrite('visualWord9.txt',centers9);
clear data_train9;clear assign9_;clear centers9_;clear centers9;

load MM10;
data_train10=ma_st*data_train;
[assign10_,centers10_] = kmeans(data_train10', numClusters,'distance', 'sqeuclidean');
centers10=centers10_';assign10=assign10_';
dlmwrite('visualWord10.txt',centers10);
clear data_train10;clear assign10_;clear centers10_;clear centers10;

load MM11;
data_train11=ma_st*data_train;
[assign11_,centers11_] = kmeans(data_train11', numClusters,'distance', 'sqeuclidean');
centers11=centers11_';assign11=assign11_';
dlmwrite('visualWord11.txt',centers11);
clear data_train11;clear assign11_;clear centers11_;clear centers11;

load MM12;
data_train12=ma_st*data_train;
[assign12_,centers12_] = kmeans(data_train12', numClusters,'distance', 'sqeuclidean');
centers12=centers12_';assign12=assign12_';
dlmwrite('visualWord12.txt',centers12);
clear data_train12;clear assign12_;clear centers12_;clear centers12;

%ma_st=eye(128);
load MM13;
data_train13=ma_st*data_train;
[assign13_,centers13_] = kmeans(data_train13', numClusters,'distance', 'sqeuclidean');
centers13=centers13_';assign13=assign13_';
dlmwrite('visualWord13.txt',centers13);
clear data_train13;clear assign13_;clear centers13_;clear centers13;

load MM14;
data_train14=ma_st*data_train;
[assign14_,centers14_] = kmeans(data_train14', numClusters,'distance',  'sqeuclidean');
centers14=centers14_';assign14=assign14_';
dlmwrite('visualWord14.txt',centers14);
clear data_train14;clear assign14_;clear centers14_;clear centers14;

load MM15;
data_train15=ma_st*data_train;
[assign15_,centers15_] = kmeans(data_train15', numClusters,'distance', 'sqeuclidean');
centers15=centers15_';assign15=assign15_';
dlmwrite('visualWord15.txt',centers15);
clear data_train15;clear assign15_;clear centers15_;clear centers15;

load MM16;
data_train16=ma_st*data_train;
[assign16_,centers16_] = kmeans(data_train16', numClusters,'distance',  'sqeuclidean');
centers16=centers16_';assign16=assign16_';
dlmwrite('visualWord16.txt',centers16);
clear data_train16;clear assign16_;clear centers16_;clear centers16;
%% inverted index
for i = 1:numClusters
    temp = find(assign==i);
    InvertedIndex{i} = temp;
    
    temp2 = find(assign2==i);
    InvertedIndex2{i} = temp2;
    
    temp3 = find(assign3==i);
    InvertedIndex3{i} = temp3;
    
    temp4 = find(assign4==i);
    InvertedIndex4{i} = temp4;
    
    temp5 = find(assign5==i);
    InvertedIndex5{i} = temp5;
    
    temp6 = find(assign6==i);
    InvertedIndex6{i} = temp6;
    
    temp7 = find(assign7==i);
    InvertedIndex7{i} = temp7;
    
    temp8 = find(assign8==i);
    InvertedIndex8{i} = temp8;
    
    temp9 = find(assign9==i);
    InvertedIndex9{i} = temp9;
    
    temp10 = find(assign10==i);
    InvertedIndex10{i} = temp10;
    
    temp11 = find(assign11==i);
    InvertedIndex11{i} = temp11;
    
    temp12 = find(assign12==i);
    InvertedIndex12{i} = temp12;
    
    temp13 = find(assign13==i);
    InvertedIndex13{i} = temp13;
    
    temp14 = find(assign14==i);
    InvertedIndex14{i} = temp14;
    
    temp15 = find(assign15==i);
    InvertedIndex15{i} = temp15;
    
    temp16 = find(assign16==i);
    InvertedIndex16{i} = temp16;
end
save InvertedIndex InvertedIndex;
save InvertedIndex2 InvertedIndex2;
save InvertedIndex3 InvertedIndex3;
save InvertedIndex4 InvertedIndex4;
save InvertedIndex5 InvertedIndex5;
save InvertedIndex6 InvertedIndex6;
save InvertedIndex7 InvertedIndex7;
save InvertedIndex8 InvertedIndex8;
save InvertedIndex9 InvertedIndex9;
save InvertedIndex10 InvertedIndex10;
save InvertedIndex11 InvertedIndex11;
save InvertedIndex12 InvertedIndex12;
save InvertedIndex13 InvertedIndex13;
save InvertedIndex14 InvertedIndex14;
save InvertedIndex15 InvertedIndex15;
save InvertedIndex16 InvertedIndex16;