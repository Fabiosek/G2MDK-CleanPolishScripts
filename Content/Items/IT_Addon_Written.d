//**********************************************************************************
//	Heiltrunk
//**********************************************************************************
instance ITWr_Addon_Health_04		(C_Item)
{
	name 				=	"Mikstura lecznicza – przepis";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	1000;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_Heilrezept_04;
	scemeName			=	"MAP";
	description			= 	"Pe³nia ¿ycia";
	
	TEXT[2]				=	"Warzenie silnej mikstury.";
	TEXT[3]				=	"Wymagana jest znajomoœæ eliksiru leczenia.";
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

func void Use_Heilrezept_04 ()
{
		var int nDocID;
		
		if Npc_IsPlayer (self)
		{
			if (PLAYER_TALENT_ALCHEMY[POTION_Health_03] == true)
			{
				PLAYER_TALENT_ALCHEMY[POTION_Health_04] = true;
				Snd_Play ("LevelUP");
				B_LogEntry (TOPIC_TalentAlchemy,"Do przygotowania mikstury leczniczej potrzebne s¹ 3 esencje lecznicze oraz 1 rdest polny.");
			};
		};
		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLines	( nDocID,  0, "Tworzenie mikstury leczniczej:");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Potrzebny jest jeden rdest polny, a tak¿e trzy esencje lecznicze.");	
					Doc_PrintLines	( nDocID,  0, "Po³¹cz je zgodnie z przepisem na tworzenie eliksiru leczenia.");	
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Mikstura mo¿e zostaæ przygotowana jedynie przez alchemika, który zna przepis na eliksir leczenia.");	
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_Show		( nDocID );
};

//**********************************************************************************
//	Manatrunk
//**********************************************************************************
instance ITWr_Addon_Mana_04		(C_Item)
{
	name 				=	"Mikstura many – przepis";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	1500;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_Manarezept_04;
	scemeName			=	"MAP";

	description			= 	"Pe³nia many";
	
	TEXT[2]				=	"Warzenie silnej mikstury.";
	TEXT[3]				=	"Wymagana jest znajomoœæ eliksiru many.";
	
	TEXT[5]			= NAME_Value;
	COUNT[5]		= value;
};

func void Use_Manarezept_04 ()
{
		var int nDocID;
		
		if Npc_IsPlayer (self)
		{
			if (PLAYER_TALENT_ALCHEMY[POTION_Mana_03] == true)
			{
				PLAYER_TALENT_ALCHEMY[POTION_Mana_04] = true;
				Snd_Play ("LevelUP");
				B_LogEntry (TOPIC_TalentAlchemy,"Do przygotowania mikstury many potrzebne s¹ 3 esencje many oraz 1 rdest polny.");
			};
		};
		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLines	( nDocID,  0, "Warzenie mikstury many:");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Potrzebny jest jeden rdest polny, a tak¿e trzy esencje many.");	
					Doc_PrintLines	( nDocID,  0, "Po³¹cz je zgodnie z przepisem na tworzenie eliksiru many.");	
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Ta mikstura mo¿e byæ przygotowana jedynie przez alchemika, który zna przepis na eliksir many.");	
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_Show		( nDocID );
};

//**********************************************************************************
//	Rezept von Miguel (Minecrawler Trank)
//**********************************************************************************
instance ITWr_Addon_MCELIXIER_01		(C_Item)
{
	name 				=	"Przepis";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	250;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_MCELIXIER_01;
	scemeName			=	"MAP";
	description			= 	name;
	Text[0]				= 	"Przepis mikstury przemiany duszy";
	Text[1]				= 	"Ta mikstura przywraca utracone wspomnienia.";
};

func void Use_MCELIXIER_01 ()
{
		Knows_MCELIXIER = true;
		var int nDocID;
	
		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, "Mikstura przemiany duszy");	
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Do przyrz¹dzenia tej mikstury potrzebna jest wydzielina z dwóch ¿¹de³ krwiopijców.");	
					Doc_PrintLines	( nDocID,  0, "Dodaj do tego jeden ekstrakt many, a tak¿e esencjê lecznicz¹.");	
					Doc_PrintLines	( nDocID,  0, "W koñcu dosyp do ca³oœci woreczek czerwonego pieprzu."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Tylko doœwiadczony alchemik wie, jak pobraæ wydzielinê z ¿¹d³a potrzebn¹ do zrobienia tej mikstury.");	
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_Show		( nDocID );
};

//**********************************************************************************
//	Rezept für grünene Novizen
//**********************************************************************************
instance ITWr_Addon_Joint_01		(C_Item)
{
	name 				=	"Zielony nowicjusz";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	250;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   Use_Joint_Rezept_01;
	scemeName			=	"MAP";
	description			= 	name;
	TEXT[0]				= 	"Le¿a³ w skrzyni Fortuna";
};

func void Use_Joint_Rezept_01 ()
{
		var int nDocID;
	
		Green_Extrem = true;
		
		
		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Der grüne Novize"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLines	( nDocID,  0, "(...) Te ³odygi mo¿na ca³kiem nieŸle zwijaæ, ale nie ma porównania z tym, co mieliœmy w obozie na bagnie.");	
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLines	( nDocID,  0, "Jeœli wezmê wyci¹g z dwóch ³odyg bagiennego ziela i zmieszam go z polnym rdestem, mo¿na to bêdzie porównaæ do zielonego nowicjusza."					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Zielony nowicjusz ³agodzi wszystkie bóle i oczyszcza umys³.");	
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_Show		( nDocID );

};
//**********************************************************************************
//	Schnapsbrennen Rezept
//**********************************************************************************
instance ITWr_Addon_Lou_Rezept		(C_Item)
{
	name 				=	"Przepis na M³ot Lou";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	70;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseLouRezept;
	scemeName			=	"MAP";
	description			= 	name;
	Text[0]				= 	"Jak przygotowaæ M³ot Lou.";
};

func void UseLouRezept ()
{
		Knows_LousHammer = true;
		
		
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, "Przepis na M³ot Lou"					);
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "Sk³adniki mocnej nalewki:");	
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Bierzesz butelkê, a tak¿e dwie rzepy i spor¹ garœæ bagiennego ziela.");	
					Doc_PrintLines	( nDocID,  0, "Dodajesz do tego k³y b³otnego wê¿a."					);
					Doc_PrintLines	( nDocID,  0, "Mieszasz w butelce i gotujesz z dzia³k¹ rumu."					);
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "Na zdrowie.");	
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Wed³ug starego œlepca lepiej nie wdychaæ wyziewów!");	
					Doc_Show		( nDocID );

};
//**********************************************************************************
//	Doppelhammer
//**********************************************************************************
instance ITWr_Addon_Lou_Rezept2		(C_Item)
{
	name 				=	"Przepis na podwójny M³ot Lou";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	140;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseLouRezept2;
	scemeName			=	"MAP";
	description			= 	name;
	Text[0]				= 	"Jak przygotowaæ podwójny M³ot Lou.";
};

