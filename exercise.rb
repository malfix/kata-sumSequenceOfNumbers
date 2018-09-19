class Exercise
  def initialize(sum, list)
    @sum = sum
    @from = 0
    @list = list
  end

  def find()
    0.upto(@list.size) do |to|
      move_lower_for_valid_array(to)
      return subarray(to) if found_solution?(to)
    end
    []
  end

  def subarray(to)
    @list[@from..to]
  end

  def move_lower_for_valid_array(to)
    while subarray(to).sum > @sum do
      @from += 1
    end
  end

  def found_solution?(to)
    subarray(to).sum == @sum
  end
end
