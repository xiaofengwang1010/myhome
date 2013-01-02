# vim FTW
Pry.config.editor = "gvim --nofork"

# Prompt with ruby version
gemset = `rvm current`.strip
ruby_version = gemset.match('ruby') ? gemset : RUBY_VERSION

Pry.prompt = [
  proc { |obj, nest_level, _| "#{ruby_version} (#{Pry.view_clip(obj)}):#{nest_level} > " },
  proc { |obj, nest_level, _| "#{ruby_version} (#{Pry.view_clip(obj)}):#{nest_level} * " }]

# Toys methods
# Stealed from https://gist.github.com/807492
class Array
  def self.toy(n=10, &block)
    block_given? ? Array.new(n,&block) : Array.new(n) {|i| i+1}
  end
end

class Hash
  def self.toy(n=10)
    Hash[Array.toy(n).zip(Array.toy(n){|c| (96+(c+1)).chr})]
  end
end

