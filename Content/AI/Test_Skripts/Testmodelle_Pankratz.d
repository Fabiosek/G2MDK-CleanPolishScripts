INSTANCE J1 (C_Item)
{	
	name 				=	"Monster auffüllen Addon world";
	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;
	value 				=	0;
	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseJOLY_Storyhelpletter;
	scemeName			=	"MAP";
	description			=   name;
};

var int UseJOLY_Storyhelpletter_OneTime;

func void UseJOLY_Storyhelpletter ()
{  
	Wld_InsertNpc 	(Giant_DesertRat, 	"ADW_CANYON_TELEPORT_PATH_03");
	Wld_InsertNpc 	(Giant_DesertRat, 	"ADW_CANYON_TELEPORT_PATH_03");

	Wld_InsertNpc 	(Giant_DesertRat, 	"ADW_CANYON_TELEPORT_PATH_04");

	Wld_InsertNpc 	(DragonSnapper, 	"ADW_CANYON_PATH_TO_LIBRARY_36");
	Wld_InsertNpc 	(DragonSnapper, 	"ADW_CANYON_PATH_TO_LIBRARY_36");

	Wld_InsertNpc 	(DragonSnapper, 	"ADW_CANYON_PATH_TO_BANDITS_31");


	Wld_InsertNpc 	(DragonSnapper, 	"ADW_CANYON_PATH_TO_MINE2_04");
	Wld_InsertNpc 	(DragonSnapper, 	"ADW_CANYON_PATH_TO_MINE2_04");

	Wld_InsertNpc 	(Troll, 	"ADW_CANYON_ORCS_02");

	Wld_InsertNpc 	(Troll, 	"ADW_CANYON_PATH_TO_MINE2_09");

	Wld_InsertNpc 	(DragonSnapper, 	"ADW_CANYON_PATH_TO_MINE2_06");

	Wld_InsertNpc 	(MinecrawlerWarrior, 	"ADW_CANYON_PATH_TO_BANDITS_26");
	Wld_InsertNpc 	(MinecrawlerWarrior, 	"ADW_CANYON_PATH_TO_BANDITS_24");
	Wld_InsertNpc 	(MinecrawlerWarrior, 	"ADW_CANYON_PATH_TO_BANDITS_66");

	Wld_InsertNpc 	(Skeletonmage, 	"ADW_CANYON_LIBRARY_STONIE_01");
	Wld_InsertNpc 	(Skeleton, 	"ADW_CANYON_LIBRARY_STONIE_02");
	Wld_InsertNpc 	(Skeleton, 	"ADW_CANYON_LIBRARY_STONIE_03");
	Wld_InsertNpc 	(Skeleton, 	"ADW_CANYON_LIBRARY_STONIE_04");
	Wld_InsertNpc 	(Skeleton, 	"ADW_CANYON_LIBRARY_STONIE_05");

	Wld_InsertNpc (FireWaran ,"ADW_ENTRANCE_2_VALLEY_05");

	Wld_InsertNpc (Waran ,"ADW_ENTRANCE_2_VALLEY_11");

	Wld_InsertNpc (DragonSnapper ,"ADW_ENTRANCE_PATH2BANDITS_10");
	Wld_InsertNpc (DragonSnapper ,"ADW_ENTRANCE_BEHINDAKROPOLIS_04");
	Wld_InsertNpc (DragonSnapper ,"ADW_ENTRANCE_BEHINDAKROPOLIS_04");

	Wld_InsertNpc (Swamprat ,"ADW_ENTRANCE_PATH2BANDITS_03");

	Wld_InsertNpc (Skeletonmage ,"ADW_PORTALTEMPEL_08B");
	Wld_InsertNpc (Skeleton ,"ADW_PORTALTEMPEL_08A");
	Wld_InsertNpc (DragonSnapper ,"ADW_ENTRANCE_2_PIRATECAMP_22");
	
	Wld_InsertNpc (Swampshark,"ADW_SWAMP_SHARKSTREET_02");
	Wld_InsertNpc (Swampshark,"ADW_SWAMP_SHARKSTREET_07");
	Wld_InsertNpc (Swampshark,"ADW_SWAMP_SHARKSTREET_09");
	Wld_InsertNpc (Swampshark,"ADW_SWAMP_SHARKSTREET_10");
	
	Wld_InsertNpc (Swampgolem,"ADW_SWAMP_LITTLE_SEA_01");
	Wld_InsertNpc (Bloodfly,"ADW_SWAMP_LITTLE_SEA_01");
	
	Wld_InsertNpc (Swampgolem,"ADW_SWAMP_LITTLE_SEA_02");
	Wld_InsertNpc (Bloodfly,"ADW_SWAMP_LITTLE_SEA_02");
	
	Wld_InsertNpc (Swampgolem,"ADW_SWAMP_LITTLE_SEA_03");
	Wld_InsertNpc (Bloodfly,"ADW_SWAMP_LITTLE_SEA_03");

	Wld_InsertNpc (MAYAZOMBIE01,"ADW_PFUETZE_01");
	Wld_InsertNpc (MAYAZOMBIE02,"ADW_PFUETZE_02");
	Wld_InsertNpc (MAYAZOMBIE03,"ADW_PFUETZE_03");
	Wld_InsertNpc (MAYAZOMBIE04,"ADW_PFUETZE_04");

	Wld_InsertNpc (MAYAZOMBIE04,"ADW_BANDIT_VP1_07_D");
	Wld_InsertNpc (MAYAZOMBIE01,"ADW_BANDIT_VP1_07_E");
	Wld_InsertNpc (MAYAZOMBIE02,"ADW_BANDIT_VP1_07_F");
	Wld_InsertNpc (MAYAZOMBIE03,"ADW_SWAMP_LITTLE_SEA_03_B");
	Wld_InsertNpc (MAYAZOMBIE04,"ADW_SWAMP_09_C");

	Wld_InsertNpc (Swampgolem,"ADW_SWAMP_10");
	Wld_InsertNpc (Swampgolem,"ADW_SWAMP_13");
	Wld_InsertNpc (Swampgolem,"ADW_SWAMP_14");

	Wld_InsertNpc (Swampshark,"ADW_SWAMP_HOHLWEG_03");
	Wld_InsertNpc (Swampshark,"ADW_SWAMP_HOHLWEG_04");
	
	Wld_InsertNpc (Skeleton,"ADW_SENAT_SIDE_01");
	Wld_InsertNpc (Skeleton,"ADW_SENAT_SIDE_02");
	Wld_InsertNpc (MAYAZOMBIE04,"ADW_SENAT_SIDE_03");
	Wld_InsertNpc (Skeleton,"ADW_SENAT_GUARDIAN_01");
	Wld_InsertNpc (MAYAZOMBIE01,"ADW_SENAT_GUARDIAN_02");

	Wld_InsertNpc (Swampdrone,"ADW_SWAMP_HILLS_DOWN_03");
	Wld_InsertNpc (Swampdrone,"ADW_SWAMP_15");
	Wld_InsertNpc (Swamprat,"ADW_HOHLWEG_CENTER");
	Wld_InsertNpc (Swampgolem,"FP_ROAM_BF_NEST_26");
	Wld_InsertNpc (Swamprat,"ADW_BANDITSCAMP_RAKEPLACE_03");
	Wld_InsertNpc (Swampdrone,"ADW_CANYON_PATH_TO_BANDITS_02");
	Wld_InsertNpc (Swampdrone,"ADW_PFUETZE_02");
	Wld_InsertNpc (Swampdrone,"ADW_SWAMP_LOCH_05");
	Wld_InsertNpc (Swampdrone,"ADW_SWAMP_LOCH_06");

	Wld_InsertNpc (Demon,"ADW_PIRATECAMP_LONEBEACH_CAVE_03");
	Wld_InsertNpc (Firewaran,"ADW_PIRATECAMP_LONEBEACH_05");

	Wld_InsertNpc (Lurker,"ADW_PIRATECAMP_WATERHOLE_04");

	Wld_InsertNpc (Gobbo_Warrior,"ADW_VALLEY_BIGCAVE_06");
	Wld_InsertNpc (DragonSnapper,"ADW_VALLEY_BIGCAVE_15");

	Wld_InsertNpc (DragonSnapper,"ADW_VALLEY_PATH_110");
	Wld_InsertNpc (DragonSnapper,"ADW_VALLEY_PATH_110");
	Wld_InsertNpc (DragonSnapper,"ADW_PIRATECAMP_WAY_07");

	Wld_InsertNpc (Warg,"ADW_ENTRANCE_2_PIRATECAMP_13");
	Wld_InsertNpc (Warg,"ADW_ENTRANCE_2_PIRATECAMP_13");

	Wld_InsertNpc (Gobbo_Warrior,"ADW_ENTRANCE_2_PIRATECAMP_13");
	Wld_InsertNpc (Gobbo_Warrior,"ADW_ENTRANCE_2_PIRATECAMP_13");
	Wld_InsertNpc (Gobbo_Warrior,"ADW_ENTRANCE_2_PIRATECAMP_13");
	Wld_InsertNpc (Gobbo_Warrior,"ADW_ENTRANCE_2_PIRATECAMP_13");

	Wld_InsertNpc (Gobbo_Warrior,"ADW_ENTRANCE_2_VALLEY_10");
	Wld_InsertNpc (Gobbo_Warrior,"ADW_ENTRANCE_2_VALLEY_10");
	Wld_InsertNpc (Gobbo_Warrior,"ADW_ENTRANCE_2_VALLEY_10");
	Wld_InsertNpc (Gobbo_Warrior,"ADW_ENTRANCE_2_VALLEY_10");
	Wld_InsertNpc (Gobbo_Warrior,"ADW_ENTRANCE_2_VALLEY_02A");
	Wld_InsertNpc (Gobbo_Warrior,"ADW_ENTRANCE_2_VALLEY_02A");


	Wld_InsertNpc (DragonSnapper,"ADW_VALLEY_PATH_020");
	Wld_InsertNpc (DragonSnapper,"ADW_VALLEY_BIGCAVE_01");
	Wld_InsertNpc (DragonSnapper,"ADW_VALLEY_PATH_048_A");

	Wld_InsertNpc (DragonSnapper,"ADW_VALLEY_PATH_047_D");
	Wld_InsertNpc (DragonSnapper,"ADW_VALLEY_PATH_047_D");

	Wld_InsertNpc (Scavenger_Demon,"ADW_VALLEY_PATH_047_G");
	Wld_InsertNpc (Scavenger_Demon,"ADW_VALLEY_PATH_047_G");
	Wld_InsertNpc (Scavenger_Demon,"ADW_VALLEY_PATH_038_E");
	Wld_InsertNpc (Scavenger_Demon,"ADW_VALLEY_PATH_038_E");
	Wld_InsertNpc (Scavenger_Demon,"ADW_VALLEY_PATH_038_J");


	Wld_InsertNpc (Skeletonmage,"ADW_VALLEY_PATH_131");
	Wld_InsertNpc (Shadowbeast_Addon_Fire,"ADW_VALLEY_PATH_131");
	Wld_InsertNpc (Skeletonmage,"ADW_VALLEY_PATH_132_A");
	Wld_InsertNpc (Skeleton,"ADW_VALLEY_PATH_132_A");
	Wld_InsertNpc (Skeleton,"ADW_VALLEY_PATH_134");
	Wld_InsertNpc (Skeleton,"ADW_VALLEY_PATH_134");
	Wld_InsertNpc (Skeleton,"ADW_VALLEY_PATH_135");

	Wld_InsertNpc (Shadowbeast_Addon_Fire,"ADW_VALLEY_PATH_072");
	Wld_InsertNpc (Skeleton,"ADW_VALLEY_PATH_072");
	Wld_InsertNpc (Skeleton,"ADW_VALLEY_PATH_073");
	Wld_InsertNpc (Shadowbeast_Addon_Fire,"ADW_VALLEY_PATH_072");
	Wld_InsertNpc (Skeleton,"ADW_VALLEY_PATH_073");
	Wld_InsertNpc (Skeleton,"ADW_VALLEY_PATH_073");

	Wld_InsertNpc 	(DragonSnapper,"ADW_CANYON_PATH_TO_MINE1_05");
	Wld_InsertNpc 	(DragonSnapper,"ADW_CANYON_PATH_TO_MINE1_05");
	Wld_InsertNpc 	(DragonSnapper, 	"ADW_CANYON_MINE1_01");
	Wld_InsertNpc 	(DragonSnapper, 	"ADW_CANYON_MINE1_01");
	Wld_InsertNpc 	(DragonSnapper, 	"ADW_CANYON_MINE1_01");

	Wld_InsertNpc 	(DragonSnapper, 	"ADW_CANYON_PATH_TO_LIBRARY_31A");
	Wld_InsertNpc 	(DragonSnapper, 	"ADW_CANYON_PATH_TO_LIBRARY_31A");

	Wld_InsertNpc 	(Firewaran, 	"ADW_CANYON_PATH_TO_BANDITS_55");
	Wld_InsertNpc 	(Firewaran, 	"ADW_CANYON_PATH_TO_BANDITS_55");

	Wld_InsertNpc 	(orcbiter, 	"ADW_CANYON_PATH_TO_BANDITS_52");
	Wld_InsertNpc 	(orcbiter, 	"ADW_CANYON_PATH_TO_BANDITS_52");
	Wld_InsertNpc 	(Troll, 	"ADW_CANYON_PATH_TO_LIBRARY_17");
	Wld_InsertNpc 	(Troll, 	"ADW_CANYON_PATH_TO_LIBRARY_16A");

	Wld_InsertNpc 	(orcbiter, 	"ADW_CANYON_ORCS_09");
	Wld_InsertNpc 	(orcbiter, 	"ADW_CANYON_ORCS_09");
	Wld_InsertNpc 	(Firewaran, 	"ADW_CANYON_PATH_TO_LIBRARY_07A");
	Wld_InsertNpc 	(Firewaran, 	"ADW_CANYON_PATH_TO_LIBRARY_07A");
	Wld_InsertNpc 	(Blattcrawler, 	"ADW_CANYON_TELEPORT_PATH_09");
	Wld_InsertNpc 	(Blattcrawler, 	"ADW_CANYON_TELEPORT_PATH_09");
	Wld_InsertNpc 	(Blattcrawler, 	"ADW_CANYON_TELEPORT_PATH_09");

	Wld_InsertNpc (DragonSnapper ,"ADW_ENTRANCE_PATH2BANDITS_05P");
	Wld_InsertNpc (DragonSnapper ,"ADW_ENTRANCE_PATH2BANDITS_05P");
 	
 	Wld_InsertNpc (Swampgolem ,"ADW_ENTRANCE_PATH2BANDITS_05");
	Wld_InsertNpc (Troll ,"ADW_CANYON_PATH_TO_BANDITS_20");
	
	Wld_InsertNpc 	(MinecrawlerWarrior, 			"ADW_CANYON_PATH_TO_BANDITS_21");
	Wld_InsertNpc 	(MinecrawlerWarrior, 			"ADW_CANYON_PATH_TO_BANDITS_17");
	Wld_InsertNpc 	(MinecrawlerWarrior, 	"ADW_CANYON_PATH_TO_BANDITS_14");
	Wld_InsertNpc 	(MinecrawlerWarrior, 			"ADW_CANYON_PATH_TO_BANDITS_62");
	Wld_InsertNpc 	(MinecrawlerWarrior, 			"ADW_CANYON_PATH_TO_BANDITS_19");
};
	
