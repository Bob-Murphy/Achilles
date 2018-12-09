/*
    Authors:
        Kex
    
    Description:
        Macros for function and variable names and definitions
*/

// Inclusion guard
#ifndef ACHILLES_FUNCTIONS_MACROS
#define ACHILLES_FUNCTIONS_MACROS

// Helper macros
// Quotes
#ifndef QUOTE
	#define QUOTE(INP)                                  #INP
#endif
#ifndef DBLQUOTE
	#define DBLQUOTE(INP)                               QUOTE(QUOTE(INP))
#endif
// We normally write these explicitly, unless they don't work otherwise
// Concatenate names
#ifndef CAT_NAME_2
	#define CAT_NAME_2(INP1, INP2)                      ##INP1##_##INP2
#endif
#ifndef CAT_NAME_3
	#define CAT_NAME_3(INP1, INP2, INP3)                ##INP1##_##INP2##_##INP3
#endif
// Concatenate paths and quote
#ifndef QCAT_PATH_2
	#define QCAT_PATH_2(PATH1, PATH2)                       QUOTE(PATH1\PATH2)
#endif
#ifndef QCAT_PATH_3
	#define QCAT_PATH_3(PATH1, PATH2, PATH3)                QUOTE(PATH1\PATH2\PATH3)
#endif

// Define root path
#define FUNCTIONS_ROOT_PATH                             \achilles\functions_f\functions

// Functions in Achilles convention with 0 category levels
// Function name:   <ADDON>_fnc_<NAME>
#define FUNC_0(ADDON, NAME)                             ADDON##_fnc_##NAME
#define QFUNC_0(ADDON, NAME)                            QUOTE(FUNC_0(ADDON,NAME))
#define QQFUNC_0(ADDON, NAME)                           DBLQUOTE(FUNC_0(ADDON,NAME))

// Variables in Achilles convention with 0 category levels
// Variable name:   <ADDON>_var_<NAME>
#define GVAR_0(ADDON, NAME)                             ADDON##_var_##NAME
#define QGVAR_0(ADDON, NAME)                            QUOTE(GVAR_0(ADDON,NAME))
#define QQGVAR_0(ADDON, NAME)                           DBLQUOTE(GVAR_0(ADDON,NAME))

// Functions in Achilles convention with 1 category level
// Function name:   <ADDON>_fnc_<CATEGORY>_<NAME>
#define FUNC_1(ADDON, CATEGORY, NAME)                   ADDON##_fnc_##CATEGORY##_##NAME
#define QFUNC_1(ADDON, CATEGORY, NAME)                  QUOTE(FUNC_1(ADDON,CATEGORY,NAME))
#define QQFUNC_1(ADDON, CATEGORY, NAME)                 DBLQUOTE(FUNC_1(ADDON,CATEGORY,NAME))

// Variables in Achilles convention with 1 category level
// Variable name:   <ADDON>_fnc_<CATEGORY>_<NAME>
#define GVAR_1(ADDON, CATEGORY, NAME)                   ADDON##_var_##CATEGORY##_##NAME
#define QGVAR_1(ADDON, CATEGORY, NAME)                  QUOTE(GVAR_1(ADDON,CATEGORY,NAME))
#define QQGVAR_1(ADDON, CATEGORY, NAME)                 DBLQUOTE(GVAR_1(ADDON,CATEGORY,NAME))

// Functions in Achilles convention with 2 category levels
// Function name:   <ADDON>_fnc_<CATEGORY>_<NAME>
#define FUNC_2(ADDON, CATEGORY, SUBCATEGORY, NAME)      ADDON##_fnc_##CATEGORY##_##SUBCATEGORY##_##NAME
#define QFUNC_2(ADDON, CATEGORY, SUBCATEGORY, NAME)     QUOTE(FUNC_2(ADDON,CATEGORY,SUBCATEGORY,NAME))
#define QQFUNC_2(ADDON, CATEGORY, SUBCATEGORY, NAME)    DBLQUOTE(FUNC_2(ADDON,CATEGORY,SUBCATEGORY,NAME))

