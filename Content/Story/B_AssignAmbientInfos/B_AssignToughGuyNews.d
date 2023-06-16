
instance DIA_ToughGuy_NEWS(C_Info)
{
	nr = 1;
	condition = DIA_ToughGuy_NEWS_Condition;
	information = DIA_ToughGuy_NEWS_Info;
	permanent = TRUE;
	important = TRUE;
};

func int DIA_ToughGuy_NEWS_Condition()
{
	if(Npc_IsInState (self,ZS_Talk) && (self.aivar[AIV_LastFightAgainstPlayer] != FIGHT_NONE) && (self.aivar[AIV_LastFightComment] == false))
	{
		return true;
	};
};

func void DIA_ToughGuy_NEWS_Info()
{
	if (self.aivar[AIV_LastFightAgainstPlayer] == FIGHT_LOST)
	{
		B_Say(self,other,"$TOUGHGUY_ATTACKLOST");
	}
	
	else if (self.aivar[AIV_LastFightAgainstPlayer] == FIGHT_WON)
	{
		B_Say(self,other,"$TOUGHGUY_ATTACKWON");
	}
	
	else
	{
		B_Say(self,other,"$TOUGHGUY_PLAYERATTACK");
	};
	self.aivar[AIV_LastFightComment] = TRUE;

};

func void B_AssignToughGuyNEWS(var C_Npc slf)
{
	DIA_ToughGuy_NEWS.npc = Hlp_GetInstanceID(slf);
};

