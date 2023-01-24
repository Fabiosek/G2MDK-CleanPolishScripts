var int rakeplace[50];
const int RAKE_BUDDEL_DIST_MAX = 300;
const int RAKE_BUDDEL_DIST_MIN = 200;

func void RakeTreasureSuccess(var C_Item itm)
{
	Wld_PlayEffect	("spellFX_ItemAusbuddeln", itm, itm, 0, 0, 0, false);
	B_Say_Overlay	(self, self, "$FOUNDTREASURE");
	B_GivePlayerXP	(XP_Ambient);
};

func void B_SCUsesRake(var C_Npc slf)
{
};

func void B_SCGetTreasure_S1()
{
	if (Hlp_GetInstanceID (self) == Hlp_GetInstanceID (hero))
	{
	};
};
