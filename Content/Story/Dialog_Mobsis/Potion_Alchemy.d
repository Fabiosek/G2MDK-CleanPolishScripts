
// ****************************************************
// POTIONALCHEMY_S1
// --------------
// Funktion wird durch Labortisch-Mobsi-Benutzung aufgerufen!
// ben�tigtes Item daf�r: ItMi_Flask
// *****************************************************
FUNC VOID POTIONALCHEMY_S1 ()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero); 
	
	if  (Hlp_GetInstanceID(self)==Hlp_GetInstanceID(her))
	{	
		self.aivar[AIV_INVINCIBLE]=TRUE;
		PLAYER_MOBSI_PRODUCTION	=	MOBSI_POTIONALCHEMY;
		Ai_ProcessInfos (her);
	};
}; 

//*******************************************************
//	PotionAlchemy Dialog abbrechen
//*******************************************************
INSTANCE PC_PotionAlchemy_End (C_Info)
{
	npc				= PC_Hero;
	nr				= 999;
	condition		= PC_PotionAlchemy_End_Condition;
	information		= PC_PotionAlchemy_End_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE; 
};

FUNC INT PC_PotionAlchemy_End_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (BoozeStart == FALSE)
	&& (TabakStart == FALSE)
	&& (HealthStart == FALSE)
	&& (ManaStart == FALSE)
	&& (SpecialStart == FALSE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_PotionAlchemy_End_Info()
{
	CreateInvItems (self, ItMi_Flask,1);
	B_ENDPRODUCTIONDIALOG ();
};
//*******************************************************
//Tr�nke herstellen  Dialoge 
//--------
//********************************************************



//*******************************************************
//Schnaps brennen 
//*******************************************************
var int BoozeStart;
//----------------------
INSTANCE PC_Booze_Start (C_Info)
{
	npc				= PC_Hero;
	nr				= 10;
	condition		= PC_Booze_Start_Condition;
	information		= PC_Booze_Start_Info;
	permanent		= TRUE;
	description		= "Destyluj gorza�k�"; 
};

FUNC INT PC_Booze_Start_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (BoozeStart == FALSE)
	&& (TabakStart == FALSE)
	&& (HealthStart == FALSE)
	&& (ManaStart == FALSE)
	&& (SpecialStart == FALSE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_Booze_Start_Info()
{
	BoozeStart = TRUE;
};
//*******************************************************
INSTANCE PC_Booze_Stop (C_Info)
{
	npc				= PC_Hero;
	nr				= 99;
	condition		= PC_Booze_Stop_Condition;
	information		= PC_Booze_Stop_Info;
	permanent		= TRUE;
	description		= DIALOG_BACK; 
};

FUNC INT PC_Booze_Stop_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (BoozeStart == TRUE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_Booze_Stop_Info()
{
	BoozeStart = FALSE;
};
//*******************************************************
INSTANCE PC_Booze_Lou (C_Info)
{
	npc				= PC_Hero;
	nr				= 5;
	condition		= PC_Booze_Lou_Condition;
	information		= PC_Booze_Lou_Info;
	permanent		= TRUE;
	description		= "Spr�buj przygotowa� M�ot Lou..."; 
};

FUNC INT PC_Booze_Lou_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (BoozeStart == TRUE)
	&& (Knows_LousHammer == TRUE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_Booze_Lou_Info()
{
	if (Npc_HasItems (self, ItPl_SwampHerb) >= 1)
	&& (Npc_HasItems (self, ItPl_Beet)		>= 2)
	&& (Npc_HasItems (self, ItAt_SharkTeeth)>= 1)
	&& (Npc_HasItems (self, ItFo_Addon_Rum) >= 1)
	{
		Npc_RemoveInvItems (self, ItPl_SwampHerb,1);
		Npc_RemoveInvItems (self, ItPl_Beet,2);
		Npc_RemoveInvItems (self, ItAt_SharkTeeth,1);
		Npc_RemoveInvItems (self, ItFo_Addon_Rum,1);
		
		Print (PRINT_AlchemySuccess);
		CreateInvItems (self, ItFo_Addon_LousHammer,1);
	}
	else
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_Flask,1);	
	};
	B_ENDPRODUCTIONDIALOG ();
};
//*******************************************************
INSTANCE PC_Booze_Schlaf (C_Info)
{
	npc				= PC_Hero;
	nr				= 6;
	condition		= PC_Booze_Schlaf_Condition;
	information		= PC_Booze_Schlaf_Info;
	permanent		= TRUE;
	description		= "M�ot Lou z podw�jn� zawarto�ci� rumu."; 
};

FUNC INT PC_Booze_Schlaf_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (BoozeStart == TRUE)
	&& (Knows_Schlafhammer == TRUE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_Booze_Schlaf_Info()
{
	if (Npc_HasItems (self, ItPl_SwampHerb) >= 1)
	&& (Npc_HasItems (self, ItPl_Beet)		>= 2)
	&& (Npc_HasItems (self, ItAt_SharkTeeth)>= 1)
	&& (Npc_HasItems (self, ItFo_Addon_Rum) >= 2)
	{
		Npc_RemoveInvItems (self, ItPl_SwampHerb,1);
		Npc_RemoveInvItems (self, ItPl_Beet,2);
		Npc_RemoveInvItems (self, ItAt_SharkTeeth,1);
		Npc_RemoveInvItems (self, ItFo_Addon_Rum,2);
		
		Print (PRINT_AlchemySuccess);
		CreateInvItems (self, ItFo_Addon_SchlafHammer,1);
	}
	else
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_Flask,1);	
	};
	B_ENDPRODUCTIONDIALOG ();
};

//********************************
INSTANCE PC_Booze_SchnellerHering (C_Info)
{
	npc				= PC_Hero;
	nr				= 5;
	condition		= PC_Booze_SchnellerHering_Condition;
	information		= PC_Booze_SchnellerHering_Info;
	permanent		= TRUE;
	description		= "Zmieszaj Szybkiego �ledzia."; 
};

FUNC INT PC_Booze_SchnellerHering_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (BoozeStart == TRUE)
	&& (Knows_SchnellerHering == TRUE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_Booze_SchnellerHering_Info()
{
	if (Npc_HasItems (self, ItPl_Speed_Herb_01) >= 1)
	&& (Npc_HasItems (self, ItFo_Fish) >= 1)
	&& (Npc_HasItems (self, ItFo_Addon_Rum) >= 1)
	{
		Npc_RemoveInvItems (self, ItPl_Speed_Herb_01,1);
		Npc_RemoveInvItems (self, ItFo_Addon_Rum,1);
		Npc_RemoveInvItems (self, ItFo_Fish,1);
		
		Print (PRINT_AlchemySuccess);
		CreateInvItems (self, ItFo_Addon_SchnellerHering,1);
	}
	else
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_Flask,1);	
	};
	B_ENDPRODUCTIONDIALOG ();
};	

