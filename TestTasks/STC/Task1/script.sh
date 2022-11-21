#!/bin/bash
function advancedMenu() {
    ADVSEL=$(whiptail --title "Advanced Menu" --fb --menu "Choose an option" 15 60 4 \
        "1" "Вариант 1" \
        "2" "Вариант 2" \
        "3" "Вариант 3" \
        "4" "Вариант 4" \
        "5" "Вариант 5" 3>&1 1>&2 2>&3)
    case $ADVSEL in
        1)
            whiptail --title "Вариант 1" --msgbox "Выбран тэг: var1" 8 45
        ;;
        2)
            whiptail --title "Вариант 2" --msgbox "Выбран тэг: var2" 8 45
        ;;
        3)
            whiptail --title "Вариант 3" --msgbox "Выбран тэг: var3" 8 45
        ;;
        4)
            whiptail --title "Вариант 4" --msgbox "Выбран тэг: var4" 8 45
        ;;
        5)
            whiptail --title "Вариант 5" --msgbox "Выбран тэг: var5" 8 45
        ;;
    esac
}
advancedMenu