INSTANCE J2 (C_Item)
{	
	name 				=	"Greg_Taverne";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseJOLY2_Storyhelpletter;
	scemeName			=	"MAP";
	description			=   name;
};

func void UseJOLY2_Storyhelpletter ()
{   
	//B_StartOtherRoutine	(PIR_1300_Addon_Greg_NW,"Taverne");
	GregLocation = Greg_Taverne;
};
/*	
	PLAYER_TALENT_WISPDETECTOR[WISPSKILL_FF] 			= TRUE;
	PLAYER_TALENT_WISPDETECTOR[WISPSKILL_NONE] 			= TRUE;
	PLAYER_TALENT_WISPDETECTOR[WISPSKILL_RUNE] 			= TRUE;
	PLAYER_TALENT_WISPDETECTOR[WISPSKILL_FOOD] 			= TRUE;
	PLAYER_TALENT_WISPDETECTOR[WISPSKILL_POTIONS] 		= TRUE;
	B_StartOtherRoutine	(KDW_1400_Addon_Saturas_NW,"OpenPortal");
	B_StartOtherRoutine	(KDW_1401_Addon_Cronos_NW,"OpenPortal");
	B_StartOtherRoutine	(KDW_1402_Addon_Nefarius_NW,"OpenPortal");
	B_StartOtherRoutine	(KDW_1403_Addon_Myxir_NW,"OpenPortal");
	B_StartOtherRoutine	(KDW_1404_Addon_Riordian_NW,"OpenPortal");
	B_StartOtherRoutine	(KDW_1405_Addon_Merdarion_NW,"OpenPortal");*/


