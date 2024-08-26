#include "CustomControlClasses.h"

class FortificationMenu
{
	idd = 555400;
	
	class ControlsBackground
	{
		
	};
	class Controls
	{
		class titlename
		{
			type = 0;
			idc = 555401;
			x = safeZoneX + safeZoneW * 0.34375;
			y = safeZoneY + safeZoneH * 0.32222223;
			w = safeZoneW * 0.3125;
			h = safeZoneH * 0.03666667;
			style = 0;
			text = "меню фортификаций";
			colorBackground[] = {0,0,0,0.5};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class list
		{
			type = 5;
			idc = 555402;
			x = safeZoneX + safeZoneW * 0.34375;
			y = safeZoneY + safeZoneH * 0.37111112;
			w = safeZoneW * 0.1625;
			h = safeZoneH * 0.21222223;
			style = 16;
			colorBackground[] = {0,0,0,0.5};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorSelect[] = {1,1,1,1};
			colorText[] = {0.502,0.502,0.502,1};
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			rowHeight = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1.0};
			class ListScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
				
			};
			
		};
		class isBuilded
		{
			type = 0;
			idc = 555406;
			x = safeZoneX + safeZoneW * 0.34625;
			y = safeZoneY + safeZoneH * 0.59222223;
			w = safeZoneW * 0.304375;
			h = safeZoneH * 0.02555556;
			style = 0;
			text = "Возведен:";
			colorBackground[] = {0,0,0,0.5};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class isType
		{
			type = 0;
			idc = 555407;
			x = safeZoneX + safeZoneW * 0.34625;
			y = safeZoneY + safeZoneH * 0.62222223;
			w = safeZoneW * 0.304375;
			h = safeZoneH * 0.02555556;
			style = 0;
			text = "Тип:";
			colorBackground[] = {0,0,0,0.5};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class create
		{
			type = 1;
			idc = 555404;
			x = safeZoneX + safeZoneW * 0.51375;
			y = safeZoneY + safeZoneH * 0.44444445;
			w = safeZoneW * 0.1425;
			h = safeZoneH * 0.06;
			style = 0+2;
			text = "Удалить";
			borderSize = 0;
			colorBackground[] = {0,0,0,0.5};
			colorBackgroundActive[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.01;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			
		};
		class build
		{
			type = 1;
			idc = 555405;
			x = safeZoneX + safeZoneW * 0.51375;
			y = safeZoneY + safeZoneH * 0.51444445;
			w = safeZoneW * 0.1425;
			h = safeZoneH * 0.06;
			style = 0+2;
			text = "Возвести";
			borderSize = 0;
			colorBackground[] = {0,0,0,0.5};
			colorBackgroundActive[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.01;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			
		};
		class remove
		{
			type = 1;
			idc = 555403;
			x = safeZoneX + safeZoneW * 0.51375;
			y = safeZoneY + safeZoneH * 0.37444445;
			w = safeZoneW * 0.1425;
			h = safeZoneH * 0.06;
			style = 0+2;
			text = "Создать";
			borderSize = 0;
			colorBackground[] = {0,0,0,0.5};
			colorBackgroundActive[] = {1,0,0,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.01;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			
		};
		
	};
	
};


class PG_GET_VEH
{
	idd = 489000;
	movingEnable = false;
	
	class ControlsBackground
	{
		
	};
	class Controls
	{
		class background
		{
			type = 0;
			idc = 489001;
			x = safeZoneX + safeZoneW * 0.34375;
			y = safeZoneY + safeZoneH * 0.27333334;
			w = safeZoneW * 0.3125;
			h = safeZoneH * 0.42777778;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0.746};
			colorText[] = {0.102,0.0118,0.7882,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class title
		{
			type = 0;
			idc = 489002;
			x = safeZoneX + safeZoneW * 0.34375;
			y = safeZoneY + safeZoneH * 0.27333334;
			w = safeZoneW * 0.3125;
			h = safeZoneH * 0.03666667;
			style = 0+2;
			text = "меню призыва техники / наземка";
			colorBackground[] = {0.102,0.102,0.102,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class vehicles
		{
			type = 5;
			idc = 489003;
			x = safeZoneX + safeZoneW * 0.35375;
			y = safeZoneY + safeZoneH * 0.33222223;
			w = safeZoneW * 0.1525;
			h = safeZoneH * 0.35555556;
			style = 16;
			colorBackground[] = {0.102,0.102,0.102,1};
			colorDisabled[] = {0,0,0,1};
			colorSelect[] = {1,1,1,1};
			colorText[] = {0.502,0.502,0.502,1};
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			rowHeight = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1.0};
			class ListScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
				
			};
			
		};
		class spawn
		{
			type = 1;
			idc = 489004;
			x = safeZoneX + safeZoneW * 0.51375;
			y = safeZoneY + safeZoneH * 0.62444445;
			w = safeZoneW * 0.1325;
			h = safeZoneH * 0.06;
			style = 0+2;
			text = "призвать технику";
			borderSize = 0;
			colorBackground[] = {0.102,0.102,0.102,1};
			colorBackgroundActive[] = {0.2,0.2,0.2,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0,0,0,0};
			colorText[] = {0.302,0.502,0.302,1};
			font = "PuristaMedium";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0;
			offsetY = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			
		};
		class gogarage
		{
			type = 1;
			idc = 489005;
			x = safeZoneX + safeZoneW * 0.51375;
			y = safeZoneY + safeZoneH * 0.58444445;
			w = safeZoneW * 0.1325;
			h = safeZoneH * 0.03;
			style = 0+2;
			text = "вернуть в гараж";
			borderSize = 0;
			colorBackground[] = {0.102,0.102,0.102,1};
			colorBackgroundActive[] = {0.302,0.302,0.302,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0,0,0,0};
			colorText[] = {0.8,0.2,0.2,1};
			font = "PuristaMedium";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.01;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			
		};
		class status
		{
			type = 0;
			idc = 489006;
			x = safeZoneX + safeZoneW * 0.51375;
			y = safeZoneY + safeZoneH * 0.33444445;
			w = safeZoneW * 0.1325;
			h = safeZoneH * 0.03;
			style = 0;
			text = "статус:";
			colorBackground[] = {0.102,0.102,0.102,0.8706};
			colorText[] = {1,1,0.502,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		
	};
	
};

class PG_GUIS
{
	idd = 777999;
	
	class ControlsBackground
	{
		
	};
	class Controls
	{
		class Background
		{
			type = 0;
			idc = 777000;
			x = safeZoneX + safeZoneW * 0.31875;
			y = safeZoneY + safeZoneH * 0.26444445;
			w = safeZoneW * 0.3625;
			h = safeZoneH * 0.45444445;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,1};
			colorText[] = {0.9569,0.8902,0.2196,0.8968};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class Title
		{
			type = 0;
			idc = 777001;
			x = safeZoneX + safeZoneW * 0.31875;
			y = safeZoneY + safeZoneH * 0.26444445;
			w = safeZoneW * 0.3625;
			h = safeZoneH * 0.03666667;
			style = 0+2;
			text = "select_vehicle_for_spawn";
			colorBackground[] = {0.102,0.102,0.102,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class listOfVehicles
		{
			type = 5;
			idc = 777002;
			x = safeZoneX + safeZoneW * 0.32375;
			y = safeZoneY + safeZoneH * 0.31444445;
			w = safeZoneW * 0.1625;
			h = safeZoneH * 0.38555556;
			style = 16;
			colorBackground[] = {0.102,0.102,0.102,1};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorSelect[] = {1,1,1,1};
			colorText[] = {0.6,0.6,0.6,1};
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			rowHeight = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1.0};
			class ListScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
				
			};
			
		};
		class spawn
		{
			type = 1;
			idc = 777003;
			x = safeZoneX + safeZoneW * 0.49375;
			y = safeZoneY + safeZoneH * 0.62444445;
			w = safeZoneW * 0.1825;
			h = safeZoneH * 0.07;
			style = 0+2;
			text = "spawn";
			borderSize = 0;
			colorBackground[] = {0.102,0.102,0.102,1};
			colorBackgroundActive[] = {1,1,1,1};
			colorBackgroundDisabled[] = {0.702,0.702,0.702,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0,0,0,1};
			colorText[] = {0.302,0.502,0.302,1};
			font = "PuristaMedium";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.01;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 2);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			
		};
		class status
		{
			type = 0;
			idc = 777004;
			x = safeZoneX + safeZoneW * 0.493125;
			y = safeZoneY + safeZoneH * 0.31444445;
			w = safeZoneW * 0.1825;
			h = safeZoneH * 0.03;
			style = 0;
			text = "status: ";
			colorBackground[] = {0.102,0.102,0.102,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class back
		{
			type = 1;
			idc = 777005;
			x = safeZoneX + safeZoneW * 0.49375;
			y = safeZoneY + safeZoneH * 0.58444445;
			w = safeZoneW * 0.1825;
			h = safeZoneH * 0.03;
			style = 0+2;
			text = "return_vehicle";
			borderSize = 0;
			colorBackground[] = {0.102,0.102,0.102,1};
			colorBackgroundActive[] = {1,1,1,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {1,1,1,0};
			colorText[] = {0.702,0.102,0.102,1};
			font = "PuristaMedium";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.01;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			
		};
		
	};
	
};
class UnlockPassword
{
	idd = 87700;
	movingEnable = false;
	
	class ControlsBackground
	{
		
	};
	class Controls
	{
		class background
		{
			type = 0;
			idc = 87701;
			x = 0.17500001;
			y = 0.4156566;
			w = 0.67500001;
			h = 0.17424244;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0.8096};
			colorText[] = {0.9216,0.3647,0.5961,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class title
		{
			type = 0;
			idc = 87702;
			x = 0.17500003;
			y = 0.37500019;
			w = 0.67500001;
			h = 0.05000003;
			style = 0+2;
			text = "enter the password to unlock";
			colorBackground[] = {0.102,0.102,0.102,1};
			colorText[] = {0.702,0.102,0.102,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class pole
		{
			type = 2;
			idc = 87703;
			x = 0.20000001;
			y = 0.47500002;
			w = 0.40000002;
			h = 0.07500005;
			style = 0+192;
			text = "x x x x x x";
			autocomplete = "";
			colorBackground[] = {0.102,0.102,0.102,1};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorSelection[] = {0.502,0.502,0.502,1};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class accept
		{
			type = 1;
			idc = 87704;
			x = 0.65000005;
			y = 0.47500005;
			w = 0.15000002;
			h = 0.07500004;
			style = 0+2;
			text = "Enter";
			borderSize = 0;
			colorBackground[] = {0.102,0.102,0.102,1};
			colorBackgroundActive[] = {0.302,0.502,0.302,1};
			colorBackgroundDisabled[] = {0.8,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.01;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			
		};
		
	};
	
};