class FORT_RscText
{
	deletable = 0;
	fade = 0;
	access = 0;
	type = 0;
	idc = -1;
	colorBackground[] = {0,0,0,0};
	colorText[] = 
	{1,1,1,1};
	text = "";
	fixedWidth = 0;
	x = 0;
	y = 0;
	h = 0.037;
	w = 0.3;
	style = 0;
	shadow = 1;
	colorShadow[] = 
	{0,0,0,0.5};
	font = "RobotoCondensed";
	SizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	linespacing = 1;
	tooltipColorText[] = {1,1,1,1};
	tooltipColorBox[] = {1,1,1,1};
	tooltipColorShade[] = {0,0,0,0.65};
};

class FORT_IGUIBack
{
	type = 0;
	idc = 124;
	style = 128;
	text = "";
	colorText[] = {0,0,0,0};
	font = "RobotoCondensed";
	sizeEx = 0;
	shadow = 0;
	x = 0.1;
	y = 0.1;
	w = 0.1;
	h = 0.1;
	colorbackground[] = 
	{
		"(profilenamespace getvariable ['IGUI_BCG_RGB_R',0])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_G',1])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_B',1])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_A',0.8])"
	};
};

class FortificationInfo 
{
    idd=57420;
	movingEnable=0;
	duration = 1e+011;
	fadein = 0;
	fadeout = 0;
	name = "FortificationInfo";
    onLoad = "uiNamespace setVariable ['FortificationInfo', param [0]]";
	onUnLoad = "uiNamespace setVariable ['FortificationInfo', nil]";
	class controlsclass 
	{
		class backgroundclass: FORT_IGUIBack
		{
			idc = 57421;
			x = 0.29375 * safezoneW + safezoneX;
			y = 0.742 * safezoneH + safezoneY;
			w = 0.4125 * safezoneW;
			h = 0.033 * safezoneH;
		};
		class diggingclasss: FORT_RscText
		{
			idc = 57422;
			text = "digging"; //--- ToDo: Localize;
			x = 0.309219 * safezoneW + safezoneX;
			y = 0.742 * safezoneH + safezoneY;
			w = 0.381563 * safezoneW;
			h = 0.033 * safezoneH;
		};
	};
};