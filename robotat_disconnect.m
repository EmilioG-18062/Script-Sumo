function robotat_disconnect(tcp_obj)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
    write(tcp_obj, "EXIT");
    disp('Disconnected from Robotat server.');
    %clear("tcp_obj");
end