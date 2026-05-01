#!/bin/bash
echo "Asser Terminal game"
echo "============="
health=10
monster_hp=10
echo "Type your username: "
read username
while true; do
    echo ""
    echo "Hello $username"
    echo "Your health is $health"
    echo "Monster health is $monster_hp"
    echo "Pick a choice: "
    echo "1- Fight against a monster"
    echo "2- Heal yourself"
    echo "3- Quit game"
    read choice
    case "$choice" in
        1)
            echo ""
            echo  "$username health: $health | monster health: $monster_hp"
            damage=$((RANDOM % 5 + 1))
            monster_hp=$((monster_hp - damage))
            echo "$username damages to monster: $damage"
            damage=$((RANDOM % 5 + 1))
            health=$((health - damage))
            echo "Monster damages to $username: $damage"
            ;;
        2)
            echo ""
            echo "You healed yourself"
            echo "You gained 2 healths"
            health=$((health + 2))
            ;;
        3)
            echo ""
            echo "You quited"
            break
            ;;
    esac
    if [ "$health" -le 0 ]; then
        echo ""
        echo "You died"
        break
    fi

     if [ "$monster_hp" -le 0 ]; then
        echo ""
        echo "You won! Monster is dead!"
        break
    fi

    if [ "$health" -gt 10 ]; then
    health=10
    fi
done