INSTANCE J3 (C_Item)
{	
	name 				=	"ADW_ADANOSTEMPEL_RemovedFocus";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseJ3;
	scemeName			=	"MAP";
	description			=   name;
};
func void UseJ3 ()
{   
};
INSTANCE J4 (C_Item)
{	
	name 				=	"ADW_PIRATES_RemovedFocus und letzte";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseJ4;
	scemeName			=	"MAP";
	description			=   name;
};
func void UseJ4 ()
{   
};

INSTANCE DJG_inserten (C_Item)
{	
	name 				=	"JOLY_Storyhelpletter";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseDJG_inserten;
	scemeName			=	"MAP";
	description			=   "JOLY_Storyhelpletter";
};
func void UseDJG_inserten ()
{   
//************************************************************
//			Befehle fürs JOLY_Storyhelpletter
//************************************************************
//B_Kapitelwechsel(1, NewWorld_Zen );
//B_GiveTradeInv (1);
//MIS_Torlof_BengarMilizKlatschen = LOG_RUNNING;
B_Kapitelwechsel (4, OLDWORLD_ZEN );
B_InitNpcGlobals ();
PLAYER_TALENT_ALCHEMY[Charge_InnosEye] 		= TRUE;	
CreateInvItems (hero, ItMi_InnosEye_MIS, 1); 
CreateInvItems (hero, ItMi_gold, 1000); 
		
};

	/*	




//#####################################################################
//##
//##
//##							KAPITEL 3
//##
//##
//#####################################################################

// ************************************************************
// 	  				   EXIT KAP3
// ************************************************************

INSTANCE DIA_Namefehlt_KAP3_EXIT(C_INFO)
{
	npc			= Instancefehlt;
	nr			= 999;
	condition	= DIA_Namefehlt_KAP3_EXIT_Condition;
	information	= DIA_Namefehlt_KAP3_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       
FUNC INT DIA_Namefehlt_KAP3_EXIT_Condition()
{
	if (Kapitel == 3)	
	{
		return TRUE;
	};
};
FUNC VOID DIA_Namefehlt_KAP3_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};


//#####################################################################
//##
//##
//##							KAPITEL 4
//##
//##
//#####################################################################


// ************************************************************
// 	  				   EXIT KAP4
// ************************************************************

INSTANCE DIA_Namefehlt_KAP4_EXIT(C_INFO)
{
	npc			= Instancefehlt;
	nr			= 999;
	condition	= DIA_Namefehlt_KAP4_EXIT_Condition;
	information	= DIA_Namefehlt_KAP4_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       
FUNC INT DIA_Namefehlt_KAP4_EXIT_Condition()
{
	if (Kapitel == 4)	
	{
		return TRUE;
	};
};
FUNC VOID DIA_Namefehlt_KAP4_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};


//#####################################################################
//##
//##
//##							KAPITEL 5
//##
//##
//#####################################################################

// ************************************************************
// 	  				   EXIT KAP4
// ************************************************************

INSTANCE DIA_Namefehlt_KAP5_EXIT(C_INFO)
{
	npc			= Instancefehlt;
	nr			= 999;
	condition	= DIA_Namefehlt_KAP5_EXIT_Condition;
	information	= DIA_Namefehlt_KAP5_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       
FUNC INT DIA_Namefehlt_KAP5_EXIT_Condition()
{
	if (Kapitel == 5)	
	{
		return TRUE;
	};
};
FUNC VOID DIA_Namefehlt_KAP5_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};


//#####################################################################
//##
//##
//##							KAPITEL 6
//##
//##
//#####################################################################



INSTANCE DIA_Namefehlt_KAP6_EXIT(C_INFO)
{
	npc			= Instancefehlt;
	nr			= 999;
	condition	= DIA_Namefehlt_KAP6_EXIT_Condition;
	information	= DIA_Namefehlt_KAP6_EXIT_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       
FUNC INT DIA_Namefehlt_KAP6_EXIT_Condition()
{
	if (Kapitel == 6)	
	{
		return TRUE;
	};
};
FUNC VOID DIA_Namefehlt_KAP6_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};




	*/	




