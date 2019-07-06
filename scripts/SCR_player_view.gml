/// View follows the player

if (instance_exists(OBJ_player))
{
    view_object[0] = OBJ_player;
    view_hborder[0] = round(view_wview[0] / 2.3);
    view_vborder[0] = 0;
    view_hspeed[0] = -1;
    view_vspeed[0] = -1;
}
