class Student < ApplicationRecord
    belongs_to :school_class

    has_many :school_teacher_students
    has_many :teachers, through: :school_teacher_students
end
