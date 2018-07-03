%there is two inverted index
%for retrival
%read paper by Sivic in 2003
%by zhang kai
%2016/0904

                                                                                                                                                                                                                                                        
%% read the data
clc
clear
T=1000;
data_query = fvecs_read('sift_query.fvecs');
[m , n] = size(data_query);
data_query_truth = ivecs_read('sift_groundtruth.ivecs');
visualWord = importdata('visualWord.txt');
[m1 , wordM] = size(visualWord);
visualWord2 = importdata('visualWord2.txt');
[m2 , wordM2] = size(visualWord2);
visualWord3 = importdata('visualWord3.txt');
[m3 , wordM3] = size(visualWord3);
visualWord4 = importdata('visualWord4.txt');
[m4 , wordM4] = size(visualWord4);
visualWord5 = importdata('visualWord5.txt');
[m5 , wordM5] = size(visualWord5);
visualWord6 = importdata('visualWord6.txt');
[m6 , wordM6] = size(visualWord6);
visualWord7= importdata('visualWord7.txt');
[m7 , wordM7] = size(visualWord7);
visualWord8 = importdata('visualWord8.txt');
[m8 , wordM8] = size(visualWord8);
visualWord9 = importdata('visualWord9.txt');
[m9 , wordM9] = size(visualWord9);
visualWord10 = importdata('visualWord10.txt');
[m10 , wordM10] = size(visualWord10);
visualWord11 = importdata('visualWord11.txt');
[m11 , wordM11] = size(visualWord11);
visualWord12 = importdata('visualWord12.txt');
[m12 , wordM12] = size(visualWord12);
visualWord13 = importdata('visualWord13.txt');
[m13 , wordM13] = size(visualWord13);
visualWord14 = importdata('visualWord14.txt');
[m14 , wordM14] = size(visualWord14);
visualWord15 = importdata('visualWord15.txt');
[m15 , wordM15] = size(visualWord15);
visualWord16 = importdata('visualWord16.txt');
[m16 , wordM16] = size(visualWord16);

%InvertedIndex = importdata('invertedFile.txt');
load InvertedIndex;
load InvertedIndex2;
load InvertedIndex3;
load InvertedIndex4;
load InvertedIndex5;
load InvertedIndex6;
load InvertedIndex7;
load InvertedIndex8;
load InvertedIndex9;
load InvertedIndex10;
load InvertedIndex11;
load InvertedIndex12;
load InvertedIndex13;
load InvertedIndex14;
load InvertedIndex15;
load InvertedIndex16;
%% retrival
%load L1
X1=data_query';
X2 = visualWord';
distance = pdist2(X1,X2);
dis_new = distance';
[value , word] = min(dis_new);

%ma_st=eye(960);
load MM2;
X1=data_query'*ma_st;
X3 = visualWord2';
distance2 = pdist2(X1,X3);
dis_new2 = distance2';
[value2 , word2] = min(dis_new2);

load MM3;
X1=data_query'*ma_st;
X4 = visualWord3';
distance3 = pdist2(X1,X4);
dis_new3 = distance3';
[value3 , word3] = min(dis_new3);

load MM4;
X1=data_query'*ma_st;
X5 = visualWord4';
distance4 = pdist2(X1,X5);
dis_new4 = distance4';
[value4 , word4] = min(dis_new4);

load MM5;
X1=data_query'*ma_st;
X6 = visualWord5';
distance5 = pdist2(X1,X6);
dis_new5 = distance5';
[value5 , word5] = min(dis_new5);

load MM6;
X1=data_query'*ma_st;
X7 = visualWord6';
distance6 = pdist2(X1,X7);
dis_new6 = distance6';
[value6 , word6] = min(dis_new6);

load MM7;
X1=data_query'*ma_st;
X8 = visualWord7';
distance7 = pdist2(X1,X8);
dis_new7 = distance7';
[value7 , word7] = min(dis_new7);

