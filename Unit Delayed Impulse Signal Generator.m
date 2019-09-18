clear all;                                                       %Clear all the Memory
clc;                                                             %Clear all the Workspace Code
disp('Unit Delayed Impulse Signal Generator');                   %Display the Text
NoS =input('Input Number of Samples');                           %Takes Input from the User and stores in a variable,to be plot on X-Axis
Delay =input('Input Value for the signal to be delayed');        %Takes Input from the User and stores in a variable,For Delay Value
onX = -NoS : 1 : NoS;                                            %Create an Array of Samples Occurs on X-Axis
onY = [zeros(1,NoS+Delay),1,ones(1,NoS-Delay)];                  %Create an Array of Zeros and Value at Impulse on Y-Axis
stem(onX,onY);                                                   %Plot the Data Points
xlabel('Number of Samples');                                     %Display the X-Label
ylabel('Amplitude');                                             %Display the Y-Label
title('Unit Delayed Impulse Signal Generator');                  %Display the Title