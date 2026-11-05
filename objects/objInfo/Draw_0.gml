/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 7427CF91
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 2D554E8B
/// @DnDArgument : "x" "1100"
/// @DnDArgument : "y" "408"
/// @DnDArgument : "caption" ""WASD/Arrows to move\n E to interact\n Currently no final visual\n assets are added.\n Inventory is not visually\n implemented but will \nshow in output/debug.""
draw_text(1100, 408, string("WASD/Arrows to move\n E to interact\n Currently no final visual\n assets are added.\n Inventory is not visually\n implemented but will \nshow in output/debug.") + "");

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 098992E5
draw_set_halign(fa_left);
draw_set_valign(fa_top);