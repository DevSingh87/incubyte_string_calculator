class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    delimiter = ","
    if numbers.start_with?("//")
      parts = numbers.split("\n", 2)
      delimiter = parts.first[2..]
      numbers = parts.last
    end

    numbers = numbers.gsub("\n", delimiter)
    nums = numbers.split(delimiter).map(&:to_i)

    negatives = nums.select { |n| n < 0 }
    raise "negative numbers are not allowed: #{negatives.join(', ')}" unless negatives.empty?

    nums.sum
  end
end
