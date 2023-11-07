#Build a method #bubble_sort that takes an arr and returns a sorted arr.
# It must use the bubble sort methodology (using #sort would be pretty pointless,
#   wouldn’t it?).

def bubble_sort(arr)
  # not_aorted determines if the arr is sorted
  not_sorted = true
  # while loop  will continue until the arr is sorted
  while not_sorted do
    # Set `sorted` to `false`, we need to find at least one swap in order for the loop to continue
    not_sorted = false
    # Iterate over the arr, comparing the elements
    (0...arr.length - 1).each do |index|
      # If the current element is greater than the next, swap them
      if arr[index] > arr[index + 1]
        arr[index], arr[index + 1] = arr[index + 1], arr[index]

        not_sorted = true
      end
    end
  end
  # Return sorted arr
  arr
end

p bubble_sort([4, 3, 78, 2, 0, 2])
p bubble_sort([3, 2, 9, 6, 5])
