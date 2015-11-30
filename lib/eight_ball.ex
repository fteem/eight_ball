defmodule EightBall do
  # Found at https://en.wikipedia.org/wiki/Magic_8-Ball#Possible_answers
  @answers [
    "It is certain",
    "It is decidedly so",
    "Without a doubt",
    "Yes, definitely",
    "You may rely on it",
    "As I see it, yes",
    "Most likely",
    "Outlook good",
    "Yes",
    "Signs point to yes",
    "Reply hazy try again",
    "Ask again later",
    "Better not tell you now",
    "Cannot predict now",
    "Concentrate and ask again",
    "Don't count on it",
    "My reply is no",
    "My sources say no",
    "Outlook not so good",
    "Very doubtful"
  ]

  def ask(question) do
    # Set seed dynamically to get proper randomness
    :random.seed(:os.timestamp)

    EightBall.QuestionValidator.validate!(question)
    @answers |> Enum.shuffle |> List.first
  end
end