func void UseLouRezept2 ()
{
		Knows_SchlafHammer = true;
		
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, "Podwójny M³ot Lou"					);
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLines	( nDocID,  0, "WeŸ stary, dobry M³ot Lou i przedestyluj go jeszcze raz.");
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLines	( nDocID,  0, "Ten wywar mo¿e przyrz¹dziæ jedynie ktoœ doœwiadczony w destylacji.");	
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLines	( nDocID,  0, "Profan mo¿e od tego nie tylko oœlepn¹æ, ale te¿ ca³kiem wyzion¹æ ducha.");	
					
					Doc_Show		( nDocID );

};

//**********************************************************************************
//	Piratentod
//**********************************************************************************
instance ITWr_Addon_Piratentod		(C_Item)
{
	name 				=	"Szybki œledŸ";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	250;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseRezeptPiratentod;
	scemeName			=	"MAP";
	description			= 	name;
	Text[0]				=	"Przepis na przygotowanie Szybkiego œledzia.";
};
func void UseRezeptPiratentod ()
{
		Knows_SchnellerHering = true;
		
		
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Szybki œledŸ (mój przepis)"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "Ma³y klinek dla porz¹dnych ch³opaków");	
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Jak zwykle, potrzebna bêdzie butelka. Wlej do niej jedn¹ porcjê rumu i dodaj œwie¿¹ rybê.");	
					Doc_PrintLines	( nDocID,  0, "Kiedy tylko p³yn zrobi siê ¿ó³ty, wyjmij rybê i dopraw garœci¹ soli"					);
					Doc_PrintLines	( nDocID,  0, "œwie¿o zebranego zêbatego ziela."					);
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLines	( nDocID,  0, "Uwa¿aj! Ta nalewka naprawdê stawia na nogi.");	
					Doc_PrintLine	( nDocID,  0, "");
					Doc_Show		( nDocID );

};

//------------------------------------------------------------------------------------------
instance Fakescroll_Addon (C_Item)
{	
	name 					=	"Kawa³ek papieru";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;	

	hp 						=	5;
	hp_max 					=	5;
	weight 					=	1;
	value 					=	0;

	visual 					=	"Fakescroll.3ds";
	material 				=	MAT_LEATHER;
	
	scemeName				=	"MAPSEALED";	
	
	description				= name;
	TEXT[5]					= NAME_Value;
	COUNT[5]				= value;
};

//------------------------------------------------------------------------------------------
instance ItWr_Addon_AxtAnleitung (C_ITEM)
{	
	name 				=	"Przepis na bandycki topór";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 					=	250;

	visual 				=	"ItWr_Scroll_01.3DS";	
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseAxtAnleitung;
	scemeName			=	"MAP";
	description			= 	name;
	Text[0]				= 	"Instrukcja stworzenia lekkiego, ostrego topora";
};

func void UseAxtAnleitung ()
{
		var int nDocID;

		nDocID = 	Doc_Create		()			  ;							// DocManager
					Doc_SetPages	( nDocID,  1 	);                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		);
					Doc_SetFont 	( nDocID,  0, FONT_BookHeadline  			); 	// -1 -> all pages
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, "Bandycki topór"					);
					Doc_SetFont 	( nDocID,  0, FONT_Book		); 	// -1 -> all pages
					Doc_PrintLine	( nDocID,  0, "Jednorêczny topór");	
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLines	( nDocID,  0, "Osoba znaj¹ca podstawy kowalstwa mo¿e stworzyæ specjalny topór.");	
					Doc_PrintLines	( nDocID,  0, "Potrzebne s¹ dwa kawa³ki rozgrzanego do bia³oœci ¿elaza."					);
					Doc_PrintLines	( nDocID,  0, "Jedna bry³ka rudy i trzy komplety k³ów wilków, zêbaczy lub podobnych bestii."					);
					Doc_PrintLine	( nDocID,  0, "");	
					Doc_PrintLine	( nDocID,  0, "Ruda i k³y zbijane s¹ w jedn¹ ca³oœæ na kowadle.");	
					Doc_PrintLine	( nDocID,  0, "");
					Doc_PrintLine	( nDocID,  0, "Taki topór jest ³atwy we w³adaniu i zadaje spore");
					Doc_PrintLines	( nDocID,  0, "obra¿enia.");	
					Doc_Show		( nDocID );
};