# carprices
A basic multivariate linear regression model to predict car prices

carprices.m           The high level wrapper, does the setup + calling appropriate functions
computeCost.m         Compute the cost function
featureNormalize.m    Normalize features (subtract mean and divide by std dev)
features.txt          The input features, age (in months), usage (in km), showroom price (in Rs)
gradientDescent.m     Calculate thetas using gradient descent
predictedDeps.txt     The predicted depreciation value based on model
y.txt                 The depreciation values that form the training model
