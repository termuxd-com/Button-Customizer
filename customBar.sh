#!/bin/bash
echo "Welcome to Button Customizer
_______________________________

Type y to make it yourself / Type n to use templates?
"
read answer
if [ "${answer}" == "y" ]; then
    echo "Chosen answer is y
    _______________________________
    |  1    2   3   4   5   6   7 |
    |  8    9  10  11  12   13  14|
    |_____________________________|
    
    The numbers represent the buttons you will type.
    
    "
    echo "type s to see supported keys"
    read type
    if [ "${type}" == "s" ]; then
        echo """
 CTRL ("special key")
 ALT ("special key")
 FN ("special key")
 SPACE ESC TAB 
 HOME END PGUP
 PGDN INS DEL 
 BKSP UP LEFT RIGHT
 DOWN ENTER BACKSLASH
 QUOTE APOSTROPHE
 F1, F2, F3, F4, F5, F6,
 F7, F8, F9, F10, F11, F12
 KEYBOARD (Hide the keyboard)
 DRAWER (Open app drawer)
"""
    fi
    echo "Enter your characters (14x)"
    read a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14
    echo $a1 $a2 $a3 $a4 $a5 $a6 $a7 $a8 $a9 $a10 $a11 $a12 $a13 $a14
    echo "Do you confirm ? yes/no"
    read confirm
    if [ "${confirm}" == "yes" ] || [ "${confirm}" == "y" ]; then
        echo "Chosen answer is yes"
        
        echo "extra-keys = [['$a1','$a2','$a3','$a4','$a5','$a6','$a7'],['$a8','$a9','$a9','$a10','$a11','$a12','$a13']]" >>$HOME/.termux/termux.properties && termux-reload-settings && sleep 1
    elif [ "${confirm}" == "no" ] || [ "${confirm}" == "n" ]; then
        echo "Chosen answer is n"
    fi

elif

    [ "${answer}" == "n" ]
then
    echo "Chosen answer is n
    
    Template 1 
    ============================
    ESC  /     -   HOME UP   END
    Tab CTRL  ALT  LEFT DOWN LEFT
    =============================

    Template 2
    ==================================
    F1  F2   F3   F4     F5  F6   F7
    ESC  /    -   HOME   UP  END  PGUP
    Tab CTRL  ALT LEFT  DOWN LEFT PGDN
    ==================================

    Template 3
    ==================================
    ESC  /    -   HOME   UP  END  PGUP
    Tab CTRL  ALT LEFT  DOWN LEFT PGDN
    ==================================    
    
    type template number [1-3]

    "
    read templates

    if [ "${templates}" == "1" ]; then
        echo "Chosen answer is 1"
        echo "extra-keys = [['ESC','/','-','HOME','UP','END'],['TAB','CTRL','ALT','LEFT','DOWN','RIGHT']]" >> $HOME/.termux/termux.properties && termux-reload-settings && sleep 1 && exit 1
    elif [ "${templates}" == "2" ]; then
        echo "Chosen answer is 2"
        echo "extra-keys = [['F1','F2','F3','F4','F5','F6','F7'],['ESC','/','-','HOME','UP','END','PGUP'],['TAB','CTRL','ALT','LEFT','DOWN','RIGHT','PGDN']]" >> $HOME/.termux/termux.properties && termux-reload-settings && sleep 1 && exit 1
    elif [ "${templates}" == "3" ]; then
        echo "Chosen answer is 3"
        echo "extra-keys = [['ESC','/','-','HOME','UP','END','PGUP'],['TAB','CTRL','ALT','LEFT','DOWN','RIGHT','PGDN']]" >> $HOME/.termux/termux.properties && termux-reload-settings && sleep 1 && exit 1
    fi
    
fi
