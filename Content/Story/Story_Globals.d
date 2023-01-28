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

//Ranger 
var int SC_KnowsRanger;							//= TRUE SC hat vom RING des Wassers gehört.
var int SC_IsRanger;							//= TRUE  Name ist programm
var int SaturasKnows_SC_IsRanger;				//= TRUE  Saturas akzeptiert die Aufnahme des SC bei den Rangern
var int SCIsWearingRangerRing;					//= TRUE  Name ist programm
var int RangerRingIsLaresRing;					//= TRUE  Name ist programm
var int RangerHelp_OrnamentForest;				//= TRUE Lares Boxt SC durch den Medium Wald
var int RangerMeetingRunning;					//= TRUE Die Ranger meeten in Orlans Taverne
var int Lares_ComeToRangerMeeting;				//= TRUE Lares schickt den Spieler zum Rangermeeting.
var int MIS_Vatras_FindTheBanditTrader;			//Vatras will den Namen des Händler aus dem oberen Viertel, der den Banditen Waffen liefert.
var int BanditTrader_Lieferung_Gelesen;			//= TRUE SC hat den Lieferungsschein gelesen.

// Ornamnet Portal
var int SCUsed_AllNWTeleporststones;			//= TRUE SC benutzte alle Teleportstationen in der Newworld
var int SC_SAW_ORNAMENT_MAP;					//= TRUE  SC hat gesehen, wo er hin muss zu den teinkreisen
var int Vatras2Saturas_FindRaven_Open;			//= TRUE SC hat den Brief von Vatras an Saturas geöffnet.

//Teleportsteine
var int SCUsed_TELEPORTER;						//= TRUE SC benutzte irgendeinen Teleporter
var int SCUsed_NW_TELEPORTSTATION_CITY;			//= TRUE SC benutzte die Teleportstation bei...
var int SCUsed_NW_TELEPORTSTATION_TAVERNE;		//= TRUE SC benutzte die Teleportstation bei...
var int SCUsed_NW_TELEPORTSTATION_MAYA;			//= TRUE SC benutzte die Teleportstation bei...
var int SCUsed_ADW_TELEPORTSTATION_PORTALTEMPEL;//= TRUE SC benutzte die Teleportstation bei...
var int SCUsed_ADW_TELEPORTSTATION_ADANOSTEMPEL;//= TRUE SC benutzte die Teleportstation bei...
var int SCUsed_ADW_TELEPORTSTATION_SOUTHEAST;	//= TRUE SC benutzte die Teleportstation bei...
var int SCUsed_ADW_TELEPORTSTATION_SOUTHWEST;	//= TRUE SC benutzte die Teleportstation bei...
var int SCUsed_ADW_TELEPORTSTATION_PIRATES;		//= TRUE SC benutzte die Teleportstation bei...
var int SCUsed_ADW_TELEPORTSTATION_RAVENTELEPORT_OUT;		//= TRUE RAUS AUS aDANOSTEMPEL
var int SCUsed_ADW_TELEPORTSTATION_PIRATES_JACKSMONSTER;//= TRUE Monster gespawnt, die bei AlligatorJack stören
var int SC_ADW_ActivatedAllTelePortStones;		//= TRUE Alle ADW Teleporter sind aktiviert.

//ADDONWORLD KDW
var int StPl_nDocID;
var int 	ENTERED_ADDONWORLD;					//= TRUE war schon in der Addonworld
var int 	SC_Knows_WeaponInAdanosTempel;		//= TRUE SC weiß vom Schwert im Tempel
var int 	RavenIsDead;						//= TRUE Raven ist tot und das Hauptziel vom Addon erreicht. 
var int  	BeliarsWeaponSpecialDamage;			//Grundwert für Speziellen Schaden Beliars Klaue
var int  	BeliarDamageChance;					//Chance auf Extraschaden
var int  	SC_FailedToEquipBeliarsWeapon;		//= TRUE SC hat versucht die Waffe anzulegen. -> Blitz in Arsch.
var int  	BeliarsWeaponUpgrated;				//= TRUE SC hat die Waffe wenigstens einmal verbessert!

//--------------Banditenlager (Addonwelt)------------------
var int 	Player_HasTalkedToBanditCamp;				//Spieler war schon mal im BDT Camp			
const int	Lennar_picklock_amount = 12; //Anzahl seiner dietriche
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
var int MIS_KrokoJagd;							// Alligator Jagd mit Jack
var int TowerBanditsDead;	
var int Francis_HasProof;						//Player hat Beweise für Schmuggel
var int MALCOMEXIDENT; //RAUS
var int Malcom_Accident;
var int Greg_GaveArmorToBones;
var int GregIsBack;
var int Read_JuansText;
var int Player_KnowsSchnellerHering;

