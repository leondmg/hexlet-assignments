# frozen_string_literal: true

def make_censored(text, stop_words)
  # BEGIN
  text.split.map do |elem|
    stop_words.map(&:upcase).include?(elem.upcase) ? '$#%!' : elem
  end.join(' ')
  # END
end
