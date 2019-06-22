/*
  Set any config.h overrides for your specific keymap here.
  See config.h options at https://docs.qmk.fm/#/config_options?id=the-configh-file
*/
#pragma once

// my ergodox has serious problems with duplicate keys,
// but this stupid high debounce value seems to fix it
#undef  DEBOUNCE
#define DEBOUNCE 20
#undef  DEBOUNCE_TYPE
#define DEBOUNCE_TYPE sym_g

#undef  NO_DEBUG
#define NO_DEBUG

#undef  NO_PRINT
#define NO_PRINT

#define NO_ACTION_MACRO
