Knight moves

By I. Mahle

A project of The Odin Project: https://www.theodinproject.com/courses/ruby-programming/lessons/data-structures-and-algorithms

Instructions

1. Run ./knight_moves.rb
2. Change the input in knight_moves.rb
3. Run again

Discussion
I used the following technologies: Ruby with classes and methods.

A knight in chess can move to any square on the standard 8x8 chess board from any other square on the board, given enough turns. Its basic move is two steps forward and one step to the side. It can face any direction.
This program shows the simplest possible way to get from one square to another by outputting all squares the knight will stop on along the way.

Some details of the implementation:

- A game board and a knight are created.
- All possible moves the knight could make are treated as children in a tree. No moves that go off the board are allowed.
- A search algorithm is used to find the shortest path between the starting square (or node) and the ending square.

Requirements
Ruby
