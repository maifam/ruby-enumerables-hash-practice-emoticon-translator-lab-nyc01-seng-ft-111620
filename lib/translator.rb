# require modules here
require 'pry'
require 'yaml'

def load_library(path)
  
  emoticons = YAML.load_file('lib.emoticons.yml')
  
  emoticon_list = {} 
  
  emoticons.each do |key, value|
    emoticon_list[key] = {}
    emoticon_list[key][:english] = value[0]
    emoticon_list[key][:japanese] = value[1]}
    #binding.pry
  end 
  emoticon_list
  
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end