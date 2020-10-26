
require 'yaml'
require 'pry'

def load_library(emoticons_file)
  emoticons_file = YAML.load_file('./lib/emoticons.yml')
  outer_hash = {}
  emoticons_file.each do |meaning, value|  
outer_hash[meaning] = {}
outer_hash[meaning][:english] = value[0]
outer_hash[meaning][:japanese] = value[1]
  end
  outer_hash
end


def get_english_meaning(emoticons_file, emoticon)
#takes jap emoticon and return eng meaning
#emoticons_file = YAML.load_file('./lib/emoticons.yml')

emo_file = load_library(emoticons_file)
result = ""
emo_file.each do |meaning, value|
  
puts emo_file
puts emoticon

if emo_file[meaning][:japanese] == emoticon
    {
      result = meaning
      puts "if is true"
      binding.pry
    }
else
  result = "Sorry, that emoticon was not found"
end 
end
result
end 


#def get_japanese_emoticon(emoticons_file, emoticon)
  #takes eng emoticon and translate to jap emoticon 
  
#end

