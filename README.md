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
|
└───build.sh
|
└───clear.sh

```

- <code>supervisor.conf</code> : supervisor設定ファイル(変更しないこと)
- <code>app.conf</code> : アプリ起動設定
- <code>Dockerfile</code> : Docker設定ファイル
- <code>build.conf</code> : ビルド設定ファイル
- <code>build.sh</code> : imageをビルドスクリプト
- <code>clear.sh</code> : imageを削除スクリプト

## 2.設定手順
- build.confを編集し、image名を入力する
- Dockerfileを編集し、必要のpackage名、ファイルコピー、ポート番号を設定する
- app.confを編集し、アプリ起動のパースを入力する
- build.shを実行する