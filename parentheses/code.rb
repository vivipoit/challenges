# Given a string, write a function that will return true if all the parentheses in the string are correctly matched and balanced.
# Please tell me when you consider your solution finished and ready for production use.

examples = [
  ['dlfkjklsjkldsjfkfj(sdlkfj)klvb', true],
  ['dlfkjklsj(kldsjf(kfjsdlk)fj)kl', true],
  ['dlfkjklsjkldsjfkfj(sdlkfjvfrkl', false],
  ['dlfkjklsjkldsjfkfjsdl)kfjk234l', false],
  ['dlfkjklsjkldsjfkfj(sdlk(fjkcxl', false],
  ['dlfkjklsjkldsjfkfjsdlkfjklfy5t', true],
  ['dlfkj(()klsjkldsjfkfjsdlqkfjkl', false],
  ['dlfkj)(klsjkldsjfkfjsdlkfwwjkl', false]
]

def matched_and_balanced?(string)
  return true unless string.include?('(') || string.include?(')')

  open_counter = 0
  close_counter = 0
  string.each_char do |character|
    open_counter = open_counter + 1 if character == '('
    close_counter = close_counter + 1 if character == ')'

    return false if close_counter > open_counter
  end

  open_counter == close_counter
end

p examples.map { |string, expected_result| matched_and_balanced?(string) == expected_result }