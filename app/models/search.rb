class Search < ActiveRecord::Base
    
    def search_reportnumbers
        
        reportnumbers = Reportnumber.all
        reportnumbers = reportnumbers.where(["phonenumber LIKE ?",phonenumber]) if phonenumber.present?
        reportnumbers = reportnumbers.where(["location LIKE ?", location]) if location.present?
        
        return reportnumbers
    end
end