//--------------- SCHNAPSBRENNEN - Rezept Kenntnis -----------------------
var int 	Knows_LousHammer;						//Lous Rezept
var int 	Knows_Schlafhammer;						//erweitertes Rezept von Lou mit doppelter Menge Rum 
var int 	Knows_SchnellerHering;					//verbesserte SpeedPotionSchnaps von Samuel 
 
//---obligatorisch angelegt -----------------------------
var int 	Knows_RuebenSchnaps;
var int 	Knows_VinoSchnaps;
var int 	Knows_PiratenSchnaps;	//Weißer Rum				
var int 	Knows_Magierschnaps;
var int 	Knows_Sumpfkrautschnaps;

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

var int 	Player_IsApprentice;
const int 	APP_NONE 			= 0;

var int 	Charm_Test;
var int 	MIS_Ignaz_Charm;

//----------Diebesgilde--------------------
var int 	KnowsPaladins_Ore;			//Weiß warum die paladine da sind
var int 	Sld_Duelle_gewonnen;	//In ZS_Unconscious 
var int 	SOLD;

//---------------------------
//	KLOSTER
//---------------------------
var int 	MIS_ParlanFegen; 			//Novizenkammern ausfegen
var int 	MIS_MardukBeten;			//Marduk fordert den Spieler zum Gebet auf
var int 	Fire_Contest;
var	int		KNOWS_FIRE_CONTEST;			//Spieler kennt das alte Gesetz 
var int		MIS_Torlof_BengarMilizKlatschen; 	//SC soll Hof 4 von den Milizen befeien.
var int 	Hammer_Taken;				//Spieler hat Hammer Innos geklaut

// ------ KAPITEL 3 ------
var int 	MIS_RitualInnosEyeRepair; 			//Vatras wartet auf Xardas und Pyrokar am Sonnenkreis 
var int 	MIS_ReadyforChapter4; 				//Mit dieser Varible in den Levelchange zur OW -> Kapitel 4
var int 	MIS_RescueBennet;					//Berfreie Bennet aus dem Knast

//Gildenabhängig
var int		MIS_Ulthar_HeileSchreine_PAL;		//Ulthar schickt dich los die verhexten Schreine zu heilen. 			PAL oder MIL
var int		MIS_Serpentes_MinenAnteil_KDF;		//Serpentes schickt dich los die gefälschten Minenanteile einzusammeln. KDF

// ------ KAPITEL 4 ------
var int 	MIS_KillOrkOberst;			//Kill den Ork Oberst.

// ------ KAPITEL 5 ------
var int 	MIS_Xardas_SCCanOpenIrdorathBook; //SC kann Buch "Die Hallen von Irdorath" lesen
var int 	MIS_SCKnowsWayToIrdorath;	//SC weiß jetzt, dass er das Schiff braucht und kennt den Weg zur Dracheninsel
var int 	MIS_PyrokarClearDemonTower;	//Pyrokar will, dass SC dem DT aufräumt, als Tribut für Jorgens freilassung.->==LOG_SUCCESS Jorgen kann nun als Kapitän angeheuert werden.
var int 	ItWr_HallsofIrdorathIsOpen;	//SC hat das Buch geöffnet
var int 	ItWr_SCReadsHallsofIrdorath; //SC hat das Buch durchgelesen
var int 	PlayerGetsAmulettOfDeath;
var int 	PlayergetsFinalDJGArmor;
var int 	MIS_SCvisitShip;
const int 	Max_Crew = 9;				//Max. Crewmitglieder
const int   Min_Crew = 5;				//Min. Crewmitglieder //Joly: wenn dieser Wert geändert wird, müssen auch die Dialoge angepasst werden!!!!!!!!!

// Crewmembers
var int 	MIS_ShipIsFree;				//Das Schiff ist frei und SC kann mit seinen Jungs draufgehen.
var int 	MIS_OCGateOpen;				//== TRUE -> Das Tor vom OC ist geöffnet worden (ORCSturm)

//**************************
// Allgemeine Hilfsvariablen
//**************************
					
// ------ KAPITEL 2 ------
var int GornsTreasure;			//Gorns Schatzversteck

// ------ KAPITEL 3 ------
const int DiegosTreasure	= 2000;	//Diegos Schatz!
const int Gold_BlessSword 	= 5000; //Soviel kostet die erste Segnung deines PalSchwertes (Hoshi: bei Änderung bitte auch in der Text.d ändern!!!!(const string Bless_Sword))

// ------ KAPITEL 4 ------
var int DragonTalk_Exit_Free;	

// ------ KAPITEL 5 ------
var int PAL_KnowsAbout_FINAL_BLESSING; //Paladine Sc hat rezept für Finale Waffensegnung gelesen!

// ------ KAPITEL 6 ------
var int UndeadDragonIsDead;			//UndeadDragon ist tot

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

