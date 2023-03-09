require 'json'
require "openai"
require "pry"

class ChatGpt
  class << self
    def get_text(event)
      client = OpenAI::Client.new(access_token: "access_token_goes_here")

      response = client.chat(
        parameters: {
          model: "gpt-3.5-turbo", # Required.
          messages: [{ role: "user", content: "Hello!"}], # Required.
          temperature: 0.7,
        })

      response.dig("choices", 0, "message", "content")
    end
  end
end
