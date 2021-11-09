class Employee < ApplicationRecord
    validates :emp_name,presence: {message: " Not Entered"}
    validates :department, presence: true
    validates :salary , presence: true, numericality: true
    validates :department , presence: true, inclusion: {in: %w(Sales Technology Security),
        message: " Should be in Sales, Technology or Security"}
    validates :deptID , presence: true, inclusion: {in: [1,2,3],
        message: " Allowed values 1,2,3"}


    before_save :merge_name_department
    after_destroy :log_data
    
    def merge_name_department
        self.emp_name = self.emp_name + " From " + self.department
    end

    def log_data
        logger.info("*****************Record DELETED with name#{self.emp_name} and ID #{self.id}")
    end

    
end
