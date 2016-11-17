module BeefsHelper
  def beef_createtime(created_at)
    time_gap = Time.now - created_at
    if time_gap < 1.day.second then
      diff = time_gap / 1.hour.second
      time_result = "#{diff.floor} 小時前"
    elsif time_gap >= 1.day.second && time_gap < 1.month.second then
      diff = time_gap / 1.day.second
      time_result = "#{diff.floor} 天前"
    elsif time_gap >= 1.month.second && time_gap < 1.year.second then
      diff = time_gap / 1.month.second
      time_result = "#{diff.floor} 月前"
    elsif time_gap >= 1.year.second then
      diff = time_gap / 1.year.second
      time_result = "#{diff.floor} 年前"
    end
    return time_result
  end
end
