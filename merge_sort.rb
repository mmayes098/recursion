#Algorithm sorts smaller arrays and then combines those arrays together (merge) in sorted order
#Pseudocode:
#Sort left half of the array
#Sort the right half of the array
#Merge the two halves together

#Base case is two element array?

# Example: [5, 2, 1, 3, 6, 4] (red)
# Sort left half of red: [5, 2, 1] (purple)
# Sort left half of purple: [5] (this is sorted)
# Sort right half of purple: [2, 1] (yellow)
# Sort left half of yellow: [2] (this is sorted)
# Sort right half of yellow: [1] (this is sorted)
# Merge yellow, sorted by number: [1, 2] (new array, sorted)
# Merge purple, sorted by number: [1, 2, 5] (sorted) (blue)

# Sort right half of red: [3, 6, 4] (green)
# Sort left half of green: [3]
# Sort right half of green: [6, 4] (violet)
# Sort left half of violet: [6]
# Sort right half of violet: [4]
# Merge violet, sorted: [4, 6]
# Merge green, sorted: [3, 4, 6]

# Merge red, sorted: [1, 2, 5] and [3, 4, 6] - Which is lower, 1 or 3? Which is lower, 2 or 3? etc.