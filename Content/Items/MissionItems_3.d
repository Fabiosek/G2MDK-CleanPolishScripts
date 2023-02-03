// *****************************************************
// 		MoleratFett für "die Winde klemmt"
// *****************************************************

INSTANCE ItMi_Moleratlubric_MIS(C_Item)
{
	name = "£ój kretoszczura";

	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;

	value = Value_Pitch;

	visual = "ItMi_Moleratlubric.3ds";
	material = MAT_WOOD;

	description = name;
	TEXT[4] = NAME_Value;
	COUNT[4] = value;
};

//**********************************************************************************
//	Gestein aus gesegneter Erde für das Schutzamulett gegen den Schwarzen Blick
//**********************************************************************************

INSTANCE ItMi_KarrasBlessedStone_Mis(C_Item)
{
	name = "Kamieñ z poœwiêconej ziemi";

	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION | ITEM_MULTI;

	value = 0;

	visual = "ItMi_Rockcrystal.3ds";

	visual_skin = 0;
	material = MAT_STONE;

	description = name;

	TEXT[2] = "";

	TEXT[3] = "";

	TEXT[5] = NAME_Value;
	COUNT[5] = value;
};