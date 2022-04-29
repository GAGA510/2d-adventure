// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerCollision(){
	var _collision = false;
	
	///horizontal tiles
	if (tilemap_get_at_pixel(collision_Map, x + hsp, y))
	{
		x -= x mod TILE_SIZE;
		if (sign(hsp) == 1) x += TILE_SIZE - 1;
			hsp = 0;
			_collision = true;
		
	
	}
	
	///horizontal move commit
	x += hsp;
	
	
	///vertical tiles
	if (tilemap_get_at_pixel(collision_Map, x, y + vsp))
	{
		y -= y mod TILE_SIZE;
		if (sign(vsp) == 1) y += TILE_SIZE - 1;
			vsp = 0;
			_collision = true;
		
	
	}
	
	///vertical move commit
	y += vsp;
	
	
	
	
	
	
	return _collision;
}