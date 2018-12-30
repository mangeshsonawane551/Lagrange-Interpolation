
function coefficient = interpolate_lagrange(N,Q)
%Start stopwatch
tic
%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~%

% *Program Details* : An implementation of Nth order Lagrange Interpolation
% where N is restricted to Even values. This Matlab function  depends on
%two arguments, N and Q, and will generate a matrix as an output which are 
%the coefficients of the polynomial.
 
%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~%
%In this I have used the formula as Productof((alpha-Xj)/(Xi-Xj))
%Since alpha and X will have same values, just to differentiate their usage
%paramters, they have been declared seperately
for i=1:Q
    alpha(i)=(-((Q/2) -(i-1))/Q);   %value of alpha between -1/2 to 1/2    
     X(i)=(-((Q/2) -(i-1))/Q);    %value of alpha between -1/2 to 1/2    
    
end
%Initialise output 
coefficient=ones(length(X),N);
for k=1:length(X)
  for i=1:N
    for j=1:N
        if j~=i
           coefficient(k,j)=coefficient(k,j).*((alpha(k)-X(j))./(X(i)-X(j)));
        end
    end
  end
 
end
 %Output table of coefficient 
 coefficient;
 %End stopwatch
 toc
end
%--------------------------------------------------------------------------%
