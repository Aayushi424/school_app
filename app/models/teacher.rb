class Teacher < ApplicationRecord
    has_many :school_class_teachers
    has_many :school_classes, through: :school_class_teachers

    has_many :school_teacher_students
    has_many :students, through: :school_teacher_students
end
