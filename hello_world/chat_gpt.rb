require 'json'
require "openai"

class ChatGpt
  class << self
    def get_text(event)
      message = event[:body]
      client = OpenAI::Client.new(access_token: ENV['CHAT_GPT_API_KEY'])

      response = client.chat(
        parameters: {
          model: "gpt-3.5-turbo",
          messages: [{ role: "user", content: "こんにちは"}],
          temperature: 0.7,
        })

      response.dig("choices", 0, "message", "content")
    end
  end
end
