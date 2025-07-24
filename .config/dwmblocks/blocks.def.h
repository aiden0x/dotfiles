//Modify this file to change what commands output to your statusbar, and recompile using the make command.
#define STATUSCMD 1
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"", "nettraf", 1, 0},
	{"", "netstat", 5, 0},
	{"bat: ", "batstat", 5, 0},
	{"mem: ", "free -h | awk '/^Mem/{print substr($3, 1, length($3)-1)}'", 5, 0},
	{"cpu: ", "printf '[%.2f%%] - [%s]' $(grep -o '^[^ ]*' /proc/loadavg) $(sensors | awk '/Package id/{print $4}')", 10, 0},
	{"", "date '+%b %d (%a) %I:%M %p'", 10, 0},
	{"vol: ", "volumectl", 0, 10}
};

//sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = "   |   ";
static unsigned int delimLen = 10;

