clear all;                                                       %Clear all the Memory
clc;                                                             %Clear all the Workspace Code
disp('Unit ramp Signal Generator');                              %Display the Text
NoS =input('Input Number of Samples');                           %Takes Input from the User and stores in a variable,to be plot on X-Axis
Amp =input('Input the Maximum Amplitude')                        %Takes Input from the User and stores in a variable.  
SamplesArray = -NoS : 1 : NoS;                                   %Create an array of No.of Samples
OnY = ((SamplesArray/NoS)*Amp)/2;                                %Formula to generate Lineairty,Ramp
stem(SamplesArray,OnY);                                          %Display Data Points
xlabel('Number of Samples');                                     %Display the X-Label
ylabel('Amplitude');                                             %Display the Y-Label
title('Unit Ramp Signal Generator');                             %Display the Title