//*******************************************************
//Mana Tr�nke 
//*******************************************************
var int ManaStart;
//----------------------
INSTANCE PC_Mana_Start (C_Info)
{
	npc				= PC_Hero;
	nr				= 6;
	condition		= PC_Mana_Start_Condition;
	information		= PC_Mana_Start_Info;
	permanent		= TRUE;
	description		= "Przygotuj mikstury many"; 
};

FUNC INT PC_Mana_Start_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (ManaStart == FALSE)
	&& (BoozeStart == FALSE)
	&& (TabakStart == FALSE)
	&& (HealthStart == FALSE)
	&& (SpecialStart == FALSE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_Mana_Start_Info()
{
	ManaStart = TRUE;
};
//*******************************************************
INSTANCE PC_Mana_Stop (C_Info)
{
	npc				= PC_Hero;
	nr				= 99;
	condition		= PC_Mana_Stop_Condition;
	information		= PC_Mana_Stop_Info;
	permanent		= TRUE;
	description		= DIALOG_BACK; 
};

FUNC INT PC_Mana_Stop_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (ManaStart == TRUE)
	{	
		return TRUE;
	};
};
FUNC VOID PC_Mana_Stop_Info()
{
	ManaStart = FALSE;
};
//*******************************************************
INSTANCE PC_ItPo_Mana_01 (C_INFO)
{
	nr       		= 2;
	npc				= PC_Hero;
	condition		= PC_ItPo_Mana_01_Condition;
	information		= PC_ItPo_Mana_01_Info;
	permanent		= TRUE;
	description		= "Esencja many (2 ogniste pokrzywy, 1 rdest polny)"; 
};

FUNC INT PC_ItPo_Mana_01_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (PLAYER_TALENT_ALCHEMY[POTION_Mana_01] == TRUE))
	&& (ManaStart == TRUE)
	{		
			return TRUE;
	};
};

