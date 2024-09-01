/* See LICENSE file for copyright and license details. */
/* Default settings; can be overriden by command line. */

static int topbar = 1;                      /* -b  option; if 0, dmenu appears at bottom     */
static int centered = 0;                    /* -c option; centers dmenu on screen */
static int min_width = 800;                    /* minimum width when centered */
static const float menu_height_ratio = 2.0f;  /* This is the ratio used in the original calculation */
static int fuzzy  = 1;                      /* -F  option; if 0, dmenu doesn't use fuzzy matching */
/* -fn option overrides fonts[0]; default X11 font or font set */
static const int caret_height = 16;         /* -ch option; set default caret height */
static const int curmargin = 1;             /* set default caret margin */
static const int user_bh = 6;              /* height of dmenu */
static const unsigned int alpha = 0x99;     /* Amount of opacity. 0xff is opaque             */
static const char *fonts[] = {
	"Fira Code:size=12"
};
static const char *prompt      = NULL;      /* -p  option; prompt to the left of input field */
static const char *colors[SchemeLast][2] = {
	/*                  fg         bg       */
	[SchemeNorm] = { "#ba5f2d", "#260f07" },
	[SchemeSel] = { "#ce6932", "#3a170b" },
	[SchemeSelHighlight] = { "#a49166", "#3a170b" },
	[SchemeNormHighlight] = { "#907f59", "#260f07" },
	[SchemeOut] = { "#000000", "#00ffff" },
	[SchemeCaret] = { "#907f59", "#260f07" },
};

static const unsigned int alphas[SchemeLast][2] = {
    [SchemeNorm] = { OPAQUE, alpha },
	[SchemeSel] = { OPAQUE, alpha },
	[SchemeSelHighlight] = { OPAQUE, alpha },
	[SchemeNormHighlight] = { OPAQUE, alpha },
	[SchemeOut] = { OPAQUE, alpha },
	[SchemeCaret] = { OPAQUE, alpha },
};
/* -l and -g options; controls number of lines and columns in grid if > 0 */
static unsigned int lines      = 0;
static unsigned int columns    = 0;

/*
 * Characters not considered part of a word while deleting words
 * for example: " /?\"&[]"
 */
static const char worddelimiters[] = " ";

/* Size of the window border */
static unsigned int border_width = 0;
