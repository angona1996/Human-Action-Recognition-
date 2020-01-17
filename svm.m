imgSets = [ imageSet(fullfile('H:\mc\dataset', 'applauding')), ...      
    imageSet(fullfile('H:\mc\dataset', 'climbing')),...
    imageSet(fullfile('H:\mc\dataset', 'drinking')),...
    imageSet(fullfile('H:\mc\dataset', 'running')),...
    imageSet(fullfile('H:\mc\dataset', 'smoking'))]
{ imgSets.Description } % display all labels on one line[imgSets.Count]
[imgSets.Count]
minSetCount = min([imgSets.Count]);
imgSets = partition(imgSets, minSetCount, 'randomize');
[imgSets.Count]
[trainingSets, validationSets] = partition(imgSets, 0.2, 'randomize');
bag = bagOfFeatures(trainingSets);

categoryClassifier = trainImageCategoryClassifier(trainingSets, bag);
confMatrix = evaluate(categoryClassifier, validationSets);
confMatrix = evaluate(categoryClassifier, trainingSets);
