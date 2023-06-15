// *************************
// Globalvariablen für Story
// *************************

// ------ Teacher MAX Werte ------
const int T_MEGA = 300; //Pyrokar MANA
const int T_MAX = 200;
const int T_HIGH = 120;
const int T_MED = 90;
const int T_LOW = 60;

//**************
//	ADDON
//**************

//---------------------------------------------------
// ITEMS 

//----- Artefakt Set der Bauern (HP)-----------------
var int	HP_Ring_1_Equipped;		
var int	HP_Ring_2_Equipped;	  
var int HP_Amulett_Equipped;     
/*                              
var int HP_Ring_Double_Bonus;	  
var int HP_Artefakt_Bonus;       
var int HP_Amulett_EinRing_Bonus;
*/
var int HP_Artefakt_Effekt;	  

//----- Artefakt Set der Priester (Mana)-----------------

var int	MA_Ring_1_Equipped;		
var int	MA_Ring_2_Equipped;	  
var int MA_Amulett_Equipped;     
/*                              
var int MA_Ring_Double_Bonus;	  
var int MA_Artefakt_Bonus;       
var int MA_Amulett_EinRing_Bonus;
*/
var int MA_Artefakt_Effekt;	  

//----- Artefakt Set der Krieger (STR)-----------------

var int	STR_Ring_1_Equipped;		
var int	STR_Ring_2_Equipped;	  
var int STR_Amulett_Equipped;     
 /*                             
var int STR_Ring_Double_Bonus;	  
var int STR_Artefakt_Bonus;       
var int STR_Amulett_EinRing_Bonus;
*/
var int STR_Artefakt_Effekt;	  

//------------Rüstungen---------
var int LeatherArmor_Equipped;
var int	SLDArmor_Equipped;
var int NOVArmor_Equipped;
var int KDFArmor_Equipped;
var int	MILArmor_Equipped;
var int MCArmor_Equipped;

var int KDF01_Equipped;
var int KDF02_Equipped;
var int KDF03_Equipped;

var int MIL01_Equipped;
var int MIL02_Equipped;
var int MIL03_Equipped;

var int NOV01_Equipped;

var int SLD01_Equipped;
var int SLD02_Equipped;
var int SLD03_Equipped;

var int Leather01_Equipped;
var int Leather02_Equipped;

var int MC_Equipped;
//---------------------------------------------------

//ADDONWORLD KDW
var int  	BeliarsWeaponSpecialDamage;			//Grundwert für Speziellen Schaden Beliars Klaue
var int  	BeliarDamageChance;					//Chance auf Extraschaden
var int  	SC_FailedToEquipBeliarsWeapon;		//= TRUE SC hat versucht die Waffe anzulegen. -> Blitz in Arsch.
var int  	BeliarsWeaponUpgrated;				//= TRUE SC hat die Waffe wenigstens einmal verbessert!

//--------------Banditenlager (Addonwelt)------------------	
var int 	Knows_MCELIXIER;

//----Fortuno-----
var int		Green_Extrem;

//-------------GOLDHACKEN---------------------------------
var int 	Hero_HackChance;
var int 	Truemmer_Count;
var int 	Knows_Truemmerschlag;
var int 	Learn_by_doing; 

var int 	GoldMob_01_Amount;					
var int 	GoldMob_02_Amount;					
var int 	GoldMob_03_Amount;					
var int 	GoldMob_04_Amount;					
var int 	GoldMob_05_Amount;
var int 	GoldMob_06_Amount;
var int 	GoldMob_07_Amount;
var int 	GoldMob_08_Amount;
var int 	GoldMob_09_Amount;
var int 	GoldMob_10_Amount;
var int 	GoldMob_11_Amount;
var int 	GoldMob_12_Amount;
var int 	GoldMob_13_Amount;
var int 	GoldMob_14_Amount;
var int 	GoldMob_15_Amount;
var int 	GoldMob_16_Amount;
var int 	GoldMob_17_Amount;
var int 	GoldMob_18_Amount;
var int 	GoldMob_19_Amount;
var int 	GoldMob_20_Amount;

//Mine (großer Raum)
const int 	GoldMob_01_AmounT_MAX =  5;
const int 	GoldMob_02_AmounT_MAX =  5;
const int 	GoldMob_03_AmounT_MAX =  5;
const int 	GoldMob_04_AmounT_MAX =  5;
const int 	GoldMob_12_AmounT_MAX =  7;

