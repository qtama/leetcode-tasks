module Solution
  def self.encode(strs)
    strs.reduce("") do |acc, cur|
      "#{acc}\n#{cur.chars.map { _1.ord.to_s }.join(",")}"
    end[1..] + "\n"
  end
  
  # Decodes a single string to a list of strings.
  #
  # @param {string} s
  # @return {string[]}
  def self.decode(s)
    s.each_line.map do |nums|
      nums[...-1].split(",").map(&:to_i).map(&:chr).join("")
    end
  end
end

p Solution.encode(["we", "say", " ", "yes"])