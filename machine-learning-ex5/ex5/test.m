clear ; close all; clc

X=[1;2;3;4;5];
p=6;

X_poly = zeros(numel(X), p)

% ====================== YOUR CODE HERE ======================
% Instructions: Given a vector X, return a matrix X_poly where the p-th 
%               column of X contains the values of X to the p-th power.
%
% 

for i = 1:size(X,1)
  X_poly(i, :) = X(i) .^ i
endfor


size(X_poly);
