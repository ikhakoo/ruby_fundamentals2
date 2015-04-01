students = {
  :cohort1 => 34,
  :cohort2 => 42,
  :cohort3 => 22
}

students[:cohort4] = 43

def each_cohort(list)
	list.each do |key, value|
		puts "#{key}" + ":" + " #{value} students"
	end
end

each_cohort(students)

cohort_names = students.keys
puts "The cohort names are:"
puts cohort_names

students.each do |key, value|
	students[key] = value * 1.05
end

each_cohort(students)
