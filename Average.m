function [AverageValue] = Average(Mat)
Mat1 = sum(Mat,1);
AverageValue = sum(Mat1)/numel(Mat);
end