// Variables in Achilles convention with 2 category levels
// Variable name:   <ADDON>_fnc_<CATEGORY>_<NAME>
#define GVAR_2(ADDON, CATEGORY, SUBCATEGORY, NAME)      ADDON##_var_##CATEGORY##_##SUBCATEGORY##_##NAME
#define QGVAR_2(ADDON, CATEGORY, SUBCATEGORY, NAME)     QUOTE(GVAR_2(ADDON,CATEGORY,SUBCATEGORY,NAME))
#define QQGVAR_2(ADDON, CATEGORY, SUBCATEGORY, NAME)    DBLQUOTE(GVAR_2(ADDON,CATEGORY,SUBCATEGORY,NAME))

// Achilles functions with 0 category levels
// Function name:   Achilles_fnc_<NAME>
// Function source: "\achilles\functions_f\common\fnc_<NAME>.sqf"
#define DEF_FUNC_ACHIL_0(NAME)                          class NAME {file = QCAT_PATH_2(FUNCTIONS_ROOT_PATH,common\CAT_NAME_2(fnc,NAME).sqf)}
#define FUNC_ACHIL_0(NAME)                              FUNC_0(Achilles,NAME)
#define QFUNC_ACHIL_0(NAME)                             QFUNC_0(Achilles,NAME)
#define QQFUNC_ACHIL_0(NAME)                            QQFUNC_0(Achilles,NAME)

// Achilles functions with 1 category level
// Function name:   Achilles_fnc_<CATEGORY>_<NAME>
// Function source: "\achilles\functions_f\<CATEGORY>\fnc_<NAME>.sqf"
#define DEF_FUNC_ACHIL_1(CATEGORY,NAME)                 class CATEGORY##_##NAME {file = QCAT_PATH_2(FUNCTIONS_ROOT_PATH,CATEGORY\CAT_NAME_2(fnc,NAME).sqf)}
#define FUNC_ACHIL_1(CATEGORY,NAME)                     FUNC_1(Achilles,CATEGORY,NAME)
#define QFUNC_ACHIL_1(CATEGORY,NAME)                    QFUNC_1(Achilles,CATEGORY,NAME)
#define QQFUNC_ACHIL_1(CATEGORY,NAME)                   QQFUNC_1(Achilles,CATEGORY,NAME)

// Achilles variables with 1 category level
// Variable name:   Achilles_var_<CATEGORY>_<NAME>
#define GVAR_ACHIL_1(CATEGORY, NAME)                    GVAR_1(Achilles, CATEGORY, NAME)
#define QGVAR_ACHIL_1(CATEGORY, NAME)                   QGVAR_1(Achilles, CATEGORY, NAME)
#define QQGVAR_ACHIL_1(CATEGORY, NAME)                  QQGVAR_1(Achilles, CATEGORY, NAME)

// Achilles functions with 2 category levels
// Function name:   Achilles_fnc_<CATEGORY>_<SUBCATEGORY>_<NAME>
// Function source: "\achilles\functions_f\<CATEGORY>\<SUBCATEGORY>\fnc_<NAME>.sqf"
#define DEF_FUNC_ACHIL_2(CATEGORY, SUBCATEGORY, NAME)   class CATEGORY##_##SUBCATEGORY##_##NAME {file = QCAT_PATH_2(FUNCTIONS_ROOT_PATH,CATEGORY\SUBCATEGORY\CAT_NAME_2(fnc,NAME).sqf)}
#define FUNC_ACHIL_2(CATEGORY, SUBCATEGORY, NAME)       FUNC_2(Achilles,CATEGORY,SUBCATEGORY,NAME)
#define QFUNC_ACHIL_2(CATEGORY, SUBCATEGORY, NAME)      QFUNC_2(Achilles,CATEGORY,SUBCATEGORY,NAME)
#define QQFUNC_ACHIL_2(CATEGORY, SUBCATEGORY, NAME)     QQFUNC_2(Achilles,CATEGORY,SUBCATEGORY,NAME)

// Achilles variables with 2 category levels
// Name:    Achilles_var_<CATEGORY>_<SUBCATEGORY>_<NAME>
#define GVAR_ACHIL_2(CATEGORY, SUBCATEGORY, NAME)       GVAR_2(Achilles,CATEGORY,SUBCATEGORY,NAME)
#define QGVAR_ACHIL_2(CATEGORY, SUBCATEGORY, NAME)      QGVAR_2(Achilles,CATEGORY,SUBCATEGORY,NAME)
#define QQGVAR_ACHIL_2(CATEGORY, SUBCATEGORY, NAME)     QQGVAR_2(Achilles,CATEGORY,SUBCATEGORY,NAME)

