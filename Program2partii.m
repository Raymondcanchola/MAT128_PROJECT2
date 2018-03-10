function Average_digit = average_digit()
load mnist_all.mat
m = 10;
n = 784;
A = zeros(m,n);

A(1,:) = mean(train0);
A(2,:) = mean(train1);
A(3,:) = mean(train2);
A(4,:) = mean(train3);
A(5,:) = mean(train4);
A(6,:)= mean(train5);
A(7,:) = mean(train6);
A(8,:) = mean(train7);
A(9,:) = mean(train8);
A(10,:) = mean(train9);

for i = 1:10
    figure;
    digit = A(i,:);
    digitImage = reshape(digit, 28,28);
    image(rot90(flipud(digitImage),-1)),
    colormap(gray(256)), axis square tight off;
end

    
