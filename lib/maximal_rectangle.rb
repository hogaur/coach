# @param {Character[][]} matrix
# @return {Integer}
def maximal_rectangle(matrix)
    heights = Array.new(matrix[0].length,0)
    max_area = 0
    for row in matrix do
        heights.each_with_index do |height,j|
            heights[j] = row[j] == "0" ? 0 : height+1
        end
        max_area = [max_area, max_rectangle_area(heights)].max
    end
    max_area
end

def max_rectangle_area(heights)
    stack = [-1]
    max = 0
    heights.push(0)
    heights.each_with_index do |h,i|
        while !stack.empty? && heights[stack[-1]] > h do
            l = heights[stack.pop]
            b = i - stack[-1] -1
            area = l*b
            max = [max,area].max
        end
        stack.push(i)
    end
    heights.pop
    max
end

matrix = [["1","0","1","0","0"],["1","0","1","1","1"],["1","1","1","1","1"],["1","0","0","1","0"]]

p maximal_rectangle(matrix)