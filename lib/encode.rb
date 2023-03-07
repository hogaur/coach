# @param {Character[]} chars
# @return {Integer}
def compress(chars)
    stack = []
    for char in chars do
        stack.push(char) && next if stack.empty?
        stack.push(2) && next if stack[-1] == char
        stack.push(char) && next if letter?(stack[-1])
        if stack[-2] != char
            stack.push(char)
            next
        else
            num = stack.pop.to_i
            stack.push(num+1)
        end  
    end

    length = 0
    for item in stack do
        if number?(item) && item.to_i > 9
            tokens = tokenise(item)
            for token in tokens do
                chars[length] = token 
                length = length + 1
            end
        else
            chars[length] = item.to_s
            length = length + 1
        end 
    end

    length
end

def letter?(lookAhead)
  lookAhead.to_i == 0
end

def number?(item)
    item.to_i > 0
end

def tokenise(number)
    number.to_s.chars
end


chars = ["#","$","#","#","$","$","$","$","#","#"]

p compress(chars)

chars =
["a","a","b","b","c","c","c"]

p compress(chars)


chars =
[">","m","m","m","m","m","w","w","w","|","|","|","*","0",":",":",":","S","1","1","1","1","T","T","s","s","s","s","s","s","l","l","2","q","M","M","p","p","p","p","p","p","<","p","L","L","L","0","0","5","5","5","5","^","X","I","I","I","F","|","|","|","|","|","|","Q","Q","G","-","-","-",">","U","U","U","a","/","?","?","?","M","M","M","x","x","x","|","G","G","G","G","k","k",";","T","]","@","\\","J","J","J","T","2","(","|","|","|","&","&","G","|","|","|","|","q","q","`","`","C","H","H","o","o","o",">",":","s","s","s","z","Q","Q","f","u","c","c","c","c","c","c","A","A","*","*","*","~","~","~","]","v","B","e","B","B","B","g","o","3","9","|","q","q","g","g","g",",",",",",",",",">","u","u","*","*","*","\\","d","}","v","W","W","W","o","o","0","6","6","6","6","M","a","8","a","N","%","%","%","%","4","p","m","m","W","W","3","b","e","r","r","g","4","4","4","k","k","$","$","$","H","S","]",")",")",")",")",")","U","U","{","B","{","s","s","s","C","C","3","E",")","Z","Z","Z","h","f","f","G","G","G","p","p","/","{","{","x","U","U","U","U","U","D","3","?","?","?","d","B","B","B","B","F","M","M","M","z","z","|","o","o","-","D","D","D","D","D","c","c","c","I","I","}","}","}","}","Q","Q","Q","_","_","e","e"]

p compress(chars)
