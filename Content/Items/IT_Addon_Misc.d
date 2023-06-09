const int VALUE_GOLDNUGGET = 18;
const int VALUE_WHITEPEARL = 120;
const int VALUE_ADDON_JOINT_01 = 60;

instance ITMI_GOLDNUGGET_ADDON(C_ITEM)
{
	name = "Bryłka złota";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = VALUE_GOLDNUGGET;
	visual = "ItMi_GoldNugget_01.3ds";
	material = MAT_STONE;
	description = name;
	text[5] = NAME_VALUE;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_MISC2_STANDARD;
};

instance ITMI_ADDON_WHITEPEARL(C_ITEM)
{
	name = "Perła";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = VALUE_WHITEPEARL;
	visual = "ItMi_WhitePearl_01.3ds";
	material = MAT_STONE;
	description = name;
	text[5] = NAME_VALUE;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_MISC_STANDARD;
};

instance ITMI_ADDON_JOINT_01(C_ITEM)
{
	name = "Zielony nowicjusz";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = VALUE_ADDON_JOINT_01;
	visual = "ItMi_Joint_US.3ds";
	material = MAT_LEATHER;
	scemename = "JOINT";
	on_state[0] = use_addon_joint_01;
	description = name;
	text[5] = NAME_VALUE;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_RING_STANDARD;
};

var int firstjoint;

func void use_addon_joint_01()
{
	if(Npc_IsPlayer(self))
	{
		if(FIRSTJOINT == FALSE)
		{
			FIRSTJOINT = TRUE;
			b_giveplayerxp(5);
		};
		Wld_PlayEffect("SLOW_TIME",self,self,0,0,0,FALSE);
	};
};

instance ITMI_SKULL(C_ITEM)
{
	name = "Czaszka";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 10;
	visual = "DT_SKELETON_V01_HEAD.3ds";
	material = MAT_LEATHER;
	description = name;
};

instance ITMI_IECELLO(C_ITEM)
{
	name = "Wiolonczela";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 1;
	visual = "Itmi_IE_Cello.3ds";
	material = MAT_WOOD;
	scemename = "CELLO";
	on_state[0] = use_cello;
	description = name;
};


func void use_cello()
{
};


instance ITMI_IECELLOBOW(C_ITEM)
{
	name = "Smyczek wiolonczeli";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 1;
	visual = "Itmi_IE_CelloBow.3ds";
	material = MAT_WOOD;
	description = name;
};

instance ITMI_IEDRUM(C_ITEM)
{
	name = "Bęben";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 1;
	visual = "Itmi_IE_Drum.3ds";
	material = MAT_WOOD;
	scemename = "PAUKE";
	on_state[0] = use_drum;
	description = name;
};


func void use_drum()
{
};


instance ITMI_IEDRUMSCHEIT(C_ITEM)
{
	name = "Trąba";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 1;
	visual = "Itmi_IE_Drumscheit.3ds";
	material = MAT_WOOD;
	scemename = "DRUMSCHEIT";
	on_state[0] = use_drumscheit;
	description = name;
};


func void use_drumscheit()
{
};


instance ITMI_IEDRUMSTICK(C_ITEM)
{
	name = "Pałeczka";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 1;
	visual = "Itmi_IE_DrumStick.3ds";
	material = MAT_WOOD;
	description = name;
};

instance ITMI_IEDUDELBLAU(C_ITEM)
{
	name = "Niebieskie dudy";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 1;
	visual = "Itmi_IE_DudelBlau.3ds";
	material = MAT_WOOD;
	scemename = "DUDEL";
	on_state[0] = use_dudel;
	description = name;
};


func void use_dudel()
{
};


instance ITMI_IEDUDELGELB(C_ITEM)
{
	name = "Żółte dudy";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 1;
	visual = "Itmi_IE_DudelGelb.3ds";
	material = MAT_WOOD;
	scemename = "DUDEL";
	on_state[0] = use_dudel;
	description = name;
};

instance ITMI_IEHARFE(C_ITEM)
{
	name = "Harfa";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 1;
	visual = "Itmi_IE_Harfe.3ds";
	material = MAT_WOOD;
	scemename = "HARFE";
	on_state[0] = use_harfe;
	description = name;
};


func void use_harfe()
{
};


instance ITMI_IELAUTE(C_ITEM)
{
	name = "Lutnia";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 1;
	visual = "Itmi_IE_Laute.3ds";
	material = MAT_WOOD;
	scemename = "IELAUTE";
	on_state[0] = use_laute;
	description = name;
};


func void use_laute()
{
};

instance ITMI_ZEITSPALT_ADDON(C_ITEM)
{
	name = "Czarna ruda";
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = 0;
	visual = "ItMi_Zeitspalt_Addon.3DS";
	scemename = "MAPSEALED";
	on_state[0] = use_zeitspalt_addon;
	material = MAT_STONE;
	wear = WEAR_EFFECT;
	effect = "SPELLFX_WEAKGLIMMER";
	description = name;
	text[3] = "Działanie nieznane.";
	inv_zbias = INVCAM_ENTF_MISC_STANDARD;
};


func void use_zeitspalt_addon()
{
	if(Npc_IsPlayer(self))
	{
		Wld_PlayEffect("spellFX_BELIARSRAGE",self,self,0,0,0,FALSE);
		Wld_StopEffect("SLOW_MOTION");
		Wld_PlayEffect("SLOW_MOTION",self,self,0,0,0,FALSE);
	};
};

