//****************************************************************************
//				Effectitems
//			---------------------------------------------
//****************************************************************************

prototype EffectItemPrototype_Addon (C_Item)	
{
	name 				=	"Kamieñ";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Coal;

	visual 				=	"ItMi_Coal.3ds";
	material 			=	MAT_STONE;

	description			= 	name;
	TEXT[5]				= 	NAME_Value;	
	COUNT[5]			= 	value;
	
	INV_ZBIAS			= INVCAM_ENTF_MISC_STANDARD;
	
};

instance ItMi_AmbossEffekt_Addon (EffectItemPrototype_Addon)
{
};

instance ItMi_OrnamentEffekt_FARM_Addon (EffectItemPrototype_Addon)
{
};

instance ItMi_OrnamentEffekt_FOREST_Addon (EffectItemPrototype_Addon)
{
};

instance ItMi_OrnamentEffekt_BIGFARM_Addon (EffectItemPrototype_Addon)
{
};

/******************************************************************************************/
// Hacke 
instance ItMi_Rake (C_Item)
{
	name 				=	"Grabie";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Rake;

	visual 				=	"ItMi_Rake.3DS";
	material 			=	MAT_WOOD;

	scemeName			=	"RAKE";
	on_state[1]			= 	Use_Rake;
	description			= 	name;
	
	//TEXT[3]				=   "(Lässt sich bei geöffnetem Inventar benutzen)";
	//TEXT[4]				=   "('Aktionstaste' + 'Pfeil- Vorne' gedrückt halten)";
	
	TEXT[5]				= 	NAME_Value;	
	COUNT[5]			= 	value;
	
	INV_ZBIAS		= INVCAM_ENTF_AMULETTE_STANDARD;
	//inv_rotx		= 180;
};

func void Use_Rake()
{
	//B_SCUsesRake (self); //Schatz ausgraben ist jetzt Mobsi mit itmw_2h_Axe_L_01
};