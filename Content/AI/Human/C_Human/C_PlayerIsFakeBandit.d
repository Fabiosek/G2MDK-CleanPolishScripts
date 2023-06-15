func int C_PlayerIsFakeBandit (var C_NPC slf, var C_NPC oth)
{
	var C_Item itm; 

	if (slf.aivar [AIV_IgnoresArmor] == true)
	{
		return false;
	};
	
	if (slf.aivar [AIV_IgnoresFakeGuild] == true)
	{
		return false;
	};
	
	if (slf.guild == GIL_PIR)
	{
		return false;
	};	
	
	if (Npc_HasEquippedArmor (oth) == true)
	{
		itm = Npc_GetEquippedArmor(oth);
		if ((Hlp_IsItem(itm, ITAR_BDT_M) == true)
		|| (Hlp_IsItem (itm, ItAR_Thorus_Addon) == true)
		|| (Hlp_IsItem (itm, ITAR_BDT_H) == true))
		{
			return true;
		}
		
		else
		{
			return false;
		};
	}
		
	else
	{
		return false;
	};	
};
