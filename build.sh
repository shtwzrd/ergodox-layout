#!/bin/sh

docker run --rm -v `pwd`:/qmk_firmware/keyboards/ergodox_ez/keymaps/warreq/:Z ergodox-layout_keyboard
