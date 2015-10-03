///scr_starburst(x, y, number of stars, direction, distribution, distance, speed, speed range, particle);

var xx, yy, sCount, sDirection, sDistribution, sDistance, sSpeed, sSpeedRange, sParticle;
xx = argument0;
yy = argument1;
sCount = argument2;
sDirection = argument3;
sDistribution = argument4;
sDistance = argument5;
sSpeed = argument6;
sSpeedRange = argument7;
sParticle = argument8;

var i, tempObj, tDirection, tSpeed;
for (i = 0; i < sCount; i++) {
    tDirection = irandom(sDistribution) - sDistribution/2 + sDirection;
    tSpeed = random(sSpeedRange) - sSpeedRange/2 + sSpeed;
    tempObj = instance_create(xx + lengthdir_x(sDistance, tDirection), yy + lengthdir_y(sDistance, tDirection), obj_star_particle);
    tempObj.speed = tSpeed;
    tempObj.direction = tDirection;
    tempObj.image_speed = 0;
    tempObj.image_index = sParticle;
}

return 1;
