
instance MENU_OPT_GAME(C_MENU_DEF)
{
	backpic = MENU_BACK_PIC;
	
	//USTAWIENIA GRY
	items[0] = "MENUITEM_GAME_HEADLINE";
	
	//Podpisy
	items[1] = "MENUITEM_GAME_SUB_TITLES";
	items[2] = "MENUITEM_GAME_SUB_TITLES_CHOICE";
	
	//Oznaczanie cel�w
	items[3] = "MENUITEM_GAME_FIGHTFOCUS";
	items[4] = "MENUITEM_GAME_FIGHTFOCUS_CHOICE";
	
	//Pod�wietlanie obiekt�w
	items[5] = "MENUITEM_GAME_INTERACTFOCUS";
	items[6] = "MENUITEM_GAME_INTERACTFOCUS_CHOICE";
	
	//Zmiana pracy kamery
	items[7] = "MENUITEM_GAME_LOOKAROUND_INVERSE";
	items[8] = "MENUITEM_GAME_LOOKAROUND_INVERSE_CHOICE";
	
	//Myszka w grze
	items[9] = "MENUITEM_M";
	items[10] = "MENUITEM_M_CHOICE";
	
	//Czu�o�� myszy
	items[11] = "MENUITEM_MSENSITIVITY";
	items[12] = "MENUITEM_MSENSITIVITY_SLIDER";
	
	//Sterowanie z Gothic I
	items[13] = "MENUITEM_GAME_OLDCONTROLS";
	items[14] = "MENUITEM_GAME_OLDCONTROLS_CHOICE";
	
	//Wr��
	items[15] = "MENUITEM_GAME_BACK";
	
	flags = flags | MENU_SHOW_INFO;
};

