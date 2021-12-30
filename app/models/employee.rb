# frozen_string_literal: true

# == Schema Information
#
# Table name: Employees
#
# id(ID)
# first_name(First Name)
# last_name(Last Name)
# gender(Gender)
# dob(Date of Birth)
# email(Email)
# phone(Phone)
# master_country_id(Country)
# master_province_id(Province)
# master_district_id(District)
# master_ward_id(Ward)
# owner_id(Owner ID)
# department_id(Department ID)
# role_id(Role ID)
# created_at(Created At)
# updated_at(Updated At)
#
# Indexes
#
# Foreign Keys
#
class Employee < ApplicationRecord
end