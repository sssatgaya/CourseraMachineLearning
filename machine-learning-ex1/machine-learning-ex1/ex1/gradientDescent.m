function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
% Normalization
% maxX = max(X(:,2));
% minX = min(X(:,2));
% Tmp = zeros(m,1);
% for abc =1:m,
%	Tmp(abc,1) = (X(abc,2) - maxX) / (maxX-minX);
% end;

J_history = zeros(num_iters, 1);
% H = ((X * theta) - y)';

for iter = 1:num_iters,
	H = ((X * theta) - y)';
	theta(1,1) = theta(1,1) - (alpha/m)*(H * X(:,1));
	theta(2,1) = theta(2,1) - (alpha/m)*(H * X(:,2));
	J_history(iter) = computeCost(X,y,theta);
end;
    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %







    % ============================================================

    % Save the cost J in every iteration    
   % J_history(iter) = computeCost(X, y, theta);

% end

end
