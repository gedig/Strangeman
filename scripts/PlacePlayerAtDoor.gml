for (i = 0; i < instance_number(obj_door); i++) {
    var door = instance_find(obj_door,i);
    if (door.door_id == argument0) {
        x = door.x + door.player_x_offset;
        y = door.y + door.player_y_offset;
    }
}
