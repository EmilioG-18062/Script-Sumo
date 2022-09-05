function robot = pid(robot, controller)
%CONTROLLER Summary of this function goes here
%   Detailed explanation goes here
Kpo = controller.Kpo;
Kio = controller.Kio;
Kdo = controller.Kdo;

alpha = controller.alpha;
vo = controller.vo;

currentX = robot.x;
currentY = robot.y;
currentW = robot.w;

goalX = controller.goalX;
goalY = controller.goalY;

errorX = currentX - goalX;
errorY = currentY - goalY;

ep = (errorX^2 + errorY^2)^(1/2);
wg = atan(errorY / errorX);
e0 = atan2(sin(wg - currentW) / cos(wg - currentW));

robot.ang = ;
robot.vel = vo * (1 - exp(-alpha * ep^2)) / ep;

end

