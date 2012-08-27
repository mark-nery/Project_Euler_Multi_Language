def split_by_rows(matrix,rows):
    row_array = []
    for i in  range(rows):
        row_array.append(matrix[i * rows : (i + 1) * rows])
    return row_array

def largest_row_product(r,step):
    largest_product = 0
    for i in range((len(r) - (step - 1))):
        ph = reduce(lambda x,y: x * y, r[i : i + step])
        if ph > largest_product:
            largest_product = ph
    return largest_product

def split_by_columns(grid,rows):
    col_array = []
    for i in range(rows):
        col_array.append(grid[i :: rows])
    return col_array

def upper_triangle(grid,rows):
    upper_triangle = []
    for i in range(rows) :
        upper_triangle.append(grid[i:(rows * rows) - rows * i:rows + 1])
    return upper_triangle

def lower_triangle(grid,rows):
    lower_triangle = []
    for i in range(rows - 1):
        lower_triangle.append(grid[rows + (rows * i) : (rows * rows)  : rows + 1])
    return lower_triangle

def split_diagnally(grid,rows):
    return upper_triangle(grid,rows) + lower_triangle(grid,rows)

def rotate_grid(grid,rows):
    ninety_deg = []
    for i in range(rows):
        ninety_deg += grid[(rows * rows) - (rows - i) :: -rows]
    return ninety_deg
        
