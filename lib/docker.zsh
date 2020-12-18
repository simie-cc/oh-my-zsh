
#type docker > /dev/null 2>&1 && echo "Extended docker command registered, usage can find by 'docker-ex-help'"

docker-ex-help() {
    echo "docker-pss   - Search container"
    echo 'docker-logst - Same as "docker logs --tail=200 -f"'
    echo 'docker-logs  - Same as "docker logs xx | less"'
}

docker-pss() {
    dockerps=`docker ps | grep $1 | head -1`
    if [ -z "$dockerps" ]; then
        echo "No matching container"
    else
        >&2 echo -ne "Matching container:\n${dockerps}\n"
        echo "${dockerps}" | cut -f 1 -d ' '
    fi
}

docker-logst() {
    docker logs --tail=200 -f $*
}

docker-logs() {
    docker logs "$1" | less +G
}

alias docker-pid="docker ps -q | xargs docker inspect --format '{{.State.Pid}}, {{.ID}}, {{.Name}}'"
