function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);


%H=theta*X;%mycode
for iter = 1:num_iters

,    
	i=0;	
	z=alpha/m;
	H=X*theta;
	X1=X(:,1);
	X2=X(:,2);
	temp1=0;
	temp2=0;
	for i=1:m,
	temp1=(H(i)-y(i));
	temp1=temp1.*X1(i);
	temp1=temp1*z;
	theta(1)=theta(1)-temp1;

	temp2=(H(i)-y(i));
	temp2=temp2.*X2(i);
	temp2=temp2*z;
	theta(2)=theta(2)-temp2;
	%theta(0)=theta(0)-(((H(i))-y(i)) .*(X1(i)) *z);
	%theta(2)=theta(1)-(((H(i))-y(i)) .*(X2(i)) *z);
	end
% ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %







    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
