require_relative 'chat_gpt'

def lambda_handler(event:, context:)
  res_text = ChatGpt.get_text(event)
end
