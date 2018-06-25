def quick_sort(collection, from = 0, to = nil)
  to = (collection.count - 1) if to.nil?

  # Done?
  return collection if from >= to

  pivot = collection[from]

  min = from
  max = to

  free_slot = min

  while min < max
    if free_slot == min
      if collection[max] <= pivot # Smaller than pivot, must move
        collection[free_slot] = collection[max]
        min += 1
        free_slot = max
      else
          max -= 1
      end
    elsif free_slot == max
      if collection[min] >= pivot # Bigger than pivot, must move
        collection[free_slot] = collection[min]
        max -= 1
        free_slot = min
      else
        min += 1
      end
    else
      raise "WTF?"
    end
  end

  collection[free_slot] = pivot

  quick_sort collection, from, free_slot - 1
  quick_sort collection, free_slot + 1, to

end




collection = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i'].shuffle
puts collection.inspect
puts quick_sort(collection).inspect
