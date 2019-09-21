clear all;                                                       %Clear all the Memory
clc;                                                             %Clear all the Workspace Code
disp('Unit Impulse Signal Generator');                           %Display the Text
NoS =input('Input Number of Samples');                           %Takes Input from the User and stores in a variable,to be plot on X-Axis
ValueAtImpulse =input('Input the Value where you want impulse'); %Takes Input from the User and stores in a variable,to be plot on Y-Axis
onX = -NoS : 1 : NoS;                                            %Create an Array of Samples Occurs on X-Axis
onY = [zeros(1,NoS), ValueAtImpulse , zeros(1,NoS)];             %Create an Array of Zeros and Value at Impulse on Y-Axis
stem(onX,onY);                                                   %Plot the Data Points
xlabel('Number of Samples');                                     %Display the X-Label
ylabel('Amplitude');                                             %Display the Y-Label
title('Unit Impulse Signal Generator');                          %Display the Title