FUNC VOID PC_ItPo_Mana_01_Info ()
{
	if (Npc_HasItems (hero, ItPl_Mana_Herb_01) >= 2) 
	&& (Npc_HasItems (hero, ItPl_Temp_Herb)    >= 1) 
	{
		Npc_RemoveInvItems (hero,ItPl_Mana_Herb_01,2);
		Npc_RemoveInvItems (hero,ItPl_Temp_Herb	  ,1);
		
		CreateInvItems 	   (hero,ItPo_Mana_01,1); 
		Print (PRINT_AlchemySuccess);
	}
		else 
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_Flask,1);
	};	
	B_ENDPRODUCTIONDIALOG ();
};

//*******************************************************
INSTANCE PC_ItPo_Mana_02 (C_INFO)
{
	nr       		= 3;
	npc				= PC_Hero;
	condition		= PC_ItPo_Mana_02_Condition;
	information		= PC_ItPo_Mana_02_Info;
	permanent		= TRUE;
	description		= "Ekstrakt many (2 ogniste ziela, 1 rdest polny) "; 
};
FUNC INT PC_ItPo_Mana_02_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (PLAYER_TALENT_ALCHEMY[POTION_Mana_02] == TRUE))
	&& (ManaStart == TRUE)
	{		
			return TRUE;
	};
};

FUNC VOID PC_ItPo_Mana_02_Info ()
{
	if (Npc_HasItems (hero, ItPl_Mana_Herb_02) >= 2) 
	&& (Npc_HasItems (hero, ItPl_Temp_Herb)    >= 1) 
	{
		Npc_RemoveInvItems (hero,ItPl_Mana_Herb_02,2);
		Npc_RemoveInvItems (hero,ItPl_Temp_Herb	  ,1);
		
		CreateInvItems	   (hero,ItPo_Mana_02,1);  
		Print (PRINT_AlchemySuccess);
	}
		else 
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_Flask,1);
	};	
	B_ENDPRODUCTIONDIALOG ();
};
//*******************************************************
INSTANCE PC_ItPo_Mana_03 (C_INFO)
{
	nr       		= 4;
	npc				= PC_Hero;
	condition		= PC_ItPo_Mana_03_Condition;
	information		= PC_ItPo_Mana_03_Info;
	permanent		= TRUE;
	description		= "Eliksir many (2 ogniste korzenie, 1 rdest polny)"; 
};

FUNC INT PC_ItPo_Mana_03_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (PLAYER_TALENT_ALCHEMY[POTION_Mana_03] == TRUE))
	&& (ManaStart == TRUE)
	{		
			return TRUE;
	};
};

FUNC VOID PC_ItPo_Mana_03_Info ()
{
	if (Npc_HasItems (hero, ItPl_Mana_Herb_03) >= 2) 
	&& (Npc_HasItems (hero, ItPl_Temp_Herb) 	  >= 1) 
	{
		Npc_RemoveInvItems (hero,ItPl_Mana_Herb_03,2);
		Npc_RemoveInvItems (hero,ItPl_Temp_Herb	  ,1);
		
		CreateInvItems	   (hero,ItPo_Mana_03,1);  
		Print (PRINT_AlchemySuccess);
	}
		else 
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_Flask,1);
	};	
	B_ENDPRODUCTIONDIALOG ();
};
//*******************************************************
INSTANCE PC_ItPo_Mana_04 (C_INFO)
{
	nr       		= 4;
	npc				= PC_Hero;
	condition		= PC_ItPo_Mana_04_Condition;
	information		= PC_ItPo_Mana_04_Info;
	permanent		= TRUE;
	description		= "Pe�nia many (3 esencje many, 1 rdest polny)"; 
};

FUNC INT PC_ItPo_Mana_04_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (PLAYER_TALENT_ALCHEMY[POTION_Mana_04] == TRUE))
	&& (ManaStart == TRUE)
	{		
			return TRUE;
	};
};

FUNC VOID PC_ItPo_Mana_04_Info ()
{
	if (Npc_HasItems (hero, ItPo_Mana_01) >= 3) 
	&& (Npc_HasItems (hero, ItPl_Temp_Herb) 	  >= 1) 
	{
		Npc_RemoveInvItems (hero,ItPo_Mana_01,3);
		Npc_RemoveInvItems (hero,ItPl_Temp_Herb	  ,1);
		
		CreateInvItems	   (hero,ItPo_Mana_Addon_04,1);  
		Print (PRINT_AlchemySuccess);
	}
		else 
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_Flask,1);
	};	
	B_ENDPRODUCTIONDIALOG ();
};
//*******************************************************
//Heiltr�nke 
//*******************************************************
var int HealthStart;
//----------------------
INSTANCE PC_Health_Start (C_Info)
{
	npc				= PC_Hero;
	nr				= 7;
	condition		= PC_Health_Start_Condition;
	information		= PC_Health_Start_Info;
	permanent		= TRUE;
	description		= "Przygotuj mikstury leczenia"; 
};

