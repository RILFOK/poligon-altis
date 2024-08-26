class CLIENT
{
	tag = "client";
	class client
	{
		file = "CLIENT";
		class createTeleport {};
		class DefaultLoadOut_a {};
		class DefaultLoadOut_rp {}; 
		class diary {};
	};
};
class TB
{
	tag = "TB";
	class tb
	{
		file = "CLIENT\tb";
		class createChannels {};
		class openArsenal {};
		class applyRestrictions {};
		class arsenal {};
		class attachMP {};
	};
};

class BT
{
	tag = "BT";

	class functions
	{
		file = "BT_GUI\functions";
		class playerSpawn {};
		class main_menu {};
		class green {};
		class delo {};
		class ierarh {};
		class info {};
	};
	
	class adminka
	{
		file = "CLIENT\BT_func\adminka";
		class adminka {};	
		class adm_main_menu {};	
		class adm_specmission {};
		class specmission_call_db {};
		class spec_save_db {};
		class kick_menu {};
	};
};

class BT_GUI
{
	tag = "bt_gui";

	class circleMenu
	{
		file = "BT_GUI\circleMenu";
		class circleMenuOpen {};
	};
	class progressBar
	{
		file = "BT_GUI\progressBar";
		class init {};
	};
};


class BT_ADMINMENU
{
	tag = "bt_admin";

	class adminMenu 
	{
		file = "BT_GUI\adminMenu";
		class adminInit {};
		class comboChange {};
		class listChange {};
		class checkChange {};
	};
};

class BT_AVIAMENU
{
	tag = "bt_avia";

	class aviaMenu 
	{
		file = "BT_GUI\aviaMenu";
		class aviaInit {};
		class comboChange {};
		class listChange {};
		class checkChange {};
		class cam {};
	};
};

class BT_TANKMENU
{
	tag = "bt_tank";

	class tankMenu 
	{
		file = "BT_GUI\tankMenu";
		class tankInit {};
		class comboChange {};
		class listChange {};
		class checkChange {};
	};
};

class BT_GREENMENU
{
	tag = "bt_green";

	class greenMenu 
	{
		file = "BT_GUI\greenMenu";
		class greenInit {};
		class comboChange {};
		class listChange {};
		class checkChange {};
	};
};

class BT_LEVELMENU
{
	tag = "bt_level";

	class levelMenu 
	{
		file = "BT_GUI\levelMenu";
		class levelInit {};
		class comboChange {};
		class listChange {};
		class checkChange {};
		class expButtonPlus {};
		class expButtonMinus {};
		class changeButton {};
	};
};

class BT_KICKMENU
{
	tag = "bt_kick";

	class kickMenu 
	{
		file = "BT_GUI\kickMenu";
		class kickInit {};
		class comboChange {};
		class listChange {};
		class checkChange {};
		class kickButton {};
	};
};

class BT_ANIMMENU
{
	tag = "bt_anim";

	class animMenu 
	{
		file = "BT_GUI\animMenu";
		class animInit {};
		class comboChange {};
		class animPlay {};
	};
};

class BT_KMBMENU
{
	tag = "bt_kmenu";

	class kmbMenu 
	{
		file = "BT_GUI\kmbMenu";
		class kmbMenuInit {};
		class comboChange {};
		class kmbMenuButton {};
	};
};

class BT_MEDALMENU
{
	tag = "bt_medal";

	class medalMenu
	{
		file = "BT_GUI\medalMenu";
		class medalButton {};
		class medalInit {};
		class comboChange1 {};
		class checkChange1 {};
	};
};

class BT_MEDALPLAYER
{
	tag = "bt_medalPlayer";

	class medalPlayer
	{
		file = "BT_GUI\medalPlayer";
		class medalInit1 {};
		class backButton {};
		class medalPlayerButton {};
		class giveButton {};
		class takeButton {};
		class info {};
	}
};