alias d='docker $*'
alias d-c='docker-compose $*'

# Kill all running containers.
alias dockerkillall='docker kill $(docker ps -q)'

# Delete all stopped containers.
alias dockercleanc='printf "\n>>> Deleting stopped containers\n\n" && docker rm $(docker ps -a -q)'

# Delete all untagged images.
alias dockercleani='printf "\n>>> Deleting untagged images\n\n" && docker rmi $(docker images -q -f dangling=true)'

# Delete all stopped containers and untagged images.
alias dockerclean='dockercleanc || true && dockercleani'

# Run interactive container, e.g., $dki base /bin/bash
alias dockerki="docker run -i -t -P"

# Execute interactive container, e.g., $dex base /bin/bash
alias dockerex="docker exec -i -t"
