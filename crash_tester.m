function [crash time]= crash_tester(z)
if sum(z<=0)>0
    crash = true;
    index = find(z<0);
    time = index(1)./length(z)*10;
else
    crash = false;
    time = NaN;
end
end