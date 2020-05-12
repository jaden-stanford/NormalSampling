data = exprnd(10, 2, 10000);
matrix = zeros(10000);
means = matrix(1,:);
for i = 1:10000
  val1 = data(1, i);
  val2 = data(2, i);
  mean = (val1 + val2)/2;
  means(i) = mean;
end
histogram(means)
title('n=2')
xlabel('Value')
ylabel('Frequency')
meanval = sum(means)/10000
standarddev = std(means)