//**************************************
//Storyhelper light für die Oldworld //Joly: steht wegen verwechslungsgefahr!
//**************************************
INSTANCE SH_Oldworld (NPC_DEFAULT)
{
// ------ NSC ------
	name 		= "Storyhelper Oldworld";
	guild 		= GIL_NONE;
	id 			= 9998;
	voice 		= 15;
	flags       = 0 ;																
	npctype		= NPCTYPE_FRIEND ;
	
	// ------ Attribute ------
	B_SetAttributesToChapter (self, 1);																	
	
	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);
	
	// ------ Kampf-Talente ------																		
	//B_SetFightSkills (self, 70); 
		
	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_MASTER;	
	
	// ------ Equippte Waffen ------		
	
	
	// ------ Inventory ------
	B_CreateAmbientInv 	(self);

		
	// ------ visuals ------				
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Pony", FACE_N_Player, bodyTex_Player, -1);		
	Mdl_SetModelFatness	(self, 0);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); 

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_9998;
};

FUNC VOID Rtn_Start_9998 ()
{	
	TA_Stand_ArmsCrossed(08,00,23,00,"XXX");
    TA_Stand_ArmsCrossed(23,00,08,00,"XXX");
};
//***************************************************************************
//	Rahmen-Infos
//***************************************************************************
instance  SH_Oldworld_Exit (C_INFO)
{
	npc			=  SH_Oldworld;
	nr			=  999;
	condition	=  SH_Oldworld_Exit_Condition;
	information	=  SH_Oldworld_Exit_Info;
	important	=  0;	
	permanent	=  1;
	description = 	DIALOG_ENDE;
};                       

FUNC int  SH_Oldworld_Exit_Condition()
{
	return 1;
};

FUNC VOID  SH_Oldworld_Exit_Info()
{
	AI_StopProcessInfos	( self );
};

//**************************************************************************
//								KAPITEL 1
//							--------------------
//***************************************************************************
INSTANCE SH_Oldworld_INFO1 (C_INFO)
{
	npc				= SH_Oldworld;
	condition		= SH_Oldworld_INFO1_Condition;
	information		= SH_Oldworld_INFO1_Info;
	important		= 0;
	permanent		= 1;
	description		= "Kapitel 1"; 
};

FUNC INT SH_Oldworld_INFO1_Condition()
{		
	return TRUE;
};

func VOID SH_Oldworld_INFO1_Info()
{

	Info_ClearChoices	( SH_Oldworld_INFO1 );
	Info_AddChoice		( SH_Oldworld_INFO1, DIALOG_BACK			                			, SH_Oldworld_BACK1);
	Info_AddChoice		( SH_Oldworld_INFO1, "KAPITELANFANG"			                			, SH_Oldworld_KAPITEL1ANFANG);
};
//---------------------------------------------------------------------
//	BACK
//---------------------------------------------------------------------
FUNC VOID SH_Oldworld_BACK1()
{
	Info_ClearChoices	( SH_Oldworld_INFO1 );
};	
//---------------------------------------------------------------------
//	Kapitelanfang
//---------------------------------------------------------------------
FUNC VOID SH_Oldworld_KAPITEL1ANFANG()
{
	//-------- was davor geschah --------	

	//-------- was neu geschieht --------	

	B_Kapitelwechsel		(1, OLDWORLD_ZEN );
	
	
	//-------- Menü --------	
	//Info_ClearChoices	( SH_Oldworld_INFO1 );
	AI_StopProcessInfos	( self );
};
//**************************************************************************
//								KAPITEL 2
//							--------------------
//***************************************************************************
INSTANCE SH_Oldworld_INFO2 (C_INFO)
{
	npc				= SH_Oldworld;
	condition		= SH_Oldworld_INFO2_Condition;
	information		= SH_Oldworld_INFO2_Info;
	important		= 0;
	permanent		= 1;
	description		= "Kapitel 2"; 
};

