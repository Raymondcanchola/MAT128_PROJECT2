%Raymond Canchola
%
%Program ii
load mnist_all.mat
who;

%Creating array for loop
n = 10;
M = cell(n,1);
M{1,1} = train0; M{2,1} = train1; M{3,1} = train2; M{4,1} = train3; M{5,1} = train4;
M{6,1} = train5; M{7,1} = train6; M{8,1} = train7; M{9,1} = train8; M{10,1} = train9;

%Using for loop to create Matrix that consists with Means of rows
for i = 1:n
    Matrix(i,:)=mean(M{i,1});
end

%Checking m and n of Matrix for next step
[m n]=size(Matrix);

%Using for loop to plot figure of Matrix that conists of all Means 
figure                                         
colormap(gray)                                 
for i = 1:m                                    
    subplot(2,5,i)                             
    digit = rot90(flipud((reshape(Matrix(i, :), [28,28]))),-1);
    imagesc(digit)                              
    axis square tight off
end
    
