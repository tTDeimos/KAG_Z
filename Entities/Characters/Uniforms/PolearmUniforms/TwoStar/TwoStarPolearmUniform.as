// scroll script that makes enemies insta gib within some radius

#include "Hitters.as";
#include "RespawnCommandCommon.as"
#include "StandardRespawnCommand.as"
#include "UniformCommon.as"
void onInit( CBlob@ this )
{
	this.addCommandID("twostarpolearm");
}

void GetButtonsFor( CBlob@ this, CBlob@ caller )
{
	CBitStream params;
	params.write_u16(caller.getNetworkID());
	u8 kek = caller.getTeamNum();	
	if (kek == 0)
	{
		caller.Tag("twostarpolearm");
		caller.CreateGenericButton( 11, Vec2f_zero, this, this.getCommandID("twostarpolearm"), "Use this to change into a stronger polearm.", params );
	}
}