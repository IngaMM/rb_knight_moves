#!/usr/bin/ruby

class Knight
  def initialize
    @offsets = [[1, 2], [2, 1], [-2, 1], [-1, -2], [-2, -1], [1, -2], [-1, 2], [2, -1]]
  end

  def knight_moves(start_pos, end_pos)
    queue = [Field.new(start_pos[0], start_pos[1])]
    while queue != []
      if (queue[0].i == end_pos[0] && queue[0].j == end_pos[1])
        parents = find_all_parents_coordinates(queue[0])
        return (
          p "You made it in #{parents.length - 1} moves! Here is your path:"
          parents.each do |coords|
            p coords
          end
        )
      else
        queue.push(find_all_children(queue[0]))
        queue.shift
        queue = queue.flatten
      end
    end
  end

  private

  def find_all_children(field)
    children_arr = []
    counter = 0
    @offsets.each do |offset|
      i = field.i + offset[0]
      j = field.j + offset[1]
      if (i.between?(0, 7) && j.between?(0, 7))
        children_arr.push(Field.new(i, j, field))
      end
    end
    return children_arr
  end

  def find_all_parents_coordinates(field)
    parents_coordinates_arr = [[field.i, field.j]]
    field_to_add = field
    while (field_to_add.parent)
      field_to_add = field_to_add.parent
      parents_coordinates_arr.unshift([field_to_add.i, field_to_add.j])
    end
    return parents_coordinates_arr
  end
end

class Field
  attr_accessor :i, :j, :parent

  def initialize(i, j, parent = nil)
    @i = i
    @j = j
    @parent = parent
  end
end

my_knight = Knight.new
my_knight.knight_moves([3,3],[4,3])
