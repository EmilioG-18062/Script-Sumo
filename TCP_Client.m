robot = struct;
controller = struct;

robot.x = 0;
robot.y = 0;
robot.w = 0;
robot.ang = 0;
robot.vel = 0;

controller.alpha = 0;
controller.vo = 0;
controller.goalX = 0;
controller.goalY = 0;

controller.Kpo = 0;
controller.Kio = 0;
controller.Kdo = 0;

try
    robotat_disconnect(t)
catch
    
end

t = robotat_connect("192.168.50.200");

 
while 1
    robotat_get_pose(t, 2, 'eulzyx')
    robot = pid(robot, controller);
    oldTime = clock;
end