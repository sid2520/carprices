function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

thetacount = size(X)(2);

for iter = 1:num_iters,

  temp = zeros(size(theta));
  for j=1:thetacount,
    term = 0.0;
    for i=1:m,
      term = term + (X(i,:)*theta - y(i))*X(i,j);
    end;
    temp(j) = theta(j) - (alpha/m)*term;
  end;
  
  for p=1:thetacount,
    theta(p) = temp(p);
  end;

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end;

end;
