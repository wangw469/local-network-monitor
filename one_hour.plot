# Output W3C Scalable Vector Graphics
set terminal svg size 1000, 400

# Read comma-delimited data from file
set datafile separator comma

# Set graph title
set title 'Web site ping test(1 Hour)'

# Set label of x-axis
set xlabel 'Date'

# Set label of y-axis
set ylabel 'Ping Time'

# Use a line graph
set style data line

set yrange [0:5]

set xdata time
set timefmt "%s"
set format x "%H:%M"

# Plot data from a file, with extra notes below:
#
# for [i=2:5]         Loop for values of i between 2 and 5 (inclusive)
# using i:xtic(1)     Plot column i using tick labels from column 1
# title columnheader  Use the column headers (first row) as titles
# linewidth 4         Use a wider line width
#
plot 'one_hour.csv' using ($4+(+8*3600)):3 linewidth 1
