/// @desc Draw Score
if (instance_exists(ObjPlayer))
{
	DrawSetText(c_black, fa_right, fa_top);
	draw_text_transformed(RES_W-8,12,"HP", hptextscale,hptextscale,0);
	draw_set_color(c_white);
	draw_text_transformed(RES_W-10,10,"HP", hptextscale,hptextscale,0);
}