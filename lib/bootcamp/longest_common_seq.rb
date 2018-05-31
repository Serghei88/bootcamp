module Bootcamp
  def longest_common_seq(str1, str2)
    shortest = []
    longest = []
    sequence = ''
    if str1.size > str2.size
      shortest = str2.chars
      longest = str1
    else
      shortest = str1.chars
      longest = str2
    end
    (0..shortest.size).each do |i|
      (0..shortest.size).each do |j|
        seq_to_check = shortest.drop(i).take(j).join('')
        if longest.include? seq_to_check
          sequence = seq_to_check if sequence.size < seq_to_check.size
        else
          break
        end
      end
    end
    sequence
    end
end
