json.extract! quiz, :id, :question, :option1, :option2, :option3, :created_at, :updated_at
json.url quiz_url(quiz, format: :json)
