# frozen_string_literal: true

def stairs_generator(input)
  stairs = downward_stairs(input.abs) if input <= 0

  # stairs = upward_stairs(stairs) if input.positive?
  stairs = new_upward_stairs(input) if input.positive?

  stairs.join("\n")
end

def downward_stairs(input)
  stairs = ['_']
  stairs[0] += '_' if input.zero?

  stair = 1
  while stair <= input
    stairs[stair] = "#{' ' * stairs[stair - 1].length}|_"
    stair += 1
  end
  stairs
end

def upward_stairs(negative_stairs)
  max_string_length = negative_stairs.last.length
  negative_stairs.map do |item|
    item += ' ' * (max_string_length - item.length)
    item.reverse
  end
end

def new_upward_stairs(input)
  max_string_length = 1 + 2 * input

  stairs = ["#{' ' * (max_string_length - 1)}_"]
  stair = 1
  while stair <= input
    stairs[stair] = "#{' ' * (max_string_length - (2 * stair + 1))}_|"
    stair += 1
  end
  stairs
end

# puts stairs_generator(-5)
# puts stairs_generator(4)
