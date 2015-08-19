class Stock < ActiveRecord::Base
  # extend FriendlyId
  # friendly_id :symbol, use: :slugged

  # http://stackoverflow.com/questions/24226378/rails-routes-with-name-instead-of-id-url-parameters
  # https://github.com/norman/friendly_id
  # https://gorails.com/episodes/pretty-urls-with-friendly-id

  # def to_param
  #   symbol
  # end
end
