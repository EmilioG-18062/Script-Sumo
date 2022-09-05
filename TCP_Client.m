try
    robotat_disconnect(t)
catch
    
end

t = robotat_connect("192.168.50.200");

while 1
    robotat_get_pose(t, 2, 'eulzyx')
end