FUNC INT SH_Oldworld_INFO2_Condition()
{		
	return TRUE;
};

func VOID SH_Oldworld_INFO2_Info()
{

	Info_ClearChoices	( SH_Oldworld_INFO2 );
	Info_AddChoice		( SH_Oldworld_INFO2, DIALOG_BACK			                			, SH_Oldworld_BACK2);
	Info_AddChoice		( SH_Oldworld_INFO2, "KAPITELANFANG"			                			, SH_Oldworld_KAPITEL2ANFANG);
};
//---------------------------------------------------------------------
//	BACK
//---------------------------------------------------------------------
FUNC VOID SH_Oldworld_BACK2()
{
	Info_ClearChoices	( SH_Oldworld_INFO2 );
};	
//---------------------------------------------------------------------
//	Kapitelanfang
//---------------------------------------------------------------------
FUNC VOID SH_Oldworld_KAPITEL2ANFANG()
{
	//-------- was davor geschah --------	

	//-------- was neu geschieht --------	
	MIS_OLDWORLD = LOG_RUNNING;
	B_Kapitelwechsel		(2, OLDWORLD_ZEN );
	
	
	//-------- Menü --------	
	//Info_ClearChoices	( SH_Oldworld_INFO2 );
	AI_StopProcessInfos	( self );
};

//**************************************************************************
//								KAPITEL 3
//							--------------------
//***************************************************************************
INSTANCE SH_Oldworld_INFO3 (C_INFO)
{
	npc				= SH_Oldworld;
	condition		= SH_Oldworld_INFO3_Condition;
	information		= SH_Oldworld_INFO3_Info;
	important		= 0;
	permanent		= 1;
	description		= "Kapitel 3"; 
};

FUNC INT SH_Oldworld_INFO3_Condition()
{		
	return TRUE;
};

func VOID SH_Oldworld_INFO3_Info()
{

	Info_ClearChoices	( SH_Oldworld_INFO3 );
	Info_AddChoice		( SH_Oldworld_INFO3, DIALOG_BACK			                			, SH_Oldworld_BACK3);
	Info_AddChoice		( SH_Oldworld_INFO3, "KAPITELANFANG"			                			, SH_Oldworld_KAPITEL3ANFANG);
};
//---------------------------------------------------------------------
//	BACK
//---------------------------------------------------------------------
FUNC VOID SH_Oldworld_BACK3()
{
	Info_ClearChoices	( SH_Oldworld_INFO3 );
};	
//---------------------------------------------------------------------
//	Kapitelanfang
//---------------------------------------------------------------------
FUNC VOID SH_Oldworld_KAPITEL3ANFANG()
{
	//-------- was davor geschah --------	
	MIS_OLDWORLD = LOG_RUNNING;
	//-------- was neu geschieht --------
	CreateInvItems (hero,ItWr_PaladinLetter_MIS,1);
	KnowsPaladins_Ore = TRUE;
	MIS_ScoutMine = LOG_SUCCESS;
	MIS_ReadyForChapter3  = TRUE; 
	B_NPC_IsAliveCheck (OldWorld_Zen);
	B_Kapitelwechsel		(3, OLDWORLD_ZEN );	

	
	//-------- Menü --------	
	Info_ClearChoices	( SH_Oldworld_INFO3 );
	AI_StopProcessInfos	( self );
};

//**************************************************************************
//								KAPITEL 4
//							--------------------
//***************************************************************************
INSTANCE SH_Oldworld_INFO4 (C_INFO)
{
	npc				= SH_Oldworld;
	condition		= SH_Oldworld_INFO4_Condition;
	information		= SH_Oldworld_INFO4_Info;
	important		= 0;
	permanent		= 1;
	description		= "Kapitel 4"; 
};

FUNC INT SH_Oldworld_INFO4_Condition()
{		
	return TRUE;
};

func VOID SH_Oldworld_INFO4_Info()
{

	Info_ClearChoices	( SH_Oldworld_INFO4 );
	Info_AddChoice		( SH_Oldworld_INFO4, DIALOG_BACK			                			, SH_Oldworld_BACK4);
	Info_AddChoice		( SH_Oldworld_INFO4, "KAPITELANFANG"			                			, SH_Oldworld_KAPITEL4ANFANG);
};
//---------------------------------------------------------------------
//	BACK
//---------------------------------------------------------------------
FUNC VOID SH_Oldworld_BACK4()
{
	Info_ClearChoices	( SH_Oldworld_INFO4 );
};	
//---------------------------------------------------------------------
//	Kapitelanfang
//---------------------------------------------------------------------
FUNC VOID SH_Oldworld_KAPITEL4ANFANG()
{
	//-------- was davor geschah --------	

	//-------- was neu geschieht --------	
	//-------- was davor geschah --------	
	MIS_OLDWORLD = LOG_RUNNING;
	//-------- was neu geschieht --------
	CreateInvItems (hero,ItWr_PaladinLetter_MIS,1);
	KnowsPaladins_Ore = TRUE;
	MIS_ScoutMine = LOG_SUCCESS;
	MIS_ReadyForChapter3  = TRUE; 
	B_NPC_IsAliveCheck (OldWorld_Zen);
	B_Kapitelwechsel		(3, OLDWORLD_ZEN );
	
	//-------- was neu geschieht --------	
	PLAYER_TALENT_ALCHEMY[Charge_InnosEye] 		= TRUE;	
	PrintScreen	(PRINT_LearnAlchemyInnosEye, -1, -1, FONT_Screen, 2);
	CreateInvItems (self,ItMi_InnosEye_MIS,1);
	MIS_ReadyforChapter4 = TRUE; 
	B_NPC_IsAliveCheck (OLDWORLD_ZEN);
	B_Kapitelwechsel		(4, OLDWORLD_ZEN );
	
	//-------- Menü --------	
	Info_ClearChoices	( SH_Oldworld_INFO4 );
	AI_StopProcessInfos	( self );
};

