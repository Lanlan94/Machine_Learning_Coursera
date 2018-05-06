function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples
z=theta' * X';
h=sigmoid(z); %prediction
 
% You need to return the following variables correctly 
grad = zeros(size(theta));

for i = 1: size(theta)(1)
  grad(i)=1/m * sum(( h' - y) .* X(:,i));
end

J = 1/m * sum(-y .* log(h') - (1-y).*log(1-h'));
 
 
  
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%








% =============================================================

end