class EndlessController < ApplicationController
  require 'net/http'
  require 'httparty'  

  def index
    lang = {
      "Italian" =>	"it",
      "German" =>	"de",
      "French" =>	"fr",
      "Spanish" =>	"es"
    }
    
    return_obj = {
      translation: '',
      "answer1" => Faker::Color.color_name.capitalize,
      "answer2" => rand(1) == 0 ? Faker::Food.fruits.capitalize : Faker::Food.vegetables.capitalize,
      "answer3" => Faker::Creature::Animal.name.capitalize,
      correct_answer: rand(1..3)
    }

    sourceText = return_obj["answer#{return_obj[:correct_answer]}"]
    sourceLang = 'auto'
    targetLang = lang["#{params[:language].capitalize}"]
    url = "https://translate.googleapis.com/translate_a/single?client=gtx&sl=" + sourceLang + "&tl=" + targetLang + "&dt=t&q=" + URI.escape(sourceText)
    
    response = HTTParty.get(url)    
    body = JSON.parse(response.body)
    
    return_obj[:translation] = body[0][0][0]

    render json: return_obj
  end
  
end