FUNC INT PC_Health_Start_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (HealthStart == FALSE)
	&& (BoozeStart == FALSE)
	&& (TabakStart == FALSE)
	&& (ManaStart == FALSE)
	&& (SpecialStart == FALSE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_Health_Start_Info()
{
	HealthStart = TRUE;
};
//*******************************************************
INSTANCE PC_Health_Stop (C_Info)
{
	npc				= PC_Hero;
	nr				= 99;
	condition		= PC_Health_Stop_Condition;
	information		= PC_Health_Stop_Info;
	permanent		= TRUE;
	description		= DIALOG_BACK; 
};

FUNC INT PC_Health_Stop_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (HealthStart == TRUE)
	{	
		return TRUE;
	};
};
FUNC VOID PC_Health_Stop_Info()
{
	HealthStart = FALSE;
};
//*******************************************************
INSTANCE PC_ItPo_Health_01 (C_INFO)
{
	nr       		= 2;
	npc				= PC_Hero;
	condition		= PC_ItPo_Health_01_Condition;
	information		= PC_ItPo_Health_01_Info;
	permanent		= TRUE;
	description		= "Esencja lecznicza (2 ro�liny lecznicze, 1 rdest polny)"; 
};

FUNC INT PC_ItPo_Health_01_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (PLAYER_TALENT_ALCHEMY[POTION_Health_01] == TRUE))
	&& (HealthStart == TRUE)
	{		
			return TRUE;
	};

};

FUNC VOID PC_ItPo_Health_01_Info ()
{
	if (Npc_HasItems (hero, ItPl_Health_Herb_01) >= 2) 
	&& (Npc_HasItems (hero, ItPl_Temp_Herb) 	 >= 1) 
	{
		Npc_RemoveInvItems (hero,ItPl_Health_Herb_01,2);
		Npc_RemoveInvItems (hero,ItPl_Temp_Herb	    ,1);
		
		CreateInvItem	   (hero,ItPo_Health_01);  
		Print (PRINT_AlchemySuccess);
	}
		else 
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_Flask,1);
	};	
	B_ENDPRODUCTIONDIALOG ();	
};
//*******************************************************
INSTANCE PC_ItPo_Health_02 (C_INFO)
{
	nr       		= 3;
	npc				= PC_Hero;
	condition		= PC_ItPo_Health_02_Condition;
	information		= PC_ItPo_Health_02_Info;
	permanent		= TRUE;
	description		= "Ekstrakt leczniczy (2 ziela lecznicze, 1 rdest polny)"; 
};

FUNC INT PC_ItPo_Health_02_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)  
	&& (PLAYER_TALENT_ALCHEMY[POTION_Health_02] == TRUE))
	&& (HealthStart == TRUE)
	{		
			return TRUE;
	};
};

FUNC VOID PC_ItPo_Health_02_Info ()
{
	if (Npc_HasItems (hero, ItPl_Health_Herb_02) >= 2) 
	&& (Npc_HasItems (hero, ItPl_Temp_Herb) 	 >= 1) 
	{
		Npc_RemoveInvItems (hero,ItPl_Health_Herb_02,2);
		Npc_RemoveInvItems (hero,ItPl_Temp_Herb	  	,1);
		
		CreateInvItems	   (hero,ItPo_Health_02,1);  
		Print (PRINT_AlchemySuccess);
	}
		else 
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_Flask,1);
	};	
	B_ENDPRODUCTIONDIALOG ();		
};
//*******************************************************
INSTANCE PC_ItPo_Health_03 (C_INFO)
{
	nr       		= 4;
	npc				= PC_Hero;
	condition		= PC_ItPo_Health_03_Condition;
	information		= PC_ItPo_Health_03_Info;
	permanent		= TRUE;
	description		= "Eliksir leczniczy (2 korzenie lecznicze, 1 rdest polny)"; 
};
FUNC INT PC_ItPo_Health_03_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)  
	&& (PLAYER_TALENT_ALCHEMY[POTION_Health_03] == TRUE))
	&& (HealthStart == TRUE)
	{		
			return TRUE;
	};
};

