defmodule EightBall.QuestionValidator do
  # Question must end with a '?'
  @validation_regex ~r/\?$/

  def validate!(question) when is_binary(question) do
    unless String.strip(question) =~ @validation_regex, do: throw_validation_error
  end

  def validate!(question) do
    throw_validation_error
  end

  defp throw_validation_error do
    raise RuntimeError, message: "Question must be a string, ending with a question mark."
  end
end
