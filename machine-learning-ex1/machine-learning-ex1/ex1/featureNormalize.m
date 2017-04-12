function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       

m = size(X,1);
totalFeature = size(X,2);
devit = 0;
for itr = 1:totalFeature,
	mu(1,itr) = sum(X(:,itr))/m;
	for itr1 = 1:m,
		devit = devit + (X(itr1,itr) - mu(1,itr))^2;
	end;
	sigma(1,itr) = sqrt(devit/m);
	devit = 0;
end;

for itr = 1:totalFeature,
	for itr1 = 1:m,
		X_norm(itr1,itr) = (X_norm(itr1,itr) - mu(1,itr))/sigma(1,itr);
	end;
end;

% ============================================================

end
