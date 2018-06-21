require "rubygems"
require "quiz_master"
include QuizMaster

quiz_source = Quiz.new(
  [
    {
      prompt: "Who were orignal members of Genesis?",
      answers: [
        Answer.new("Phil Collins", false, tag: "phil"),
        Answer.new("Tony Banks", true),
        Answer.new("Steve Hackett", false, tag: "steve"),
        Answer.new("{{phil}} and {{steve}}", false)
      ]
    },
    {
      prompt: "Which numbers are prime?",
      answers: [
        Answer.new("1", false),
        Answer.new("2", false, tag: "2"),
        Answer.new("3", false),
        Answer.new("All of the above except {{2}}", true, anchored: true)
      ]
    },
    {
      prompt: "What is the colour of a Banana?",
      answers: [
        Answer.new("Green", false),
        Answer.new("Red", false, tag: "red"),
        Answer.new("Yellow", false),
        Answer.new("Black", false),
        Answer.new("Brown", false),
        Answer.new("Blue", false, tag: "blue"),
        Answer.new("All of the colours above", false, anchored: true),
        Answer.new("All of the colours above except {{blue}} and {{red}}", true,
                   anchored: true)
      ]
    }
  ].map { |q| Question.new(q) })

3.times do
  answer_reorderings = quiz_source.answer_reordering_vectors
  question_reordering = quiz_source.question_reordering_vector

  quiz = QuizVariant.new(quiz_source, answer_reorderings, question_reordering)

  puts TextQuestionSheetFormatter.new.format(quiz)
  puts TextAnswerSheetFormatter.new.format(quiz)
end