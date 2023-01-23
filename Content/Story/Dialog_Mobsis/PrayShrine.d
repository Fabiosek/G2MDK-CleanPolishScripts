var int PrayDay;
var string concatDonation;

var int Shrine_STR_Bonus;
var int Shrine_DEX_Bonus;
var int Shrine_MANA_Bonus;

//******************************************
// verwunschene Schreine ab Kapitel 3
//******************************************
var int SHRINEHEALING;
var int SHRINESHEALED;

// ****************************************************
// PrayShrine_S1
// --------------
// Funktion wird durch Shrine-Benutzung aufgerufen!
// *****************************************************
func void PrayShrine_S1 ()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID (self) == Hlp_GetInstanceID (her))
	{	
		self.aivar[AIV_INVINCIBLE]=true; 
		PLAYER_MOBSI_PRODUCTION	=	MOBSI_PrayShrine;
		Ai_ProcessInfos (her);
	};
};

//*******************************************************
//	PrayShrine Dialog abbrechen
//*******************************************************
instance PC_PrayShrine_End (C_Info)
{
	npc				= PC_Hero;
	nr				= 999;
	condition		= PC_PrayShrine_End_Condition;
	information		= PC_PrayShrine_End_Info;
	permanent		= true;
	description		= DIALOG_ENDE; 
};

func int PC_PrayShrine_End_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_PRAYSHRINE)
	{	
		return true;
	};
};

func void PC_PrayShrine_End_Info()
{
	B_ENDPRODUCTIONDIALOG ();
}; 

//*******************************************************
//	Beten
//*******************************************************
instance PC_PrayShrine_Pray (C_Info)
{
	npc				= PC_Hero;
	nr				= 2;
	condition		= PC_PrayShrine_Pray_Condition;
	information		= PC_PrayShrine_Pray_Info;
	permanent		= true;
	description		= "Módl siê"; 
};

func int PC_PrayShrine_Pray_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_PRAYSHRINE)
	{	
		return true;
	};
};

func void PC_PrayShrine_Pray_Info()
{	
	Info_ClearChoices 	(PC_PrayShrine_Pray);
	Info_AddChoice 		(PC_PrayShrine_Pray, Dialog_Back,PC_PrayShrine_Pray_Back);
	Info_AddChoice 		(PC_PrayShrine_Pray, "Chcê siê pomodliæ.", PC_PrayShrine_Pray_NoPay);
			
	if (Npc_HasItems (hero, ItMi_Gold) >= 10)
	{
		Info_AddChoice (PC_PrayShrine_Pray,"Chcê siê pomodliæ i z³o¿yæ ofiarê 10 sztuk z³ota.", PC_PrayShrine_Pray_SmallPay);
	};

	if (Npc_HasItems (hero, ItMi_Gold) >= 50)
	{
		Info_AddChoice (PC_PrayShrine_Pray,"Chcê siê pomodliæ i z³o¿yæ ofiarê 50 sztuk z³ota.", PC_PrayShrine_Pray_MediumPay);
	};

	if (Npc_HasItems (hero, ItMi_Gold) >= 100)
	{
		Info_AddChoice (PC_PrayShrine_Pray,"Chcê siê pomodliæ i z³o¿yæ ofiarê 100 sztuk z³ota.", PC_PrayShrine_Pray_BigPay);
	};
}; 

func void PC_PrayShrine_Pray_Back ()
{
	Info_ClearChoices (PC_PrayShrine_Pray);
};

//****************
//	0 Gold
//****************

func void PC_PrayShrine_Pray_NoPay ()
{
	var int zufall; zufall = Hlp_Random(100);

	// ----- Heute Schon gebetet? -----	
	if (PrayDay == Wld_GetDay())		
	{
		PrintScreen	(Print_BlessNone, -1, -1, FONT_SCREEN, 2);
	}
	else if (zufall < 5) //heute noch nicht gebetet
	{
		B_BlessAttribute (hero, ATR_HITPOINTS_MAX, 1);
	}
	else
	{
		PrintScreen	(Print_BlessNone, -1, -1, FONT_SCREEN, 2);
	};
	
	PrayDay = Wld_GetDay ();
	Info_ClearChoices (PC_PrayShrine_Pray);
};

//****************
//	10 Gold
//****************
func VOID PC_PrayShrine_Pray_SmallPay ()
{
	Npc_RemoveInvItems  (hero,ItMi_Gold, 10);
	
	if (PrayDay == Wld_GetDay())		
	{
		PrintScreen	(Print_BlessNone, -1, -1, FONT_SCREEN, 2);
	}
	else
	{
		B_BlessAttribute (hero, ATR_HITPOINTS_MAX, 1);
	};
	
	PrayDay = Wld_GetDay ();
	Info_ClearChoices (PC_PrayShrine_Pray);
};

//****************
//	50 Gold
//****************
func void PC_PrayShrine_Pray_MediumPay ()
{
	Npc_RemoveInvItems  (hero,ItMi_Gold, 50);
	
	// ----- Heute Schon gebetet? -----	
	if (PrayDay == Wld_GetDay())		
	{
		PrintScreen	(Print_BlessNone, -1, -1, FONT_SCREEN, 2);
	}
	else//heute noch nicht gebetet
	{
		B_BlessAttribute (hero, ATR_HITPOINTS_MAX, 2);
	};
	
	PrayDay = Wld_GetDay ();
	Info_ClearChoices (PC_PrayShrine_Pray);
};

//****************
//	100 Gold
//****************
func VOID PC_PrayShrine_Pray_BigPay ()
{
	var int zufall;	zufall = Hlp_Random(100);
	
	Npc_RemoveInvItems  (hero,ItMi_Gold, 100);
	
	// ----- Heute Schon gebetet? -----	
	if (PrayDay == Wld_GetDay())		
	{
		PrintScreen	(Print_BlessNone, -1, -1, FONT_SCREEN, 2);
	}
	else//heute noch nicht gebetet
	{
		if (Shrine_STR_Bonus < 10)
		&& (hero.guild != GIL_KDF)
		&& (hero.guild != GIL_NOV)
		&& (zufall < 50)
		{
			B_BlessAttribute (hero, ATR_STRENGTH, 1);
			Shrine_STR_Bonus += 1;
		}
		else if (Shrine_DEX_Bonus < 10)
		&& (hero.guild != GIL_KDF)
		&& (hero.guild != GIL_NOV)
		&& (zufall >= 50)
		{
			B_BlessAttribute (hero, ATR_DEXTERITY, 1);
			Shrine_DEX_Bonus += 1;
		}
		else if  (Shrine_MANA_Bonus < 20)
		&& (hero.guild != GIL_SLD)
		&& (hero.guild != GIL_DJG)
		{
			B_BlessAttribute (hero, ATR_MANA_MAX, 1);
			Shrine_MANA_Bonus += 1;
		}
		else
		{
			B_BlessAttribute (hero, ATR_HITPOINTS_MAX, 3);
		};
	};
	
	PrayDay = Wld_GetDay ();
	Info_ClearChoices (PC_PrayShrine_Pray);
};