module Bootcamp
  def valid_ip?(str)
    numbers = str.split('.')

    return false unless numbers.size == 4
    numbers.all? { |s| (s.to_i > 0 && s.to_i < 255 && (!s.start_with?('0') && !s.empty?)) }
    end
end