FUNC VOID PC_ItPo_Health_03_Info ()
{
	if (Npc_HasItems (hero, ItPl_Health_Herb_03) >= 2) 
	&& (Npc_HasItems (hero, ItPl_Temp_Herb) 	  	>= 1) 
	{
		Npc_RemoveInvItems (hero,ItPl_Health_Herb_03,2);
		Npc_RemoveInvItems (hero,ItPl_Temp_Herb	  	,1);
		
		CreateInvItems	   (hero,ItPo_Health_03,1);  
		Print (PRINT_AlchemySuccess);
	}
		else 
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_Flask,1);
	};	
	B_ENDPRODUCTIONDIALOG ();		
};
//*******************************************************
INSTANCE PC_ItPo_Health_04 (C_INFO)
{
	nr       		= 4;
	npc				= PC_Hero;
	condition		= PC_ItPo_Health_04_Condition;
	information		= PC_ItPo_Health_04_Info;
	permanent		= TRUE;
	description		= "Pe�nia �ycia (3 esencje lecznicze, 1 rdest polny)"; 
};
FUNC INT PC_ItPo_Health_04_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)  
	&& (PLAYER_TALENT_ALCHEMY[POTION_Health_04] == TRUE))
	&& (HealthStart == TRUE)
	{		
			return TRUE;
	};
};

FUNC VOID PC_ItPo_Health_04_Info ()
{
	if (Npc_HasItems (hero, ItPo_Health_01) >= 3) 
	&& (Npc_HasItems (hero, ItPl_Temp_Herb) 	  	>= 1) 
	{
		Npc_RemoveInvItems (hero,ItPo_Health_01,3);
		Npc_RemoveInvItems (hero,ItPl_Temp_Herb	  	,1);
		
		CreateInvItems	   (hero,ItPo_Health_Addon_04,1);  
		Print (PRINT_AlchemySuccess);
	}
		else 
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_Flask,1);
	};	
	B_ENDPRODUCTIONDIALOG ();		
};
//*******************************************************
//Spezielle Tr�nke 
//*******************************************************
var int SpecialStart;
//----------------------
INSTANCE PC_Special_Start (C_Info)
{
	npc				= PC_Hero;
	nr				= 9;
	condition		= PC_Special_Start_Condition;
	information		= PC_Special_Start_Info;
	permanent		= TRUE;
	description		= "Przygotuj mikstury specjalne"; 
};

FUNC INT PC_Special_Start_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (SpecialStart == FALSE)
	&& (BoozeStart == FALSE)
	&& (TabakStart == FALSE)
	&& (HealthStart == FALSE)
	&& (ManaStart == FALSE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_Special_Start_Info()
{
	SpecialStart = TRUE;
};
//*******************************************************
INSTANCE PC_Special_Stop (C_Info)
{
	npc				= PC_Hero;
	nr				= 99;
	condition		= PC_Special_Stop_Condition;
	information		= PC_Special_Stop_Info;
	permanent		= TRUE;
	description		= DIALOG_BACK; 
};

FUNC INT PC_Special_Stop_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (SpecialStart == TRUE)
	{	
		return TRUE;
	};
};
FUNC VOID PC_Special_Stop_Info()
{
	SpecialStart = FALSE;
};
//*******************************************************
INSTANCE PC_ItPo_Addon_Geist (C_INFO)
{
	nr       		= 2;
	npc				= PC_Hero;
	condition		= PC_ItPo_Addon_Geist_Condition;
	information		= PC_ItPo_Addon_Geist_Info;
	permanent		= TRUE;
	description		= "Mikstura przemiany duszy"; 
};

FUNC INT PC_ItPo_Addon_Geist_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (Knows_MCELIXIER == TRUE))
	&& (SpecialStart == TRUE)
	{		
			return TRUE;
	};
};

FUNC VOID PC_ItPo_Addon_Geist_Info ()
{
	if (Npc_HasItems (hero, ItAt_Sting) 		   >= 2) 
	&& (Npc_HasItems (hero, ItPo_Mana_02) 	  	   >= 1) 
	&& (Npc_HasItems (hero, ItPo_Health_01) 	   >= 1) 
	&& (Npc_HasItems (hero, ItFo_Addon_Pfeffer_01) >= 1) 
	{
		Npc_RemoveInvItems (hero,ItAt_Sting					,2);
		Npc_RemoveInvItems (hero,ItPo_Mana_02	  			,1);
		Npc_RemoveInvItems (hero,ItPo_Health_01	  			,1);
		Npc_RemoveInvItems (hero,ItFo_Addon_Pfeffer_01	  	,1);
		
		if (Knows_Bloodfly == TRUE)
		{
			CreateInvItems	   (hero,ItPo_Addon_Geist_02,1);  
		}
		else
		{
			CreateInvItems	   (hero,ItPo_Addon_Geist_01,1);  
		};
		Print (PRINT_AlchemySuccess);
	}
		else 
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_Flask,1);
	};	
	B_ENDPRODUCTIONDIALOG ();			
};
//*******************************************************
INSTANCE PC_ItPo_Perm_Health (C_INFO)
{
	nr       		= 3;
	npc				= PC_Hero;
	condition		= PC_ItPo_Perm_Health_Condition;
	information		= PC_ItPo_Perm_Health_Info;
	permanent		= TRUE;
	description		= "Eliksir �ycia (1 korze� leczniczy, 1 szczaw kr�lewski)"; 
};

