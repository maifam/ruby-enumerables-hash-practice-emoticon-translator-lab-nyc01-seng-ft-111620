# require modules here

require 'yaml'


  
def load_library(file_path)
  
  emoticons = YAML.load_file('lib/emoticons.yml')
  
  emoticon_list = {} 
  
  emoticons.each do |key, pairs|
    emoticon_list2 ={}
    emoticon_list2.store(:english, pairs[0])
    emoticon_list2.store(:japanese, pairs[1])
    emoticon_list.store(key,emoticon_list2)
  end 
  emoticon_list
end

def get_japanese_emoticon(file_path, emoticon)
  
  emoticons = load_library(file_path)
  
  emoticons.each do |key, val| 
    if val[:english] == emoticon 
      return val[:japanese]
    end 
  end 
  return "Sorry, that emoticon was not found"
end

def get_english_meaning(file_path, emoticon)
  
  emoticons = load_library(file_path)
  
  emoticons.each do |key, value| 
    if value[:japanese] == emoticon 
      return key 
    end 
  end 
  return "Sorry, that emoticon was not found"
end