# my-chat-gpt

<img width="416" alt="スクリーンショット 2023-03-09 23 11 11" src="https://user-images.githubusercontent.com/56143537/224050815-0b0ec6e0-85ad-4c94-a727-2543bc5645f5.png">


## 利用サービス

- OpenAi API / model gpt-3.5-turbo
- AWS SAM
- Official Line / Messaging API

## 概要

LINE公式アカウントへメッセージを送信すると、ChatGPTが内容に基づいて返信してくれます。

## 流れ

1. ユーザーが、LINE公式アカウントにメッセージを送信します。
2. LINEプラットフォームからボットサーバーのWebhook URLにメッセージが送られます。
3. 今回はAWS SAMで設定した関数URLをWebhookに設定、Lambdaでメッセージを受け取ります。
4. 受け取ったメッセージをChatGPTへリクエスト、レスポンスを受け取ります。
5. レスポンスをLINE公式アカウントへ送ります。

## 環境構築

```zsh
 sam build 
```

初回

```zsh
sam deploy --guided
```

2回目

```zsh
sam deploy
```