FUNC INT PC_ItPo_Perm_Health_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (PLAYER_TALENT_ALCHEMY[POTION_Perm_Health] == TRUE))
	&& (SpecialStart == TRUE)
	{		
			return TRUE;
	};
};

FUNC VOID PC_ItPo_Perm_Health_Info ()
{
	if (Npc_HasItems (hero, ItPl_Health_Herb_03) 	>= 1) 
	&& (Npc_HasItems (hero, ItPl_Perm_Herb) 	  	>= 1) 
	{
		Npc_RemoveInvItems (hero,ItPl_Health_Herb_03,1);
		Npc_RemoveInvItems (hero,ItPl_Perm_Herb	  	,1);
		
		CreateInvItems	   (hero,ItPo_Perm_Health,1);  
		Print (PRINT_AlchemySuccess);
	}
		else 
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_Flask,1);
	};	
	B_ENDPRODUCTIONDIALOG ();			
};
//*******************************************************
INSTANCE PC_ItPo_Perm_Mana (C_INFO)
{
	nr       		= 3;
	npc				= PC_Hero;
	condition		= PC_ItPo_Perm_Mana_Condition;
	information		= PC_ItPo_Perm_Mana_Info;
	permanent		= TRUE;
	description		= "Eliksir ducha (1 ognisty korze�, 1 szczaw kr�lewski)"; 
};

FUNC INT PC_ItPo_Perm_Mana_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (PLAYER_TALENT_ALCHEMY[POTION_Perm_Mana] == TRUE))
	&& (SpecialStart == TRUE)
	{		
			return TRUE;
	};
};

FUNC VOID PC_ItPo_Perm_Mana_Info ()
{
	if (Npc_HasItems (hero, ItPl_Mana_Herb_03) 	  >= 1) 
	&& (Npc_HasItems (hero, ItPl_Perm_Herb) 	  >= 1) 
	{
		Npc_RemoveInvItems (hero,ItPl_Mana_Herb_03,1);
		Npc_RemoveInvItems (hero,ItPl_Perm_Herb	  ,1);
		
		CreateInvItems	   (hero,ItPo_Perm_Mana,1);  
		Print (PRINT_AlchemySuccess);
	}
		else 
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_Flask,1);
	};	
	B_ENDPRODUCTIONDIALOG ();			
};
//*******************************************************
INSTANCE PC_ItPo_Dex (C_INFO)
{
	nr       		= 3;
	npc				= PC_Hero;
	condition		= PC_ItPo_Dex_Condition;
	information		= PC_ItPo_Dex_Info;
	permanent		= TRUE;
	description		= "Mikstura zr�czno�ci (1 porcja goblinich jag�d, 1 szczaw kr�lewski)"; 
};

FUNC INT PC_ItPo_Dex_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (PLAYER_TALENT_ALCHEMY[POTION_Perm_DEX] == TRUE))
	&& (SpecialStart == TRUE)
	{		
			return TRUE;
	};
};

FUNC VOID PC_ItPo_Dex_Info ()
{
	if (Npc_HasItems (hero, ItPl_Dex_Herb_01) 		  >= 1) 
	&& (Npc_HasItems (hero, ItPl_Perm_Herb) 	  >= 1) 
	{
		Npc_RemoveInvItems (hero,ItPl_Dex_Herb_01	  , 1);
		Npc_RemoveInvItems (hero,ItPl_Perm_Herb	  , 1);
		
		CreateInvItems	   (hero,ItPo_Perm_Dex,1);  
		Print (PRINT_AlchemySuccess);
	}
		else 
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_Flask,1);
	};	
	B_ENDPRODUCTIONDIALOG ();		
};
//*******************************************************
INSTANCE PC_ItPo_Strg (C_INFO)
{
	nr       		= 3;
	npc				= PC_Hero;
	condition		= PC_ItPo_Strg_Condition;
	information		= PC_ItPo_Strg_Info;
	permanent		= TRUE;
	description		= "Mikstura si�y (1 smoczy korze�, 1 szczaw kr�lewski)"; 
};

