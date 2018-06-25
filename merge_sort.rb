def merge_sort(collection)
  return collection if collection.length == 1

  middle = collection.length / 2
  bucket_1 = merge_sort collection[0, middle]
  bucket_2 = merge_sort collection[middle, collection.length - middle]

  collection = []
  offset_1 = 0
  offset_2 = 0
  while offset_1 < bucket_1.length && offset_2 < bucket_2.length
    v1 = bucket_1[offset_1]
    v2 = bucket_2[offset_2]
    if v1 <= v2
      collection << v1
      offset_1 += 1
    else
      collection << v2
      offset_2 += 1
    end
  end

  while offset_1 < bucket_1.length
    collection << bucket_1[offset_1]
    offset_1 += 1
  end

  while offset_2 < bucket_2.length
    collection << bucket_2[offset_2]
    offset_2 += 1
  end

  return collection

end

collection = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i'].shuffle
puts collection.inspect
puts merge_sort(collection).inspect
