## Running nmap in a container

Intention: Avoid PID 1 at execution time, use a target for the CMD and an ENTRYPOINT

`nmap -sV -sC 192.168.1.1`
