%%%%%%%%%%%%%%%%%%%%%%%%%%
%Sahebeh Dadboud : 1569394
% Assignment 1 - exe 1
%%%%%%%%%%%%%%%%%%%%%%%%%%


%applying the least-squares approximation to the Millikan data on a straight line q=k*e+dq.
%Note that the measured data are very accurately represented by the straight line of the least-squares approximation.



% oil drop data sets
k = [4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14,15, 16, 17, 18];
q = [6.558, 8.206, 9.880, 11.50, 13.14,14.81, 16.40, 18.04, 19.68, 21.32, 22.96, 24.60,26.24, 27.88, 29.52];


numerator = sum(q.*(k-mean(k)));
denominator = sum((k-mean(k)).^2);
e = numerator/denominator; %slope of the least squares curve fit
dq = mean(q)-e*mean(k); %calculate intercept
Q = e*k+dq; %linear equation
figure;
plot(k,q,'ro',k,Q,'g-')
xlabel('k')
ylabel('Q')


