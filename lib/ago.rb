# frozen_string_literal: true

require 'ruby-duration'

require_relative "ago/version"

module AGO
  class Error < StandardError; end
  class Clock
    def initialize t
      @t = AGO.now
      @s = @t.to_i - t.to_i
      @t = Time.new(t.to_i).utc
      @d = Duration.new(@s.abs)
    end
    def to_i
      @s
    end
    def to_s *s
      if s[0]
        @d.format(s[0])
      else
        @d.format('%w %~w %d %~d %H:%M:%S')
      end
    end
  end
  def self.now
    Time.now.utc
  end
  def self.[] k
    Clock.new(k)
  end
end
