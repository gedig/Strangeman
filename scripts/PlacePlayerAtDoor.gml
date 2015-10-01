for (i = 0; i < instance_number(obj_door); i++) {
    var door = instance_find(obj_door,i);
    if (door.door_id == argument0) {
        x = door.x;
        y = door.y - 15;
    }
}