//**************************************************************************
//								KAPITEL 5
//							--------------------
//***************************************************************************
INSTANCE SH_Oldworld_INFO5 (C_INFO)
{
	npc				= SH_Oldworld;
	condition		= SH_Oldworld_INFO5_Condition;
	information		= SH_Oldworld_INFO5_Info;
	important		= 0;
	permanent		= 1;
	description		= "Kapitel 5"; 
};

FUNC INT SH_Oldworld_INFO5_Condition()
{		
	return TRUE;
};

func VOID SH_Oldworld_INFO5_Info()
{

	Info_ClearChoices	( SH_Oldworld_INFO5 );
	Info_AddChoice		( SH_Oldworld_INFO5, DIALOG_BACK			                			, SH_Oldworld_BACK5);
	Info_AddChoice		( SH_Oldworld_INFO5, "KAPITELANFANG"			                			, SH_Oldworld_KAPITEL5ANFANG);
};
//---------------------------------------------------------------------
//	BACK
//---------------------------------------------------------------------
FUNC VOID SH_Oldworld_BACK5()
{
	Info_ClearChoices	( SH_Oldworld_INFO5 );
};	
//---------------------------------------------------------------------
//	Kapitelanfang
//---------------------------------------------------------------------
FUNC VOID SH_Oldworld_KAPITEL5ANFANG()
{
	//-------- was davor geschah --------	

	//-------- was neu geschieht --------	
	MIS_OLDWORLD = LOG_RUNNING;
	//-------- was neu geschieht --------
	CreateInvItems (hero,ItWr_PaladinLetter_MIS,1);
	KnowsPaladins_Ore = TRUE;
	MIS_ScoutMine = LOG_SUCCESS;
	MIS_ReadyForChapter3  = TRUE; 
	B_NPC_IsAliveCheck (OldWorld_Zen);
	B_Kapitelwechsel		(3, OLDWORLD_ZEN );
	
	//-------- was neu geschieht --------	
	PLAYER_TALENT_ALCHEMY[Charge_InnosEye] 		= TRUE;	
	PrintScreen	(PRINT_LearnAlchemyInnosEye, -1, -1, FONT_Screen, 2);
	CreateInvItems (hero,ItMi_InnosEye_MIS,1);
	MIS_ReadyforChapter4 = TRUE; 
	B_NPC_IsAliveCheck (OLDWORLD_ZEN);
	B_Kapitelwechsel		(4, OLDWORLD_ZEN );
	//-------- was neu geschieht --------
	CreateInvItems (hero,ItAt_IcedragonHeart,1);			//damit man eins für die DI hat!!
	MIS_AllDragonsDead = TRUE;
	//EnterNW_Kapitel5 = TRUE;	
	B_Kapitelwechsel		(5, OLDWORLD_ZEN );
	
	//-------- Menü --------	
	Info_ClearChoices	( SH_Oldworld_INFO5 );
	AI_StopProcessInfos	( self );
};

//**************************************************************************
//								KAPITEL 6
//							--------------------
//***************************************************************************
INSTANCE SH_Oldworld_INFO6 (C_INFO)
{
	npc				= SH_Oldworld;
	condition		= SH_Oldworld_INFO6_Condition;
	information		= SH_Oldworld_INFO6_Info;
	important		= 0;
	permanent		= 1;
	description		= "Kapitel 6"; 
};

FUNC INT SH_Oldworld_INFO6_Condition()
{		
	return TRUE;
};

