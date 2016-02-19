require 'tumblr_client'

module Tumblikes
  class Client
    MAX_LIMIT_NUM = 20

    def initialize(config)
      @client = Tumblr::Client.new(
        consumer_key: config[:consumer_key],
        consumer_secret: config[:consumer_secret],
        oauth_token: config[:access_token],
        oauth_token_secret: config[:access_token_secret]
      )
    end

    def liked_count
      @_liked_count ||= @client.likes.dig('liked_count').to_i
    end

    def image_urls(options = {})
      offset = options[:offset].to_i
      limit  = options[:limit].to_i
      fail 'LIMIT exceeded your LIKED_COUNT ' if limit > liked_count - offset

      request_num = ([liked_count - offset, limit].min / MAX_LIMIT_NUM).ceil

      image_chunks = (0..request_num).map do |req_num|
        liked_posts = @client.likes(limit: MAX_LIMIT_NUM, offset: offset + req_num * MAX_LIMIT_NUM).dig('liked_posts')
        photos = liked_posts.map { |post| post.dig('photos') }.flatten.compact

        photos.map { |photo| photo.dig('original_size', 'url') }
      end

      image_chunks.flatten
    end
  end
end
