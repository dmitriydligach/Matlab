data = load('/Users/Dima/Boston/Output/em.txt');
plot(data(:, 1), data(:, 2), data(:, 1), data(:, 3))
xlabel('Training set size')
ylabel('Classification Accuracy')
legend('labeled only', 'labeled + unlabeled', 4)

% hopefully positive
average = mean(data(:, 3) - data(:, 2))
