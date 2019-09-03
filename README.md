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
npm i -g serverless
sls offline
```

1. Shell 3

```bash
./run.sh   # upload file to local blob
```

1. Monitor `Shell 2` for output

```bash
[9/3/19 8:23:42 PM] Executing 'Functions.storageBlob' (Reason='New blob detected: blob-sample/sample-2019-09-03.json', Id=a5859f8b-b807-4fa7-a70b-31a116450ed2)
[9/3/19 8:21:54 PM] ================= MESSAGE START =================
[9/3/19 8:21:54 PM] Blob name:  sample-2019-09-03.json
[9/3/19 8:21:54 PM] Blob length:  26  bytes
[9/3/19 8:21:54 PM] Blob content: {
[9/3/19 8:21:54 PM]   "data": "I'm a blob"
[9/3/19 8:21:54 PM] }
[9/3/19 8:21:54 PM] ================= MESSAGE END ================
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
npm i -g serverless
sls offline
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