func VOID SH_Oldworld_INFO6_Info()
{

	Info_ClearChoices	( SH_Oldworld_INFO6 );
	Info_AddChoice		( SH_Oldworld_INFO6, DIALOG_BACK			                			, SH_Oldworld_BACK6);
	Info_AddChoice		( SH_Oldworld_INFO6, "KAPITELANFANG"			                			, SH_Oldworld_KAPITEL6ANFANG);
};
//---------------------------------------------------------------------
//	BACK
//---------------------------------------------------------------------
FUNC VOID SH_Oldworld_BACK6()
{
	Info_ClearChoices	( SH_Oldworld_INFO6 );
};	
//---------------------------------------------------------------------
//	Kapitelanfang
//---------------------------------------------------------------------
FUNC VOID SH_Oldworld_KAPITEL6ANFANG()
{
	//-------- was davor geschah --------	

	//-------- was neu geschieht --------	
	B_Kapitelwechsel		(6, OLDWORLD_ZEN );
	
	//-------- Menü --------	
	Info_ClearChoices	( SH_Oldworld_INFO6 );
	AI_StopProcessInfos	( self );
};

	/*	
instance PC_Hero (NPC_DEFAULT)
{
	// ------ SC ------
	name 		= "Ich der Drachenjäger";
	guild		= GIL_DJG;
	id			= 0;
	voice		= 15;
	level		= 30;
	Npctype		= NPCTYPE_MAIN;
	
	//***************************************************
	bodyStateInterruptableOverride 	= TRUE;
	//***************************************************
	
	// ------ XP Setup ------
	exp				= 0;
	exp_next		= 500;
	lp				= 0;
	
	// ------ Attribute ------
	attribute[ATR_STRENGTH] 		= 60;   
	attribute[ATR_DEXTERITY] 		= 40;     
	attribute[ATR_MANA_MAX] 		= 30;
	attribute[ATR_MANA] 			= 20;
	attribute[ATR_HITPOINTS_MAX]	= 660;    
	attribute[ATR_HITPOINTS] 		= 660;    
	
	// ------ Kampf-Talente ------
	B_SetFightSkills 	(self, 50); 
	
	EquipItem			(self, ItMw_2h_Sld_Axe); 
	CreateInvItems (self, itmi_gold, 100);
	CreateInvItems (self, itrw_bolt, 100);
	
	EquipItem (self, ItMw_1h_Vlk_Sword);
	EquipItem (self, ItRw_Crossbow_L_01);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Pony", FACE_N_Player, BodyTex_N, ITAR_DJG_M);		
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed
	
};	
	
instance PC_Hero (NPC_DEFAULT)
{
	// ------ SC ------
	name 		= "Ich der Magier";
	guild		= GIL_KDF;
	id			= 0;
	voice		= 15;
	level		= 30;
	Npctype		= NPCTYPE_MAIN;
	
	//***************************************************
	bodyStateInterruptableOverride 	= TRUE;
	//***************************************************
	
	// ------ XP Setup ------
	exp				= 0;
	exp_next		= 500;
	lp				= 0;
	
	// ------ Attribute ------
	attribute[ATR_STRENGTH] 		= 60;  
	attribute[ATR_DEXTERITY] 		= 40;     
	attribute[ATR_MANA_MAX] 		= 30;
	attribute[ATR_MANA] 			= 20;
	attribute[ATR_HITPOINTS_MAX]	= 660;    
	attribute[ATR_HITPOINTS] 		= 660;    
	
	// ------ Kampf-Talente ------
	B_SetFightSkills 	(self, 50); 
	
	EquipItem			(self, ItMw_2h_Sld_Axe); 
	CreateInvItems (self, itmi_gold, 100);
	CreateInvItems (self, itrw_bolt, 100);
	
	EquipItem (self, ItMw_1h_Vlk_Sword);
	EquipItem (self, ItRw_Crossbow_L_01);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Pony", FACE_N_Player, BodyTex_N, ITAR_KDF_H);		
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed
	
};
	
instance PC_Hero (NPC_DEFAULT)
{
	// ------ SC ------
	name 		= "Ich der Paladin";
	guild		= GIL_PAL;
	id			= 0;
	voice		= 15;
	level		= 30;
	Npctype		= NPCTYPE_MAIN;
	
	//***************************************************
	bodyStateInterruptableOverride 	= TRUE;
	//***************************************************
	
	// ------ XP Setup ------
	exp				= 0;
	exp_next		= 500;
	lp				= 0;
	
	// ------ Attribute ------
	attribute[ATR_STRENGTH] 		= 60;   
	attribute[ATR_DEXTERITY] 		= 40;     
	attribute[ATR_MANA_MAX] 		= 30;
	attribute[ATR_MANA] 			= 20;
	attribute[ATR_HITPOINTS_MAX]	= 660;    
	attribute[ATR_HITPOINTS] 		= 660;    
	
	// ------ Kampf-Talente ------
	B_SetFightSkills 	(self, 50); 
	
	EquipItem			(self, ItMw_2h_Sld_Axe); 
	CreateInvItems (self, itmi_gold, 100);
	CreateInvItems (self, itrw_bolt, 100);
	
	EquipItem (self, ItMw_1h_Vlk_Sword);
	EquipItem (self, ItRw_Crossbow_L_01);

	// ------ Inventory ------
	B_CreateAmbientInv 	(self);
		
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_Pony", FACE_N_Player, BodyTex_N, ITAR_PAL_M);		
	Mdl_SetModelFatness	(self, 1);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed
	
};

	*/	

//**************************
//	Firedragon Testmodell
//*************************

INSTANCE Dragon_Testmodell	(Mst_Default_Dragon_Fire)  //Joly: Testdrachen für den Talk!
{
	B_SetVisuals_Dragon_Fire();
	Npc_SetToFistMode(self);
};

// *************************************************************************
// 									EXIT
// *************************************************************************
INSTANCE DIA_Dragon_Testmodell_Exit(C_INFO)
{
	
	npc 		= Dragon_Testmodell;
	nr			= 999;
	condition	= DIA_Dragon_Testmodell_Exit_Condition;
	information	= DIA_Dragon_Testmodell_Exit_Info;
	permanent	= TRUE;
	description = DIALOG_ENDE;
};                       

FUNC INT DIA_Dragon_Testmodell_Exit_Condition()
{
	if (DragonTalk_Exit_Free == TRUE)
		{
				return TRUE;
		};
};

FUNC VOID DIA_Dragon_Testmodell_Exit_Info()
{	
	AI_StopProcessInfos	(self);
	DragonTalk_Exit_Free  = FALSE;
	self.flags =  0;
};

// *************************************************************************
// 									Hello
// *************************************************************************
INSTANCE DIA_Dragon_Testmodell_Hello(C_INFO)
{
	
	npc 		= Dragon_Testmodell;
	nr			= 1;
	condition	= DIA_Dragon_Testmodell_Hello_Condition;
	information	= DIA_Dragon_Testmodell_Hello_Info;
	permanent	= TRUE ;
	
	description = "Quatsch mich voll";

};                       

FUNC INT DIA_Dragon_Testmodell_Hello_Condition()
{
	return 1;
};

FUNC VOID DIA_Dragon_Testmodell_Hello_Info()
{	
	AI_Output			(self, other, "DIA_Dragon_Testmodell_Hello_20_00"); //Du bist weit gekommen, kleiner Mensch, aber diese Halle wirst du nicht mehr lebend verlassen.
	AI_Output			(self, other, "DIA_Dragon_Testmodell_Hello_20_00"); //Du bist weit gekommen, kleiner Mensch, aber diese Halle wirst du nicht mehr lebend verlassen.
	AI_Output			(other, self, "DIA_Dragon_Testmodell_Hello_15_00"); //Mach nicht so einen Wind. Lass uns zur Sache kommen.
	AI_Output			(self, other, "DIA_Dragon_Testmodell_Hello_20_00"); //Du bist weit gekommen, kleiner Mensch, aber diese Halle wirst du nicht mehr lebend verlassen.
	AI_Output			(self, other, "DIA_Dragon_Testmodell_Hello_20_00"); //Du bist weit gekommen, kleiner Mensch, aber diese Halle wirst du nicht mehr lebend verlassen.
	AI_Output			(self, other, "DIA_Dragon_Testmodell_Hello_20_00"); //Du bist weit gekommen, kleiner Mensch, aber diese Halle wirst du nicht mehr lebend verlassen.
	AI_Output			(other, self, "DIA_Dragon_Testmodell_Hello_15_00"); //Mach nicht so einen Wind. Lass uns zur Sache kommen.
	AI_Output			(other, self, "DIA_Dragon_Testmodell_Hello_15_00"); //Mach nicht so einen Wind. Lass uns zur Sache kommen.
	AI_Output			(other, self, "DIA_Dragon_Testmodell_Hello_15_00"); //Mach nicht so einen Wind. Lass uns zur Sache kommen.
	AI_Output			(self, other, "DIA_Dragon_Testmodell_Hello_20_00"); //Du bist weit gekommen, kleiner Mensch, aber diese Halle wirst du nicht mehr lebend verlassen.
	AI_Output			(self, other, "DIA_Dragon_Testmodell_Hello_20_00"); //Du bist weit gekommen, kleiner Mensch, aber diese Halle wirst du nicht mehr lebend verlassen.
	AI_Output			(other, self, "DIA_Dragon_Testmodell_Hello_15_00"); //Mach nicht so einen Wind. Lass uns zur Sache kommen.

	AI_StopProcessInfos	(self);
	DragonTalk_Exit_Free  = FALSE;
	self.flags =  0;
};

	/*	
var int XXX_ANTIEXPLOID;
func void XXX ()
{
		if (XXX_ANTIEXPLOID < 9)
		{
		Wld_InsertNpc 	(fehlt, 					"fehlt");
		XXX_ANTIEXPLOID = (XXX_ANTIEXPLOID + 1);
		};
};
	*/	
	
