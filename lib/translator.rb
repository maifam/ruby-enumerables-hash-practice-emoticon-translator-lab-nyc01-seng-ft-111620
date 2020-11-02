# require modules here
require 'pry'
require 'yaml'

def load_library(path)
  
  emoticons = YAML.load_file('path')
  
  emoticon_list = {} 
  
  emoticons.each do |key, value|
    emoticon_list[key] = {}
    emoticon_list[key][:english] = value[0]
    emoticon_list[key][:japanese] = value[1]}
    #binding.pry
  end 
  emoticon_list
end

def get_japanese_emoticon(path, emoticon)
  
  load_library(path).each do |k, v| 
    if v[:japanese] == emoticon 
      return v[:japanese]
    end 
  end 
  return "Sorry, that emoticon was not found"
end

def get_english_meaning
  
  load_library(path).each do |key, value| 
    if value[:japanese] == emoticon 
      return key 
      binding.pry 
    end 
  end 
  return "Sorry, that emoticon was not found"
end