FUNC INT PC_ItPo_Strg_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (PLAYER_TALENT_ALCHEMY[POTION_Perm_STR] == TRUE))
	&& (SpecialStart == TRUE)
	{		
			return TRUE;
	};
};

FUNC VOID PC_ItPo_Strg_Info ()
{
	if (Npc_HasItems (hero, ItPl_Strength_Herb_01)    >= 1) 
	&& (Npc_HasItems (hero, ItPl_Perm_Herb) 	   >= 1) 
	{
		Npc_RemoveInvItems (hero,ItPl_Strength_Herb_01, 1);
		Npc_RemoveInvItems (hero,ItPl_Perm_Herb	  ,1);
		
		CreateInvItems	   (hero,ItPo_Perm_STR,1);  
		Print (PRINT_AlchemySuccess);
	}
		else 
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_Flask,1);
	};	
	B_ENDPRODUCTIONDIALOG ();		
};
//*******************************************************
INSTANCE PC_ItPo_Speed (C_INFO)
{
	nr       		= 3;
	npc				= PC_Hero;
	condition		= PC_ItPo_Speed_Condition;
	information		= PC_ItPo_Speed_Info;
	permanent		= TRUE;
	description		= "Mikstura szybko�ci (1 z�bate ziele, 1 rdest polny)"; 
};

FUNC INT PC_ItPo_Speed_Condition()
{	
	if((PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (PLAYER_TALENT_ALCHEMY[POTION_Speed] == TRUE))
	&& (SpecialStart == TRUE)
	{		
			return TRUE;
	};
};

FUNC VOID PC_ItPo_Speed_Info ()
{
	if (Npc_HasItems (hero, ItPl_Speed_Herb_01) >= 1) 
	&& (Npc_HasItems (hero, ItPl_Temp_Herb)  >= 1) 
	{
		Npc_RemoveInvItems (hero,ItPl_Speed_Herb_01, 1);
		Npc_RemoveInvItems (hero,ItPl_Temp_Herb	 ,1);
		
		CreateInvItems	   (hero,ItPo_Speed,1);  
		Print (PRINT_AlchemySuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_Flask,1);
	};	
	B_ENDPRODUCTIONDIALOG ();		
};
//*******************************************************
//Tabak Verarbeitung
//*******************************************************
var int TabakStart;
//----------------------
INSTANCE PC_Tabak_Start (C_Info)
{
	npc				= PC_Hero;
	nr				= 11;
	condition		= PC_Tabak_Start_Condition;
	information		= PC_Tabak_Start_Info;
	permanent		= TRUE;
	description		= "Zmieszaj tyto� i zwi� �odygi"; 
};

FUNC INT PC_Tabak_Start_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (TabakStart == FALSE)
	&& (BoozeStart == FALSE)
	&& (HealthStart == FALSE)
	&& (ManaStart == FALSE)
	&& (SpecialStart == FALSE)
	{	
		return TRUE;
	};
};

FUNC VOID PC_Tabak_Start_Info()
{
	TabakStart = TRUE;
};
//*******************************************************
INSTANCE PC_Tabak_Stop (C_Info)
{
	npc				= PC_Hero;
	nr				= 99;
	condition		= PC_Tabak_Stop_Condition;
	information		= PC_Tabak_Stop_Info;
	permanent		= TRUE;
	description		= DIALOG_BACK; 
};

FUNC INT PC_Tabak_Stop_Condition ()
{
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY)
	&& (TabakStart == TRUE)
	{	
		return TRUE;
	};
};
FUNC VOID PC_Tabak_Stop_Info()
{
	TabakStart = FALSE;
};
//*******************************************************
//				Joint drehen
//*******************************************************
INSTANCE PC_ItMi_Joint (C_INFO)
{
	nr       		= 10;
	npc				= PC_Hero;
	condition		= PC_ItMi_Joint_Condition;
	information		= PC_ItMi_Joint_Info;
	permanent		= TRUE;
	description		= "Przekszta�cenie bagiennego ziela (1 �odyga)"; 
};

FUNC INT PC_ItMi_Joint_Condition()
{	
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (TabakStart == TRUE)
	{		
			return TRUE;
	};
};

