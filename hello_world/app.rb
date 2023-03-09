require_relative 'chat_gpt'
require_relative 'official_line'

def lambda_handler(event:, context:)
  res_text = ChatGpt.get_text(event)
  OfficialLine.chat_send(res_text)
end
