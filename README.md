# commit-message-for-me

This repo is just a memo for me.  
追記：PowerShell では [`gitcm`](#gitcmcommit-message-for-me-generator-for-powershell) というコマンドでコミットメッセージを作れるようにしました。

## メモ

| emoji                 | prefix    | English describe                                                                                       | Japanese describe                      |
| --------------------- | --------- | ------------------------------------------------------------------------------------------------------ | -------------------------------------- |
| 🌱 `:seedling:`       | create:   | create a new file                                                                                      | 新規ファイル作成                       |
| ✨ `:sparkles:`       | feat:     | A new feature                                                                                          | 新しい機能                             |
| 🐛 `:bug:`            | fix:      | A bug fix                                                                                              | バグの修正                             |
| 📝 `:memo:`           | docs:     | Documentation only changes                                                                             | ドキュメントのみの変更                 |
| 💄 `:lipstick:`       | style:    | Changes that do not affect the meaning of the code (white-space, formatting, missing semi-colons, etc) | 空白、フォーマット、セミコロン追加など |
| ♻️ `:recycle:`        | refactor: | A code change that neither fixes a bug nor adds a feature                                              | 仕様に影響がないコード改善(リファクタ) |
| ⚡️ `:zap:`           | perf:     | A code change that improves performance                                                                | パフォーマンス向上のコード改善         |
| 🚨 `:rotating_light:` | test:     | Adding missing or correcting existing tests                                                            | テスト追加、修正                       |
| 🔧 `:wrench:`         | chore:    | Changes to the build process or auxiliary tools and libraries such as documentation generation         | ビルド、補助ツール、ライブラリ関連     |

example:

```sh
git commit -m ":sparkles:feat: add new feature"
```

then commit message will be:  
![commit-message-on-github](https://user-images.githubusercontent.com/63878044/163709738-40bd9464-9e33-4962-bb54-b99be97fc208.png)

## gitcm(commit-message-for-me generator) for PowerShell

| option   | commit message                    | English description                                                                                    | Japanese description                   |
| -------- | --------------------------------- | ------------------------------------------------------------------------------------------------------ | -------------------------------------- |
| create   | `🌱create: your_commit_message`   | create a new file                                                                                      | 新規ファイル作成                       |
| feat     | `✨feat: your_commit_message`     | A new feature                                                                                          | 新しい機能                             |
| fix      | `🐛fix: your_commit_message`      | A bug fix                                                                                              | バグの修正                             |
| docs     | `📝docs: your_commit_message`     | Documentation only changes                                                                             | ドキュメントのみの変更                 |
| style    | `💄style: your_commit_message`    | Changes that do not affect the meaning of the code (white-space, formatting, missing semi-colons, etc) | 空白、フォーマット、セミコロン追加など |
| refactor | `♻️refactor: your_commit_message` | A code change that neither fixes a bug nor adds a feature                                              | 仕様に影響がないコード改善             |
| perf     | `⚡️perf: your_commit_message`    | A code change that improves performance                                                                | パフォーマンス向上のコード改善         |
| test     | `🚨test: your_commit_message`     | Adding missing or correcting existing tests                                                            | テスト追加、修正                       |
| chore    | `🔧chore: your_commit_message`    | Changes to the build process or auxiliary tools and libraries such as documentation generation         | ビルド、補助ツール、ライブラリ関連     |
| none     | `your_commit_message`             | No prefix                                                                                              | 接頭辞なしでコミット                   |

example:

```sh
$ gitcm feat "add new feature"
```

then commit message will be:  
![commit-message-on-github](https://user-images.githubusercontent.com/63878044/163709738-40bd9464-9e33-4962-bb54-b99be97fc208.png)

## Install

This is a PowerShell script.  
You can install it if you use PowerShell.  
Run this command to install:

```sh
$ git clone https://github.com/shebang-sh/commit-message-for-me.git
$ "`r`n. " + $(Join-Path $(Get-Location) \commit-message-for-me\gitcm.ps1) >> $PROFILE
$ . .\commit-message-for-me\gitcm.ps1
```

### 参考

1. [僕が考える最強のコミットメッセージの書き方](https://qiita.com/konatsu_p/items/dfe199ebe3a7d2010b3e)
2. [GitHub のコミットメッセージに絵文字を入れて開発効率をあげる](https://qiita.com/Jung0/items/0a9a7a97a2c17f92d3c5)
