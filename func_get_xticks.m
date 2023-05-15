function [Ticks,TickLabels] = func_get_xticks(c2,A)
%FUNC_ Summary of this function goes here
%   Detailed explanation goes here
% preallocate Ticks and TickLabels
num_of_ticks = 10;
Ticks      = zeros(1,num_of_ticks);
TickLabels = zeros(1,num_of_ticks);
% distribute Ticks and TickLabels
for n = 1:1:num_of_ticks
    
    Ticks(n)      = A(round(c2)/num_of_ticks*n);
    TickLabels(n) = round(c2)/num_of_ticks*n;
end
end

