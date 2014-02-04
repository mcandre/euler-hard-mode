#!/usr/bin/env ruby

class Fibonacci
  def initialize
    @a, @b = 1, 2
  end

  def next
    r, @a, @b = @a, @b, @a + @b
    r
  end
end

def main
  f = Fibonacci.new

  y = f.next

  s = 0

  while y < 4000000
    s += y unless y.odd?
    y = f.next
  end

  puts s
end

if $PROGRAM_NAME == __FILE__
  begin
    main
  rescue Interrupt
    nil
  end
end
