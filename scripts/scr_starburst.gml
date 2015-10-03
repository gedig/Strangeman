///scr_starburst(x, y, number of stars, direction, distribution, distance, speed, speed range);

var xx, yy, sCount, sDirection, sDistribution, sDistance, sSpeed, sSpeedRange;
xx = argument0;
yy = argument1;
sCount = argument2;
sDirection = argument3;
sDistribution = argument4;
sDistance = argument5;
sSpeed = argument6;
sSpeedRange = argument7;

var i, tempObj, tDirection, tSpeed;
for (i = 0; i < sCount; i++) {
    tDirection = irandom(sDistribution) - sDistribution/2 + sDirection;
    tSpeed = random(sSpeedRange) - sSpeedRange/2 + sSpeed;
    tempObj = instance_create(xx + lengthdir_x(sDistance, tDirection), yy + lengthdir_y(sDistance, tDirection), obj_star_particle);
    tempObj.speed = tSpeed;
    tempObj.direction = tDirection;
}

return 1;
