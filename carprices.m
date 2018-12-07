%Multivariate linear regression to build prediction model for car prices
%Data sourced from advertisement posts on ISB alumni forum
% @author: sid2520
% @date: 26/11/2018

clear ; close all; clc

fprintf('Loading data ...\n');

X = load('features.txt');
y = load('y.txt');
m = length(y);

% Print out some data points
fprintf('First 10 examples from the dataset: \n');
fprintf(' x = [%.0f %.0f %.0f], y = %.2f \n', [X(1:10,:) y(1:10,:)]');

fprintf('Program paused. Press enter to continue.\n');
pause;

% Scale features and set them to zero mean
fprintf('Normalizing Features ...\n');

[X mu sigma] = featureNormalize(X);

% Add intercept i.e. the X0 term to X
X = [ones(m, 1) X];

%Running gradient descent
fprintf('Running gradient descent ...\n');
alpha = 0.03;         %Learning rate
num_iters = 100;      %Number of iterations for gradient descent

theta = zeros(4,1);
[theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters);

% Plot the convergence graph
figure;
plot(1:numel(J_history), J_history, '-b', 'LineWidth', 2);
xlabel('Number of iterations');
ylabel('Cost J');

fprintf('Theta computed from gradient descent: \n');
fprintf(' %f \n', theta);
fprintf('\n');


%predAge = (75-mu(1))/sigma(1);
%predUse = (50000-mu(2))/sigma(2);
%predShwPrice = (922920-mu(3))/sigma(3);
%predX = [1 predAge predUse predShwPrice];
%preDep = predX*theta
predDep = zeros(m,1);
for i=1:m,
  predDep(i) = X(i,:)*theta;
end;
  