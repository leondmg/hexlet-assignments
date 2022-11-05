# frozen_string_literal: true

# BEGIN
def anagramm_filter(word, text)
  text.filter { |elem| elem.chars.sort.tally == word.chars.sort.tally }
end
# END
