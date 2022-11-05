# frozen_string_literal: true

# BEGIN
def get_same_parity(data)
  data.filter { |elem| elem.odd? == data.first.odd? }
end
# END
