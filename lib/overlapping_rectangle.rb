def is_rectangle_overlap(rec1, rec2)
    left = left(rec1,rec2) || left(rec2,rec1)
    right = right(rec1,rec2) || right(rec2,rec1)
    top = top(rec1,rec2) || top(rec2,rec1)
    bottom = bottom(rec1,rec2) || bottom(rec2,rec1)

    !(left || right || top || bottom)
end

def left(rec1,rec2)
    rec1[2] <= rec2[0]
end

def right(rec1,rec2)
    rec1[0] >= rec2[2]
end

def top(rec1,rec2)
    rec1[1] >= rec2[3]
end

def bottom(rec1,rec2)
    rec2[3] <= rec2[1]
end

rec1 = [-6,-10,9,2]
rec2 = [0,5,4,8]
p is_rectangle_overlap(rec1,rec2)