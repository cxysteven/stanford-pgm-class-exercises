% You should put all your code for recognizing unknown actions in this file.
% Describe the method you used in YourMethod.txt.
% Don't forget to call SavePrediction() at the end with your predicted labels to save them for submission, then submit using submit.m
function [accuracy, predicted_labels] = ...
    RecognizeUnknownActions(datasetTrain, datasetTest, G, maxIter)
datasetTest.labels = zeros(length(datasetTest.actionData), 1);
[accuracy predicted_labels] = RecognizeActions(datasetTrain, ...
                                               datasetTest, G, maxIter);
end