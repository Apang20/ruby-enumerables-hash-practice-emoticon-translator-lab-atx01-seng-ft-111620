
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

emoticons_file.each do |meaning, value|
  #result = ""
if emoticons_file[meaning][:japanese] = value[1]
    #result = emoticons_file[meaning][0]
else
  #result = 
  "Sorry, that emoticon was not found"
end 
#result
#end 


def get_japanese_emoticon(emoticons_file, emoticon)
  #takes eng emoticon and translate to jap emoticon 
  
end