//USTAWIENIA GRY
instance MENUITEM_GAME_HEADLINE(C_MENU_ITEM_DEF)
{
	text[0] = "USTAWIENIA GRY";
	type = MENU_ITEM_TEXT;
	posx = 0;
	posy = MENU_TITLE_Y;
	dimx = 8100;
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

//Podpisy
instance MENUITEM_GAME_SUB_TITLES(C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Podpisy";
	text[1] = "W��czenie/wy��czenie podpis�w przy dialogach";
	posx = 700;
	posy = MENU_START_Y + (MENU_SOUND_DY * 0);
	dimx = 4600;
	dimy = 750;
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_GAME_SUB_TITLES_CHOICE(C_MENU_ITEM_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC;
	type = MENU_ITEM_CHOICEBOX;
	text[0] = "Nie|Tak";
	fontname = MENU_FONT_SMALL;
	posx = 5400;
	posy = MENU_START_Y + (MENU_SOUND_DY * 0) + MENU_CHOICE_YPLUS;
	dimx = MENU_SLIDER_DX;
	dimy = MENU_CHOICE_DY;
	onchgsetoption = "subTitles";
	onchgsetoptionsection = "GAME";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

//Oznaczanie cel�w
instance MENUITEM_GAME_FIGHTFOCUS(C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Oznaczanie cel�w";
	text[1] = "W�./wy�. wyr�niania bie��cego celu w czasie walki";
	posx = 700;
	posy = MENU_START_Y + (MENU_SOUND_DY * 1);
	dimx = 4600;
	dimy = 750;
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_GAME_FIGHTFOCUS_CHOICE(C_MENU_ITEM_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC;
	type = MENU_ITEM_CHOICEBOX;
	text[0] = "Nie|Okienko|Pod�wietlenie|Oba";
	fontname = MENU_FONT_SMALL;
	posx = 5400;
	posy = MENU_START_Y + (MENU_SOUND_DY * 1) + MENU_CHOICE_YPLUS;
	dimx = 2000;
	dimy = MENU_CHOICE_DY;
	onchgsetoption = "highlightMeleeFocus";
	onchgsetoptionsection = "GAME";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

//Pod�wietlanie obiekt�w
instance MENUITEM_GAME_INTERACTFOCUS(C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Pod�wietlanie obiekt�w";
	text[1] = "W�./wy�. pod�wietlania przedmiot�w w polu widzenia";
	posx = 700;
	posy = MENU_START_Y + (MENU_SOUND_DY * 2);
	dimx = 4600;
	dimy = 750;
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_GAME_INTERACTFOCUS_CHOICE(C_MENU_ITEM_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC;
	type = MENU_ITEM_CHOICEBOX;
	text[0] = "Nie|Tak";
	fontname = MENU_FONT_SMALL;
	posx = 5400;
	posy = MENU_START_Y + (MENU_SOUND_DY * 2) + MENU_CHOICE_YPLUS;
	dimx = 2000;
	dimy = MENU_CHOICE_DY;
	onchgsetoption = "highlightInteractFocus";
	onchgsetoptionsection = "GAME";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

//Zmiana pracy kamery
instance MENUITEM_GAME_LOOKAROUND_INVERSE(C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Zmiana pracy kamery";
	text[1] = "W��czenie/wy��czenie odwr�conych ruch�w kamery";
	posx = 700;
	posy = MENU_START_Y + (MENU_SOUND_DY * 3);
	dimx = 4600;
	dimy = 750;
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_GAME_LOOKAROUND_INVERSE_CHOICE(C_MENU_ITEM_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC;
	type = MENU_ITEM_CHOICEBOX;
	text[0] = "Nie|Tak";
	fontname = MENU_FONT_SMALL;
	posx = 5400;
	posy = MENU_START_Y + (MENU_SOUND_DY * 3) + MENU_CHOICE_YPLUS;
	dimx = MENU_SLIDER_DX;
	dimy = MENU_CHOICE_DY;
	onchgsetoption = "camLookaroundInverse";
	onchgsetoptionsection = "GAME";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

//Myszka w grze
instance MENUITEM_M(C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Myszka w grze";
	text[1] = "Korzystanie z myszki";
	posx = 700;
	posy = MENU_START_Y + (MENU_SOUND_DY * 4);
	dimx = 4600;
	dimy = 750;
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_M_CHOICE(C_MENU_ITEM_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC;
	type = MENU_ITEM_CHOICEBOX;
	text[0] = "Nie|Tak";
	fontname = MENU_FONT_SMALL;
	posx = 5400;
	posy = MENU_START_Y + (MENU_SOUND_DY * 4) + MENU_CHOICE_YPLUS;
	dimx = 2000;
	dimy = MENU_CHOICE_DY;
	onchgsetoption = "enableMouse";
	onchgsetoptionsection = "GAME";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

//Czu�o�� myszy
instance MENUITEM_MSENSITIVITY(C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Czu�o�� myszy";
	text[1] = "Ustawienie czu�o�ci myszy";
	posx = 700;
	posy = MENU_START_Y + (MENU_SOUND_DY * 5);
	dimx = 4600;
	dimy = 750;
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_MSENSITIVITY_SLIDER(C_MENU_ITEM_DEF)
{
	backpic = MENU_SLIDER_BACK_PIC;
	type = MENU_ITEM_SLIDER;
	text[0] = "";
	fontname = MENU_FONT_SMALL;
	posx = 5400;
	posy = MENU_START_Y + (MENU_SOUND_DY * 5) + MENU_SLIDER_YPLUS;
	dimx = 2000;
	dimy = MENU_SLIDER_DY;
	onchgsetoption = "mouseSensitivity";
	onchgsetoptionsection = "GAME";
	userfloat[0] = 20;
	userstring[0] = MENU_SLIDER_POS_PIC;
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

//Sterowanie z Gothic I
instance MENUITEM_GAME_OLDCONTROLS(C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Sterowanie z Gothic I";
	text[1] = "Wykorzystanie sposobu sterowania z Gothic I";
	posx = 700;
	posy = MENU_START_Y + (MENU_SOUND_DY * 6);
	dimx = 4600;
	dimy = 750;
	onselaction[0] = SEL_ACTION_UNDEF;
	flags = flags | IT_EFFECTS_NEXT;
};

instance MENUITEM_GAME_OLDCONTROLS_CHOICE(C_MENU_ITEM_DEF)
{
	backpic = MENU_CHOICE_BACK_PIC;
	type = MENU_ITEM_CHOICEBOX;
	text[0] = "Nie|Tak";
	fontname = MENU_FONT_SMALL;
	posx = 5400;
	posy = MENU_START_Y + (MENU_SOUND_DY * 6) + MENU_CHOICE_YPLUS;
	dimx = 2000;
	dimy = MENU_CHOICE_DY;
	onchgsetoption = "useGothic1Controls";
	onchgsetoptionsection = "GAME";
	flags = flags & ~IT_SELECTABLE;
	flags = flags | IT_TXT_CENTER;
};

//Wr��
instance MENUITEM_GAME_BACK(C_MENU_ITEM_DEF)
{
	backpic = MENU_ITEM_BACK_PIC;
	text[0] = "Wr��";
	posx = 1000;
	posy = MENU_BACK_Y + 300;
	dimx = 6192;
	dimy = MENU_OPT_DY;
	onselaction[0] = SEL_ACTION_BACK;
	flags = flags | IT_TXT_CENTER;
};
