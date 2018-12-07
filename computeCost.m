function J = computeCost(X, y, theta)

% Initialize some useful values
m = length(y); % number of training examples

J = 0;
term = (X*theta)-y;
J = (term'*term)/(2*size(X,1));

end;
