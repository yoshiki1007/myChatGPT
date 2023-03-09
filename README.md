# my-chat-gpt

## 利用サービス

- OpenAi API / model gpt-3.5-turbo
- AWS SAM
- Official Line / Messaging API

## 概要

LINE公式アカウントへメッセージを送信すると、ChatGPTが内容に基づいて呼応して返信してくれます。

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