load MM8;
X1=data_query'*ma_st;
X9 = visualWord8';
distance8 = pdist2(X1,X9);
dis_new8 = distance8';
[value8 , word8] = min(dis_new8);

load MM9;
%ma_st=eye(128);
X1=data_query'*ma_st;
X10 = visualWord9';
distance9 = pdist2(X1,X10);
dis_new9 = distance9';
[value9 , word9] = min(dis_new9);

load MM10;
X1=data_query'*ma_st;
X11 = visualWord10';
distance10 = pdist2(X1,X11);
dis_new10 = distance10';
[value10 , word10] = min(dis_new10);

load MM11;
X1=data_query'*ma_st;
X12 = visualWord11';
distance11 = pdist2(X1,X12);
dis_new11 = distance11';
[value211 , word11] = min(dis_new11);

load MM12;
X1=data_query'*ma_st;
X13 = visualWord12';
distance12 = pdist2(X1,X13);
dis_new12 = distance12';
[value12 , word12] = min(dis_new12);

load MM13;
X1=data_query'*ma_st;
X14 = visualWord13';
distance13 = pdist2(X1,X14);
dis_new13 = distance13';
[value13 , word13] = min(dis_new13);

load MM14;
X1=data_query'*ma_st;
X15 = visualWord14';
distance14 = pdist2(X1,X15);
dis_new14 = distance14';
[value14 , word14] = min(dis_new14);

load MM15;
X1=data_query'*ma_st;
X16 = visualWord15';
distance15 = pdist2(X1,X16);
dis_new15 = distance15';
[value15 , word15] = min(dis_new15);

load MM16;
X1=data_query'*ma_st;
X17 = visualWord16';
distance16 = pdist2(X1,X17);
dis_new16 = distance16';
[value16 , word16] = min(dis_new16);


num_total=0;
n_t=0;
for i = 1:n
    y1 = data_query_truth(:,i)';
    y2 = InvertedIndex{word(i)};
    y3 = InvertedIndex2{word2(i)};
    y4 = InvertedIndex3{word3(i)};
    y5 = InvertedIndex4{word4(i)};
    y6 = InvertedIndex5{word5(i)};
    y7 = InvertedIndex6{word6(i)};
    y8 = InvertedIndex7{word7(i)};
    y9 = InvertedIndex8{word8(i)};
    y10 = InvertedIndex9{word9(i)};
    y11 = InvertedIndex10{word10(i)};
    y12 = InvertedIndex11{word11(i)};
    y13 = InvertedIndex12{word12(i)};
    y14 = InvertedIndex13{word13(i)};
    y15 = InvertedIndex14{word14(i)};
    y16 = InvertedIndex15{word15(i)};
    y17 = InvertedIndex16{word16(i)};
    
    y_inverted1 = union(union(union(y2,y3),y4),y5);
    y_inverted2 = union(union(union(y6,y7),y8),y9);
    y_inverted3 = union(union(union(y10,y11),y12),y13);
    y_inverted4 = union(union(union(y14,y15),y16),y17);
    y_inverted = union(union(union(y_inverted1,y_inverted2),y_inverted3),y_inverted4);
    y1=y1+1;
    yy1=(data_query (:,i))';
    y_inverted=rerank(y_inverted,yy1);
    [nn1,nn2]=size(y_inverted);
    nn=max(nn1,nn2);
    y_inverted=y_inverted(1:T);
    if T<100
        y1=y1(1:T);
    end
    [hang , recall_num(i)] = size(intersect(y1,y_inverted));
    if T<100
        recall(i) = recall_num(i)/T;
    else
        recall(i) = recall_num(i)/100;
    end
    [num_m,num_n]=size(y_inverted);
    num_total=num_total+num_n;
    n_t=n_t+nn;
end

num_total=num_total/n
recall_total = sum(recall)/n
n_t=n_t/n