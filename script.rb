
#  ---------------------------------------------------------------  PRACTICE 01. DATABASE.  ------------------------------------------------------------
=begin

    Description: 
        In this project we will be creating a database form a school.
        The teacher will ask the name of an specific number of students,
        the grade and see if they approved or not the subject. 

    Instructions used:
        - Arrays.
        - For loops.
        - If-Else conditionals.

    Author:
        - Jorge Ortiz Mata.
        - San Luis Potosí S.L.P. México
        - ortiz.mata.jorge@gmail.com
        - +52 (444) 576 3034.
=end

# ------------------------------------------------ START -------------------------------------------------

# --- Step 01. Get the amount the students.

puts "\n"
puts "  Hello teacher, this is the Harvard database. In this database you can add students to the system."
print "So please, introduce the amount of students that you're going to upload: "
amount_students = Integer(gets.chomp)
puts "\n Thanks, so you introduced: #{amount_students} students." 

puts "\n"
# --- Step 02. Get the name of each student.

name_students = []
puts "Now, please introduce the name of each student."
for index in 0..(amount_students-1)
    print "Introduce the student's name #{index}: "
    name_students[index] = gets.chomp.to_s
end

puts "\n"
# --- Step 03. Get the grade of each student.

grade_students = []
puts "Great, now please introduce the grade of each of them."
for i in 0..(amount_students-1)
    print "Student: #{name_students[i]} get: "
    grade_students[i] = Integer(gets.chomp)
end

puts "\n"
# --- Step 04. Type the approve grade

print "Wonderful. Finally, please introduce the grade approve: "
approve_grade = Integer(gets.chomp)
puts "Thank you. The approval grade is: #{approve_grade}."

puts "\n"
# --- Step 05. Check out if each student approve the subject

for i in 0..(amount_students-1)
    if grade_students[i] >= approve_grade
        puts "The student: #{name_students[i]} passed the subject! The grade was #{grade_students[i]}"
    else
        puts "The student: #{name_students[i]} didn't pass the subject. The grade was #{grade_students[i]}"
    end
end

puts "\n"

# ------------------------------------------------ END -------------------------------------------------
