# frozen_string_literal: true

# BEGIN
def build_query_string(params)
  params.sort.each_with_object([]) do |(key, value), result|
    result << "#{key}=#{value}"
  end.join('&')
end
# END
