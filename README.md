# gobuster-docker
A containerised version of [Gobuster](https://github.com/OJ/gobuster).

## Building the container
```bash
docker build -t gobuster-docker:latest
```
## Running the container
```bash
docker run --rm gobuster-docker <GOBUSTER_ARGS>

## Example:
docker run --rm gobuster-docker dir -u 192.168.1.5 -w /usr/share/wordlists/dirbuster/directory-list-2.3-small.txt
```

## Dockerfile Entrypoint
```dockerfile
ENTRYPOINT ["/sbin/tini", "--", "/usr/bin/gobuster"]
```
