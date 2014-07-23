% plot accuracy against labeled training data size

maxsize = -1;
step = 10;

% column 1 - training set size
% column 2 - no unlabled data (baseline)
% column 3 - 500 unlabeled examples
% column 4 - 1000 unlabeled examples
% column 5 - 3000 unlabeled examples
% column 6 - 5000 unlabeled examples
data = load('/Users/Dima/Boston/Out/in');

plot(data(:, 1), data(:, 3), 'g', ...  % 500 unlabeled
     data(:, 1), data(:, 4), 'c', ...  % 1000 unlabeled
     data(:, 1), data(:, 5), 'm', ...  % 3000 unlabeled
     data(:, 1), data(:, 6), 'y', ...  % 5000 unlabeled
     data(:, 1), data(:, 2), 'b')      % baseline

% if maxsize > 0
%   plot(data(1:maxsize/step, 1), data(1:maxsize/step, 2:end));
% else
%   plot(data(1:end, 1), data(1:end, 2:end));
% end

xlabel('Training set size')
ylabel('Classification Accuracy')
legend('500', '1000', '3000', '5000', 'labeled only', 4)
