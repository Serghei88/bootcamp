module Bootcamp
  def pig_latin(str)
    words = str.split(' ')
    result = words.reduce('') { |res, word| res + word[1..-1] + word[0, 1].downcase + 'ay ' }
    result[0] = result[0].upcase
    return result
    end
end
