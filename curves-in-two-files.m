function draw()
  % graph something

  basepath = '/Users/Dima/Temp/';
  randompath = [basepath, 'labeled.txt'];
  empath = [basepath, 'em.txt'];
  
  random = load(randompath);
  em = load(empath);
  
  initsize = 2;
  step = 1;
  
  plot(random(initsize:step:end, 1), ...
       random(initsize:step:end, 2), ...
       'bo:', ...
       em(initsize:step:end, 1), ...
       em(initsize:step:end, 2), ...
       'g*:')

   
  % areas under curve for random sampling and active learning
  % randomarea = trapz(random(1:step:end, 1), random(1:step:end, 2));
  % activearea = trapz(active(1:step:end, 1), active(1:step:end, 2));
  
  % hopefully positive
  % difference =  activearea - randomarea;
  % fprintf('area(active - random): %2f\n', difference);
   
  legend('Random', 'EM', 4)
  xlabel('Training set size')
  ylabel('Classification Accuracy')
