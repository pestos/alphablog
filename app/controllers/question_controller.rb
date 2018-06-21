class QuestionController < ApplicationController



def initialize(prompt:, answers:)
  @prompt = prompt.clone
  @answers = answers.clone
end