// Ares functions with 1 category level
// Function name:   Ares_fnc_<NAME>
// Function source: "\achilles\functions_f\ares\fnc_<NAME>.sqf"
#define DEF_FUNC_ARES_0(NAME)                           class NAME {file = QCAT_PATH_2(FUNCTIONS_ROOT_PATH,ares\CAT_NAME_2(fnc,NAME).sqf)}
#define FUNC_ARES_0(NAME)                               FUNC_0(Ares,NAME)
#define QFUNC_ARES_0(NAME)                              QFUNC_0(Ares,NAME)
#define QQFUNC_ARES_0(NAME)                             QQFUNC_0(Ares,NAME)

// Ares variables with 0 category levels
// Name:    Ares_var_<NAME>
#define GVAR_ARES_0(NAME)                               GVAR_0(Ares,NAME)
#define QGVAR_ARES_0(NAME)                              QGVAR_0(Ares,NAME)
#define QQGVAR_ARES_0(NAME)                             QQGVAR_0(Ares,NAME)

// CBA functions with 0 category levels
// Function name:   CBA_fnc_<NAME>
#define FUNC_CBA_0(NAME)                                GVAR_0(CBA,NAME)
#define QFUNC_CBA_0(NAME)                               QGVAR_0(CBA,NAME)
#define QQFUNC_CBA_0(NAME)                              QQGVAR_0(CBA,NAME)

// ACE functions with 1 category level
// (note that ACE convention is different from Achilles, since it does not use the BIS function framework)
// Function name:   ACE_<CATEGORY>_fnc_<NAME>
#define FUNC_ACE_1(CATEGORY, NAME)                      ACE_##CATEGORY##_fnc_##NAME
#define QFUNC_ACE_1(CATEGORY, NAME)                     QUOTE(FUNC_ACE_1(CATEGORY,NAME))
#define QQFUNC_ACE_1(CATEGORY, NAME)                    DBLQUOTE(FUNC_ACE_1(CATEGORY,NAME))

// ACE variables with 1 category level
// (note that ACE convention is different from Achilles)
// Variable name:   ACE_<CATEGORY>_<NAME>
#define GVAR_ACE_1(CATEGORY, NAME)                      ACE_##CATEGORY##_##NAME
#define QGVAR_ACE_1(CATEGORY, NAME)                     QUOTE(GVAR_ACE_1(CATEGORY,NAME))
#define QQGVAR_ACE_1(CATEGORY, NAME)                    DBLQUOTE(GVAR_ACE_1(CATEGORY,NAME))

// BIS variables with 0 category levels
// Function name:   BIS_<NAME>
#define GVAR_BIS_0(NAME)                                CAT_NAME_2(BIS,NAME)
#define QGVAR_BIS_0(NAME)                               QUOTE(GVAR_BIS_0(NAME))
#define QQGVAR_BIS_0(NAME)                              DBLQUOTE(GVAR_BIS_0(NAME))

// BIS variables with 1 category level
// Variable name:   BIS_<CATEGORY>_<NAME>
#define GVAR_BIS_1(CATEGORY, NAME)                      BIS_##CATEGORY##_##NAME
#define QGVAR_BIS_1(CATEGORY, NAME)                     QUOTE(GVAR_BIS_1(CATEGORY,NAME))
#define QQGVAR_BIS_1(CATEGORY, NAME)                    DBLQUOTE(GVAR_BIS_1(CATEGORY,NAME))

// BIS functions with 0 category levels
// Variable name:   BIS_fnc_<NAME>
#define FUNC_BIS_0(NAME)                                FUNC_0(BIS,NAME)
#define QFUNC_BIS_0(NAME)                               QFUNC_0(BIS,NAME)
#define QQFUNC_BIS_0(NAME)                              QQFUNC_0(BIS,NAME)

// BIS functions with 1 category level
// Function name:   BIS_fnc_<CATEGORY>_<NAME>
#define FUNC_BIS_1(CATEGORY, NAME)                      FUNC_1(BIS,CATEGORY,NAME)
#define QFUNC_BIS_1(CATEGORY, NAME)                     QFUNC_1(BIS,CATEGORY,NAME)
#define QQFUNC_BIS_1(CATEGORY, NAME)                    QQFUNC_1(BIS,CATEGORY,NAME)

#endif
