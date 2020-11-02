# require modules here
require 'pry'
require 'yaml'

emoticons = YAML.load_file('lib/emoticons.yml')
  
def load_library(path)
  
  emoticon_list = {} 
  
  YAML.load_file(path) do |key, value|
    emoticon_list[key] = {:english => value[0], :japanese => value[1]}
  end 
  emoticon_list
end

def get_japanese_emoticon(path, emoticon)
  
  load_library(path).each do |key, val| 
    if val[:english] == emoticon 
      return val[:japanese]
    end 
  end 
  return "Sorry, that emoticon was not found"
end

def get_english_meaning(path, emoticon)
  
  load_library(path).each do |key, value| 
    if value[:japanese] == emoticon 
      return key 
    end 
  end 
  return "Sorry, that emoticon was not found"
end