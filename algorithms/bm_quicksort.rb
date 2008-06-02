# Quicksort for an array of 2500 fixnums.

class Array
  def qsort
    return [] if self.empty?
    pivot, *rest = self
    (rest.select {|el| el < pivot }).qsort + [pivot] +
      (rest.select {|el| el >= pivot }).qsort
  end  
end

array = [*(1..2_500)].reverse
puts "Quicksort verified." if array.qsort == array.sort