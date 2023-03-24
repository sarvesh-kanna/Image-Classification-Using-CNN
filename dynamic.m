clear all
the_network=googlenet;
required_input_size = the_network.Layers(1).InputSize(1:2)

I=imread('1mouse.jpg');
I=imresize(I,required_input_size);
%label=classify(the_network,I);
[Predicted_Label, Probability] = classify(the_network,I);

figure
imshow(I)
%title(string(label))
title({char(Predicted_Label), num2str(max(Probability),2)});


