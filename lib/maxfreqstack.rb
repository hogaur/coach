class FreqStack
    def initialize()
        @frequencies = Hash.new
        @freq_map = Array.new
    end

=begin
    :type val: Integer
    :rtype: Void
=end
    def push(val)
        freq = @frequencies[val].to_i + 1
        @frequencies[val] = freq
        @freq_map[freq-1] ||= []
        @freq_map[freq-1].push(val)
        p "#{@freq_map}"
        p "#{@frequencies}"
        nil
    end


=begin
    :rtype: Integer
=end
    def pop()
        max_freq_list = @freq_map.last
        top_most_freq = max_freq_list.pop
        @freq_map.pop if max_freq_list.empty?
        @frequencies[top_most_freq] = @frequencies[top_most_freq] - 1
        p "#{@freq_map}"
        p "#{@frequencies}"
        top_most_freq
    end
end

# Your FreqStack p object will be instantiated and called as such:
# p obj = FreqStack.new()
# p obj.push(val)
# param_2 = p obj.pop()



p obj = FreqStack.new()
p obj.push(718967141)
p obj.push(189971378)
p obj.push(341560426)
p obj.push(23521218)
p obj.push(339517772)
p obj.push(967482459)
p obj.pop
p obj.push(978798455)
p obj.pop
p obj.push(744530040)
p obj.pop
p obj.push(3454610)
p obj.pop
p obj.push(940238504)
p obj.pop
p obj.pop
p obj.pop
p obj.pop
p obj.pop
p obj.pop

