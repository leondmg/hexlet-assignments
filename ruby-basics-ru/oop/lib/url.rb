# frozen_string_literal: true

# BEGIN
require 'uri'
require 'forwardable'

class Url
  include Comparable
  extend Forwardable
  
  attr_accessor :uri

  def initialize(string)
    @uri = URI(string)
  end

  def to_s
    uri.to_s
  end

  def <=>(other)
    uri <=> other.uri
  end

  def query_params
    return {} if uri.query.nil?
    uri.query.split('&').each_with_object({}) do |elem, result|
      key, value = elem.split("=")
      result[key.to_sym] = value
    end
  end

  def query_param(key, value = nil)
    if query_params.include?(key)
      query_params[key]
    else
      value
    end
  end

  def_delegators :@uri, :scheme, :host
end
