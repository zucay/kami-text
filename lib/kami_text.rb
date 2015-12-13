require "kami_text/version"

class KamiText
  def self.wrap(text, width_len = 24)
    text.map do |line|
      line =~ /(.*[　○．]|.*[０-９]）|.*  )/
      indent_len = $1.to_s.length

      first_line = line[0..width_len-1]
      remaining_width_len = width_len - indent_len

      remaining_lines = line[width_len..-1].to_s.scan(/.{1,#{remaining_width_len}}/).map do |remaining_line|
        remaining_line = remaining_line.ljust(remaining_width_len, '　') if remaining_line.length < remaining_width_len
        remaining_line.rjust(width_len, '　')
      end
      [first_line, remaining_lines].flatten
    end
  end
end