//------------------------------------------------------------------------------------------
// 	ItWr_StonePlateCommon_Addon
//------------------------------------------------------------------------------------------
PROTOTYPE  JOLY_ITEM (C_Item)
{

	mainflag 		=	ITEM_KAT_NONE;
	flags 			=	ITEM_MULTI|ITEM_MISSION;

	value 			=	value_StonePlateCommon;

	
	material 		=	 MAT_LEATHER;
	on_state[0]		=    USEJOLY_ITEM1;
	scemeName		=	"MAP";
	
	description		= 	name;
	TEXT[2]			= 	"Compiling Visual Dummy item";
	
	TEXT[5]			= 	NAME_Value;		
	COUNT[5]		= 	value_StonePlateCommon;

	INV_ZBIAS		= 	INVCAM_ENTF_MISC5_STANDARD;
};
instance JI1 (JOLY_ITEM)
{
	name 			=	"ItAt_LurkerSkin";
	visual 			=	"ItAt_LurkerSkin.3ds"; 
	TEXT[3]			=	"JI1";
};
instance JI2 (JOLY_ITEM)
{
	name 			=	"ADDON_DUNGEON_BROKENSTONE_01";
	visual 			=	"ADDON_DUNGEON_BROKENSTONE_01.3ds"; 
	TEXT[3]			=	"JI2";
	on_state[0]		=    USEJOLY_ITEM2;
};
instance JI3 (JOLY_ITEM)
{
	name 			=	"ADDON_DUNGEON_BROKENSTONE_02";
	visual 			=	"ADDON_DUNGEON_BROKENSTONE_02.3ds"; 
	TEXT[3]			=	"JI3";
};
instance JI4 (JOLY_ITEM)
{
	name 			=	"ADDON_MISC_HOLZSTUETZEN_01";
	visual 			=	"ADDON_MISC_HOLZSTUETZEN_01.3ds"; 
	TEXT[3]			=	"JI4";
};
instance JI5 (JOLY_ITEM)
{
	name 			=	"ADDON_MISC_WOODPILLAR_L03";
	visual 			=	"ADDON_MISC_WOODPILLAR_L03.3ds"; 
	TEXT[3]			=	"JI5";
	INV_ZBIAS		= 	INVCAM_ENTF_MISC3_STANDARD;
};
instance JI6 (JOLY_ITEM)
{
	name 			=	"ADDON_PLANTS_BLAETTERDACH_01_94P";
	visual 			=	"ADDON_PLANTS_BLAETTERDACH_01_94P.3ds"; 
	TEXT[3]			=	"JI6";
};   
instance JI7 (JOLY_ITEM)
{
	name 			=	"ADDON_PLANTS_DEADTREE_01_1713P";
	visual 			=	"ADDON_PLANTS_DEADTREE_01_1713P.3ds"; 
	TEXT[3]			=	"JI7";
};   
instance JI8 (JOLY_ITEM)
{
	name 			=	"ADDON_PLANTS_DEADTREE_01_2300P";
	visual 			=	"ADDON_PLANTS_DEADTREE_01_2300P.3ds"; 
	TEXT[3]			=	"JI8";
};   
instance JI9 (JOLY_ITEM)
{
	name 			=	"ADDON_PLANTS_JUNGLETREE_01_1845P";
	visual 			=	"ADDON_PLANTS_JUNGLETREE_01_1845P.3ds"; 
	TEXT[3]			=	"JI9";
};   
instance JI10 (JOLY_ITEM)
{
	name 			=	"ADDON_PLANTS_TREE_02_1713P";
	visual 			=	"ADDON_PLANTS_TREE_02_1713P.3ds"; 
	TEXT[3]			=	"JI10";
};   
instance JI11(JOLY_ITEM)
{
	name 			=	"ADDON_STONES_CRYSTAL_ROSE_02_228P";
	visual 			=	"ADDON_STONES_CRYSTAL_ROSE_02_228P.3ds"; 
	TEXT[3]			=	"JI11";
};   
instance JI12 (JOLY_ITEM)
{
	name 			=	"EVT_ADDON_MAYA_PARTICEL_GATEDUMMY";
	visual 			=	"EVT_ADDON_MAYA_PARTICEL_GATEDUMMY.3ds"; 
	TEXT[3]			=	"JI12";
};   
instance JI13 (JOLY_ITEM)
{
	name 			=	"EVT_ADDON_MAYA_PARTICEL_VORTEXDUMMY";
	visual 			=	"EVT_ADDON_MAYA_PARTICEL_VORTEXDUMMY.3ds"; 
	TEXT[3]			=	"JI13";
};   

func void USEJOLY_ITEM1 ()
{
		var int nDocID;
	
		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "GOB_BODY2.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "Test Bla Glumpsch,");
					Doc_Show		( nDocID );
};
func void USEJOLY_ITEM2 ()
{
		var int nDocID;
	
		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "GOB_BODY3.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "Test Bla Glumpsch,");
					Doc_Show		( nDocID );
};