//Mine Sackgassen/Stollen
const int 	GoldMob_05_AmounT_MAX =  9;
const int 	GoldMob_06_AmounT_MAX =  9;
const int 	GoldMob_07_AmounT_MAX =  9;

//Minecrawler Hoehle (Addon Goldmine)
const int 	GoldMob_08_AmounT_MAX = 15;
const int 	GoldMob_09_AmounT_MAX = 15;
const int 	GoldMob_10_AmounT_MAX = 18;
const int 	GoldMob_11_AmounT_MAX = 18;

//Else
const int 	GoldMob_13_AmounT_MAX = 12;
const int 	GoldMob_14_AmounT_MAX = 13;
const int 	GoldMob_15_AmounT_MAX = 14;
const int 	GoldMob_16_AmounT_MAX = 15;
const int 	GoldMob_17_AmounT_MAX = 16;
const int 	GoldMob_18_AmounT_MAX = 17;
const int 	GoldMob_19_AmounT_MAX = 18;
const int 	GoldMob_20_AmounT_MAX = 19;

//----------------Piratenlager (Addonwelt) -------------------------------
var int Read_JuansText;
var int Player_KnowsSchnellerHering;

//--------------- SCHNAPSBRENNEN - Rezept Kenntnis -----------------------
var int 	Knows_LousHammer;						//Lous Rezept
var int 	Knows_Schlafhammer;						//erweitertes Rezept von Lou mit doppelter Menge Rum 
var int 	Knows_SchnellerHering;					//verbesserte SpeedPotionSchnaps von Samuel 

//**************
// Gothic 2
//**************
var int Kapitel;

// ------ Petzmaster ------
var int Lee_Schulden;	//wieviel Gold schuldet der SC Lee
var int Hagen_Schulden;	//wieviel Gold schuldet der SC Hagen
var int Andre_Schulden;	//wieviel Gold schuldet der SC Andre
var int Garond_Schulden;	//wieviel Gold schuldet der SC Garond
var int Parlan_Schulden;	//wieviel Gold schuldet der SC Parlan

// *************************
// Globalvariablen für Diebstahl 
// *************************
const int Theftdiff = 10; //DEX Diff Wert ab dem der Dialog erscheint
var int TheftDexGlob;  //benötigte Geschicklichkeit um NSC auszuplündern
var int TheftGoldGlob; //Gold Anzahl die NSC in der Tasche hat

//*******************
//	Missionsvariablen		//sollten alle mit "MIS_" anfangen
//*******************
//----------Diebesgilde--------------------
var int 	Sld_Duelle_gewonnen;	//In ZS_Unconscious 

//---------------------------
//	KLOSTER
//---------------------------
var int 	Hammer_Taken;				//Spieler hat Hammer Innos geklaut

//Gildenabhängig
var int		MIS_Serpentes_MinenAnteil_KDF;		//Serpentes schickt dich los die gefälschten Minenanteile einzusammeln. KDF

// ------ KAPITEL 5 ------
var int 	MIS_Xardas_SCCanOpenIrdorathBook; //SC kann Buch "Die Hallen von Irdorath" lesen
var int 	MIS_SCKnowsWayToIrdorath;	//SC weiß jetzt, dass er das Schiff braucht und kennt den Weg zur Dracheninsel
var int 	PlayerGetsAmulettOfDeath;
var int 	PlayergetsFinalDJGArmor;
var int 	MIS_SCvisitShip;

//**************************
// Allgemeine Hilfsvariablen
//**************************
					
// ------ KAPITEL 2 ------
var int GornsTreasure;			//Gorns Schatzversteck

// ------ KAPITEL 5 ------
var int PAL_KnowsAbout_FINAL_BLESSING; //Paladine Sc hat rezept für Finale Waffensegnung gelesen!

//-------------  Sonstige Variablen -------------------------------------
var int Apple_Bonus;
var int Dunkelpilz_Bonus;
var int Mandibles_Bonus;
var int Knows_Bloodfly;
var int Bloodfly_Bonus;
var int GoblinGreen_Randomizer;
var int GoblinBlack_Randomizer;
var int Orc_Randomizer;

var int CurrentLevel; 	//Newworld_zen, Oldworld_Zen, Dragonisland_zen -> Level in dem sich der Player befindet!


