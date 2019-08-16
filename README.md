# Overview

instruction to reproduce error connecting to Azurite on v3

## Azurite V2 working

**Note** Azurite is installed as a dev dependency

1. Shell 1

```bash
npm i
npm run azurite:v2  # start azurite
```

1. Shell 2

```bash
func host start
```

1. Shell 3

```bash
./run.sh   # upload file to local blob
```

1. Monitor `Shell 2` for output

```bash
[8/16/19 5:24:04 PM] +++++++++++++>> Blob name: sample.json
[8/16/19 5:24:04 PM] +++++++++++++>> Blob: {"type":"Buffer","data":[123,10,32,32,34,110,97,109,101,34,58,32,34,77,121,34,10,125]}
[8/16/19 5:24:04 PM] Executed 'Functions.storageBlob' (Succeeded, Id=a61e6b1b-aa2b-421d-99c6-292933ed5b00)
```

## Azurite V3

1. Update azurite to v3 in `package.json`

```bash
npm i -s azurite@latest
```

1. Shell 1

```bash
npm i
npm run azurite:v3  # start azurite
```

1. Shell 2

```bash
func host start
```

1. Shell 3

```bash
./run.sh   # upload file to local blob
```

1. Monitor `Shell 2` for error

```bash
[8/16/19 5:33:20 PM] An unhandled exception has occurred. Host is shutting down.
[8/16/19 5:33:20 PM] Microsoft.WindowsAzure.Storage: Connection refused. System.Net.Http: Connection refused. System.Private.CoreLib: Connection refused.
```
