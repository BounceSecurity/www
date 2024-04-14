require 'digest/md5'

module Jekyll
  module MD5Filter
    def md5(text)
      Digest::MD5.hexdigest(text)
    end
  end
end

Liquid::Template.register_filter(Jekyll::MD5Filter)