require 'json'
require "openai"

class ChatGpt
  class << self
    def get_text(event)
      event_body_json = JSON.parse(event["body"])
      req_text = event_body_json.dig("events", 0, "message", "text")

      client = OpenAI::Client.new(access_token: ENV['CHAT_GPT_API_KEY'])

      response = client.chat(
        parameters: {
          model: "gpt-3.5-turbo",
          messages: [{ role: "user", content: req_text}],
          temperature: 0.7,
        })

      response.dig("choices", 0, "message", "content").gsub(/[\r\n]/,"") # 改行を削除
    end
  end
end
