clear; close all; clc;

theta = [-2; -1; 1; 2]
X = [ones(5,1) reshape(1:15,5,3)/10]
y = ([1;0;1;0;1] >= 0.5)
lambda = 3;


theta_zero=[0;theta(2:end)]
m = length(y); % number of training examples
z= X * theta;
h=sigmoid(z);
beta= ((h-y)' * X)';
t=lambda/(2*m) * sum(theta.^2); 

% You need to return the following variables correctly 
J = 1/m * sum( -y .* log(h) - (1-y) .* log(1-h)) + lambda/(2*m) * sum(theta_zero.^2);
grad = zeros(size(theta));
grad = 1/m * beta;
grad(2:end)= 1/m * beta(2:end) + lambda/m .*theta(2:end);


fprintf('\nCost: %f\n', J);
fprintf('Expected cost: 2.534819\n');
fprintf('Gradients:\n');
fprintf(' %f \n', grad);
fprintf('Expected gradients:\n');
fprintf(' 0.146561\n -0.548558\n 0.724722\n 1.398003\n');
