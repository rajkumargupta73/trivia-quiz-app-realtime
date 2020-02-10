# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'rest-client'

rm = RestClient.get 'https://opentdb.com/api_category.php'

rm_array = JSON.parse(rm)['trivia_categories']

rm_array.each do |category,index|
    Category.create(
    name: category['name']
    )
end


qeasy = RestClient.get 'https://opentdb.com/api.php?amount=50&difficulty=easy&type=multiple'

qeasy_array = JSON.parse(qeasy)['results']

qeasy_array.each do |question,index|
    if question['type']='multiple'
        Question.create(
        question: question['question'],
        right_answer: question['correct_answer'],
        wrong_answer1: question['incorrect_answers'][0],
        wrong_answer2: question['incorrect_answers'][1],
        wrong_answer3: question['incorrect_answers'][2],
        difficulty: question['difficulty']
        )
    end    
end


qmedium = RestClient.get 'https://opentdb.com/api.php?amount=50&difficulty=medium&type=multiple'

qmedium_array = JSON.parse(qmedium)['results']

qmedium_array.each do |question,index|
    if question['type']='multiple'
        Question.create(
        question: question['question'],
        right_answer: question['correct_answer'],
        wrong_answer1: question['incorrect_answers'][0],
        wrong_answer2: question['incorrect_answers'][1],
        wrong_answer3: question['incorrect_answers'][2],
        difficulty: question['difficulty']
        )
    end    
end

qhard = RestClient.get 'https://opentdb.com/api.php?amount=50&difficulty=hard&type=multiple'

qhard_array = JSON.parse(qhard)['results']

qhard_array.each do |question,index|
    if question['type']='multiple'
        Question.create(
        question: question['question'],
        right_answer: question['correct_answer'],
        wrong_answer1: question['incorrect_answers'][0],
        wrong_answer2: question['incorrect_answers'][1],
        wrong_answer3: question['incorrect_answers'][2],
        difficulty: question['difficulty']
        )
    end    
end


