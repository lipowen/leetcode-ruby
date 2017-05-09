# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  checked_nums = []

  nums.each_with_index do |num, i|
    if checked_nums.include?(target - num)
      return [checked_nums.index(target - num), i]
    end

    checked_nums << num
  end
end
