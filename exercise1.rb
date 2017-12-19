require "httparty"

word_response = HTTParty.get("http://api.datamuse.com//words?sp=initialize")
word_response_json = JSON.parse(word_response.body)

word_response_json.each do |word|
  puts word['word']
end
