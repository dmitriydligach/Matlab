% plot accuracy against labeled training data size

d = load('/Users/Dima/Boston/Out/ms.txt');

hold

% column 1 - training set size
% column 2 - 0 unlabeled examples (baseline)
% column 4 - 500 unlabeled examples
% column 6 - 1000 unlabeled examples
% column 8 - 3000 unlabeled examples

% errorbar(d(:, 1), d(:, 4), d(:, 5), 'g')
% errorbar(d(:, 1), d(:, 6), d(:, 7), 'c')
% errorbar(d(:, 1), d(:, 8), d(:, 9), 'm')

plot(d(:, 1), d(:, 4), 'g')
plot(d(:, 1), d(:, 6), 'c')
plot(d(:, 1), d(:, 8), 'm')

% plot(d(:, 1), d(:, 2), 'b')
errorbar(d(:, 1), d(:, 2), d(:, 3), 'b')

xlabel('Training set size')
ylabel('Classification Accuracy')

legend('labeled only', '500', '1000', '3000', 4)
