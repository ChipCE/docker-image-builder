# Docker image builder

## 1.ファイル構造

```
Linux OS
│
└───etc
│   │───supervisor.conf
|   |───supervisor
|          └─ conf.d
|               └─ app.conf
|
└───Dockerfile
|
└───data
|   |───*Application files
|
└───build.conf

```

- supervisor.conf : supervisor設定ファイル(変更しないこと)
- app.conf : アプリ起動設定
- Dockerfile : Docker設定ファイル
- build.conf : ビルド設定ファイル

## 2.設定手順
- build.confを編集し、image名を入力する
- Dockerfileを編集し、必要のpackage名、ファイルコピー、ポート番号を設定する
- app.confを編集し、アプリ起動のパースを入力する
- build.shを実行する