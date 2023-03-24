clear all 

%Get the list of cameras
camList = webcamlist;

%Select the Camera
cam = webcam(1);

%preview the video stream
preview(cam);

%Declare the Network
Net = googlenet;

Required_input_layer = Net.Layers(1).InputSize(1:2)

figure
Input_Image = snapshot(cam);
image(Input_Image)
Input_Image = imresize(Input_Image,Required_input_layer);

[Predicted_Label, Probability] = classify(Net,Input_Image);
title({char(Predicted_Label), num2str(max(Probability),2)});



