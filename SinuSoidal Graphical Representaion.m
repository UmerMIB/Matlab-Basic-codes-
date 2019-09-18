clear all;                                        %Clear all the Memory
clc;                                              %Clear all the Workspace Code
disp('SinuSoidal Graphical Representaion')        %Display the Text
NumberofSamples=input('Enter Number of Samples'); %Input No of Samples to be plot on X-Axis
SampleArray=0:0.1:NumberofSamples;                %Creating and Array for X-Axis Starting From 0 to NumberofSamples difference of 0.1;
SineWave=sin(SampleArray);                        %Sine Function                
figure,stem(SampleArray,SineWave,'.g');           %Displaying the Data Points on Stem Graph
xlabel('Number of Samples');                      %Displaying the Xlabel of the Graph
ylabel('Amplitude of Signal');                    %Displaying the Ylabel of the Graph
title('Sinusoidal Signal Generator');             %Displaying the Titel of the Graph
