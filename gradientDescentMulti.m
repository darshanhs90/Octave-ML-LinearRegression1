function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

[val,ind]=size(theta);
X
fprintf('X');
size(X)
theta
fprintf('theta');
size(theta)
y
fprintf('y');
size(y)
%fprintf('entering iter loop');

for iter = 1:num_iters,
	H=X*theta-y;
	temp=zeros(size(theta,1),size(theta,2));
	H=sum(H.*(X));
	%size(H)
	theta=theta-(alpha/m)*H';
	%for j=1:size(X,2),
	%if j==1,
	%temp(j)=theta(j)-((alpha/m) * sum(H));
	%else
	%temp(j)=theta(j)-((alpha/m) * sum(H.*X(:,j)));
	%end
%theta=temp;
%end
%temp1= theta(1) - alpha/m * sum(X* theta - y);
 %temp2=theta(2) -alpha/m * sum((X*theta-y).*X(:,2));
%temp3=theta(3) - alpha/m * sum((X*theta - y).*X(:,3));
% theta(1)= temp1;
% theta(2)=temp2;
%theta(3)=temp3;
	
end
	% ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %











    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);


end
