//Modify this file to change what commands output to your statusbar, and recompile using the make command.
#define STATUSCMD 1
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{" ", "$HOME/.config/dwmblocks/scripts/dwm_weather.sh", 600, 0},
	{" ", "volumectl", 0, 10},
	{" ", "free -h --giga | awk '/Mem/ {print $3}'", 5, 0},
	{" ", "top -bn1 | grep 'Cpu(s)' | awk '{print $2 + $4 \"%\"}'", 10, 0},
	{" ", "$HOME/.config/dwmblocks/scripts/cpu_temp.sh", 10, 0},
	{" ", "$HOME/.config/dwmblocks/scripts/wifi_status.sh", 5, 0},
	/*{"", "nettraf", 1, 0},*/
	/*{"", "netstat", 5, 0},*/
	{" ", "$HOME/.config/dwmblocks/scripts/batstate.sh", 5, 0},
	{" ", "date '+%I:%M %p - %a %d %b '", 10, 0},
};

//sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = "    ";
static unsigned int delimLen = 10;
