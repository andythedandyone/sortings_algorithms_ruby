
#Sorting functions by andythedandyone
#Use, improve but just dont make it complicated for starters to understand
#the basics of sorting algorithms
#when you run the code, whatch on your command line and follow the changes to see how it works
#to better understand, just ignore module and classes and focus on the functions


module SortIt
  class Buble
    def bubleSort(arrayInput)
      #get the length of the array (since array start at 0, we subtract one from total)
      arrayLength = arrayInput.length - 1
      #loop while true (i like call it while summer)
      loop do
        #we set summer to false, because when the array is sorted, it will skip the swap (if) and therefore summer will no longer be turned true
        summer = false
        arrayLength.times do |i|
          #compare the actual array value to the next
          if arrayInput[i] > arrayInput[i + 1]
            #swap places within the array, moving larger numbers to right and smaller to left
            arrayInput[i], arrayInput[i + 1] = arrayInput[i + 1], arrayInput[i]
            #puts all the value in the array to show the progress of the buble sort and pause for 4 seconds so you can visualize the changes
            puts "#{arrayInput}"
            # sleep 1
            #set summer true as to escape the break below and go back to the begining of the loop
            summer = true
          end
        end
        #after all sorted, its no longer summer, and now we exit the program
        break if not summer
      end
      #remove the '#' below to retun input
      # input
    end
  end

  class Quick
    def quickSort(arr)
        return arr if arr.length <= 1
        pivot_index = arr.length / 2
        pivot_value = arr[pivot_index]
        arr.delete_at(pivot_index)
        left = []
        right = []
        arr.each do |i|
          puts "inside each #{arr} => #{i} => #{left} , #{pivot_value} , #{right}"

          if i <= pivot_value
            left << i
          else
            right << i    end
        end
        qs(left) + [pivot_value] + qs(right)
        # puts "#{left} #{indi} #{right}"
    end
  end
end


array = []
10000.times do
  array << rand(1000)
end

arr = [9,8,7,6,5,4,3,2,1,0]

y = qs(arr1)
puts "#{y}"



soBub = SortIt::Buble.new
soBub.bubleSort(arr)
