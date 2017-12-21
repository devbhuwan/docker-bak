#!/usr/bin/env bash
# Bash Menu Script Example

PS3='Please enter your choice: '
options=("Build Image" "Start Container" "Prune System" "Push Image" "Docker Login" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Build Image")
            echo "you chose 'Build Image'"
            docker-compose build
            ;;
        "Start Container")
            echo "you chose 'Start Container'"
            docker-compose up
            ;;
        "Prune System")
            echo "you chose 'Prune System'"
            docker system prune
            ;;
        "Push Image")
            echo "you chose 'Push Image'"
            docker push xcloudschool/formio
            ;;
        "Docker Login")
            echo "you chose 'Docker Login'"
            docker login
            ;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done