FUNC VOID PC_ItMi_Joint_Info ()
{
	if (Npc_HasItems (hero, ItPl_SwampHerb) >= 1)
	{
		Npc_RemoveInvItems (hero,ItPl_SwampHerb	 ,1);
		CreateInvItems	   (hero,ItMi_Joint,1);  
	
		Print (PRINT_JointSuccess);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_Flask,1);
	};
	B_ENDPRODUCTIONDIALOG ();		
};
//*******************************************************
//	Gr�nen Novizen herstellen
//*******************************************************
INSTANCE PC_ItMi_Addon_Joint_01 (C_INFO)
{
	nr       		= 11;
	npc				= PC_Hero;
	condition		= PC_ItMi_Addon_Joint_01_Condition;
	information		= PC_ItMi_Addon_Joint_01_Info;
	permanent		= TRUE;
	description		= "Zr�b zielonego nowicjusza (1 �odyga)"; 
};

FUNC INT PC_ItMi_Addon_Joint_01_Condition()
{	
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (TabakStart == TRUE)
	&& (Green_Extrem == TRUE)
	{		
			return TRUE;
	};
};
FUNC VOID PC_ItMi_Addon_Joint_01_Info ()
{
	if (Npc_HasItems (hero, ItPl_SwampHerb) >= 2)
	&& (Npc_HasItems (hero, ItPl_Temp_Herb)  >= 1)
	{
		Npc_RemoveInvItems (hero,ItPl_SwampHerb	 ,2);
		Npc_RemoveInvItems (hero,ItPl_Temp_Herb	 ,1);
		CreateInvItems	   (hero,ItMi_Addon_Joint_01,1);  
	
		Print (PRINT_Addon_Joint_01_Success);
	}
	else 
	{
		Print (PRINT_ProdItemsMissing);
		CreateInvItems (self, ItMi_Flask,1);
	};
	B_ENDPRODUCTIONDIALOG ();		
};
//*******************************************************
//					Tabak mischen 
//*******************************************************
INSTANCE PC_ItMi_Tabak (C_INFO)
{
	nr       		= 10;
	npc				= PC_Hero;
	condition		= PC_ItMi_Tabak_Condition;
	information		= PC_ItMi_Tabak_Info;
	permanent		= TRUE;
	description		= "Zmieszanie tytoniu..."; 
};

FUNC INT PC_ItMi_Tabak_Condition()
{	
	if (PLAYER_MOBSI_PRODUCTION	==	MOBSI_POTIONALCHEMY) 
	&& (Npc_HasItems (hero, ItMi_ApfelTabak) >= 1)
	&& (TabakStart == TRUE)
	{		
			return TRUE;
	};
};

FUNC VOID PC_ItMi_Tabak_Info ()
{
	Npc_RemoveInvItems (hero,ItMi_ApfelTabak ,1);
	
	Info_ClearChoices (PC_ItMi_Tabak);
	
	Info_AddChoice 	(PC_ItMi_Tabak,DIALOG_BACK,PC_ItMi_Tabak_BACK);	
	
	if (Npc_HasItems (hero, ItFo_Honey) >=1)
	{
		Info_AddChoice 	(PC_ItMi_Tabak,"...z miodem",PC_ItMi_Tabak_Honey);
	};
	if (Npc_HasItems (hero, ItPl_SwampHerb) >=1)
	{
		Info_AddChoice 	(PC_ItMi_Tabak,"...z bagiennym zielem",PC_ItMi_Tabak_Swampherb);
	};
	if (Npc_HasItems (hero, ItPl_Mushroom_01) >=1)
	{
		Info_AddChoice 	(PC_ItMi_Tabak,"...z mu�owym grzybem",PC_ItMi_Tabak_Mushroom_01);
	};
	
};
FUNC VOID PC_ItMi_Tabak_BACK()
{
	Info_ClearChoices (PC_ItMi_Tabak);
};
FUNC VOID PC_ItMi_Tabak_Honey()
{
	CreateInvItems (hero, ItMi_Honigtabak,1 );
	Print (PRINT_TabakSuccess);
	
	B_ENDPRODUCTIONDIALOG ();		
};
FUNC VOID PC_ItMi_Tabak_Swampherb()
{
	CreateInvItems (hero,ItMi_SumpfTabak,1 );
	Print (PRINT_TabakSuccess);
	
	B_ENDPRODUCTIONDIALOG ();		
};
FUNC VOID PC_ItMi_Tabak_Mushroom_01()
{
	CreateInvItems (hero,ItMi_PilzTabak,1 );
	Print (PRINT_TabakSuccess);
	
	B_ENDPRODUCTIONDIALOG ();		
};