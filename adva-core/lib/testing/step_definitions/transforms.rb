# For date column cells named created_on, updated_at etc. this transforms the
# corresponding cell's value to a datetime in the current time zone (i.e. this
# works for both normal tables and row_hash tables):
timezonify = lambda do |table|
  dates = table.headers.select { |header| header =~ /(_at|_on)$/ }
  dates.each { |date| table.map_column!(date) { |date| DateTime.parse(date).in_time_zone } }
  table.transpose
end

objectify = lambda do |table|
  types = Section.types.map(&:underscore) << 'section' << 'site'
  sections = table.headers.select { |header| types.include?(header) }
  sections.each { |key| table.map_column!(key) { |value| key.gsub('_id', '').classify.constantize.find_by_name(value) } }
  table.transpose
end

foreign_keyify = lambda do |table|
  types = Section.types.map(&:underscore) << 'section' << 'site'
  keys = types.map { |type| "#{type}_id" }
  keys = table.headers.select { |header| keys.include?(header) }
  keys.each { |key| table.map_column!(key) { |value| key.gsub('_id', '').classify.constantize.find_by_name(value).try(:id).to_s } }
  table.transpose
end

Transform /^table:/ do |table|
  table = timezonify.call(timezonify.call(table))
  table = objectify.call(objectify.call(table))
  table = foreign_keyify.call(foreign_keyify.call(table))
  table
end
