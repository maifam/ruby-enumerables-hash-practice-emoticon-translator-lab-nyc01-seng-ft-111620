# require modules here
require 'pry'
require 'yaml'

emoticons = YAML.load_file('lib/emoticons.yml')

def load_library(path)
  
  emoticons = YAML.load_file('lib/emoticons.yml')
  emoticon_list = {} 
  
  YAML.load_file(path) do |key, value|
    emoticon_list[key] = {}
    emoticon_list[key][:english] = value[0]
    emoticon_list[key][:japanese] = value[1]
    #binding.pry
  end 
  emoticon_list
end

def get_japanese_emoticon(path, emoticon)
  
  load_library(path).each do |k, v| 
    if v[:english] == emoticon 
      return v[:japanese]
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