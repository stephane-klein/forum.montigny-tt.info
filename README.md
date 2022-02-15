# forum.montigny-tt.info environment

```sh
$ docker-compose up
```

Extract `config.php.gpg` file:

```sh
$ gpg --decrypt config.php.gpg
```

## Generate and upload backup snapshot

```
$ wget https://dl.min.io/client/mc/release/linux-amd64/mc
$ chmod +x mc
```

```
$ gpg --decrypt secrets.gpg
```

```
$ ./scripts/upload-backup-snapshot.sh
```
