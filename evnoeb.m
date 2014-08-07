% plot accuracy against labeled training data size

data = load('/Users/Dima/Boston/Out/cd.txt');

maxsize = -1;
step = 10;

% column 1 - training set size
% column 2 - no unlabled data (baseline)
% column 3 - 500 unlabeled examples
% column 4 - 1000 unlabeled examples
% column 5 - 3000 unlabeled examples

plot(data(:, 1), data(:, 3), 'g', ...  % 500 unlabeled
     data(:, 1), data(:, 4), 'c', ...  % 1000 unlabeled
     data(:, 1), data(:, 5), 'm', ...  % 3000 unlabeled
     data(:, 1), data(:, 2), 'b')      % baseline

% if maxsize > 0
%   plot(data(1:maxsize/step, 1), data(1:maxsize/step, 2:end));
% else
%   plot(data(1:end, 1), data(1:end, 2:end));
% end

xlabel('Training set size')
ylabel('Classification Accuracy')
legend('500', '1000', '3000', 'labeled only', 4)
