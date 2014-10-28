
load 'dkozak#cit2.txt';

n = length(dkozak_cit2);

T = sortrows([dkozak_cit2(:,1), ones(n,1); dkozak_cit2(:,2), -ones(n,1)]);

for i = 2:2*n
  T(i,2) = T(i-1,2) + T(i,2);
end

plot(T(:,1), T(:,2), 'x');

