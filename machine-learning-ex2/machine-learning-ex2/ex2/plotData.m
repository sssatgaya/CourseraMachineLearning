function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
m = size(y,1);
X_adm = zeros(1,2);
X_nadm = zeros(1,2);
for itr=1:m,
	if y(itr,1) == 1,
		X_adm = [X_adm(:,:); X(itr,1) X(itr,2)];
	else,
		X_nadm = [X_nadm(:,:); X(itr,1) X(itr,2)];
	end;
end;
X_adm(1,:) = [];
X_nadm(1,:) = [];
figure 1; hold on;
% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%



plot(X_adm(:,1),X_adm(:,2),'k+','LineWidth',2,'MarkerSize',7);
plot(X_nadm(:,1),X_nadm(:,2),'ko','MarkerFaceColor','y','MarkerSize',7);





% =========================================================================



hold off;
clear X_adm, clear X_nadm;
end
