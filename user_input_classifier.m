clear all
the_network=googlenet;
required_input_size = the_network.Layers(1).InputSize(1:2)

I=imread('sample.jpg');
I=imresize(I,required_input_size);

[Predicted_Label, Probability] = classify(the_network,I);

figure
imshow(I)
title({char(Predicted_Label), num2str(max(Probability),2)});


