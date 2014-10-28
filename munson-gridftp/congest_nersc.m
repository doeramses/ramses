
load 'nersc#hopper.txt';

n = length(nersc_hopper);

T = sortrows([nersc_hopper(:,1), ones(n,1); nersc_hopper(:,2), -ones(n,1)]);

for i = 2:2*n
  T(i,2) = T(i-1,2) + T(i,2);
end

plot(T(:,1), T(:,2), 'x');

