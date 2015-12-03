def merge(intervals)
  return intervals if intervals.length == 1
  return [] unless intervals
  if intervals == []
    return []
  end
  intervals = intervals.sort_by do |item|
    item.start
  end

  intervals.length.times do |i|
    j= i + 1
    if intervals[j]
      if (intervals[i].end > intervals[j].start || intervals[i].end == intervals[j].end ||
          intervals[i].end == intervals[j].start)
        intervals[j] = Interval.new(intervals[i].start, [intervals[i].end, intervals[j].end].max)
        intervals[i] = nil
      end
    end
  end
  return intervals.compact
end
