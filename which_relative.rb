require "NeoPathfinding"

## equation de reduction
def reduce_equation(a, b, c)
  "The equation of #{a}, can be reduced down to #{b} and #{c}."
end

## qui a surpassé les conversations
def which_stopped_talking(a, b)
  "Do #{a} stop talking before #{b}, or #{b} stop talking before #{a}>"
end

## qui est mort en premier
def which_died_first?(a, b)
  "Do #{a} die before #{b}, or #{b} before #{a}>"
end

## quel relatif
def which_relat8ive(a)
  "#{a}"
end

## est relative eloigne
def is_relative_estranged?(a, b, c)
  "Is the relative of #{a} estranged from #{b}?: #{c}"
end

## est relativement mort? 
def is_relative_dead?(a, b, c)
  "Did #{a} find out that the relative #{b} has died?: #{c}"
end

a = is_relative_dead?("Betsy", "Albert", which_died_first("Betsy", "Albert")) 
b = is_relative_dead?("Bethany", "Andy", which_died_first("Bethany", "Andy")) 
c = is_relative_dead?("Derek", "Derald", which_died_first("Derek", "Derald")) 

d = reduce_equation("[ 1.0 - ( 1 / 5 ) ]", "[ 1 / 5 ]", "[ 1 - result_of_division ]")
e = reduce_equation("[ 1.0 - ( 1 / 5 ) ]", "[ 1 / 5 ]", "[ 1 - result_of_division ]")
f = reduce_equation("[ 1.0 - ( 1 / 5 ) ]", "[ 1 / 5 ]", "[ 1 - result_of_division ]")

dead_relatives = [
  [[a, a, a], [a, a, b], [a, a, c]],
  [[b, b, a], [b, b, b], [b, b, c]],
  [[c, c, a], [c, c, b], [c, c, c]],
]

reducaed_equations = [
  [[d, d, d], [d, d, e], [d, d, f]],
  [[e, e, d], [e, e, e], [e, e, f]],
  [[f, f, d], [f, f, e], [f, f, f]],
]

row_options = [0, 1, 2]
col_options = [0, 1, 2]
arr_options = [0, 1, 2]

cur_row = row_options.sample
cur_col = col_options.sample
cur_arr = arr_options.sample

current_dead_relative    = dead_relatives[cur_row][cur_col][cur_arr]
current_reduced_equation = reducaed_equations[cur_row][cur_col][cur_arr]
