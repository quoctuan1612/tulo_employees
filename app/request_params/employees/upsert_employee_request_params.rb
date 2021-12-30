# frozen_string_literal: true

module Employees
  class UpsertEmployeeRequestParams < TuloCommon::RequestParamsBase
    attribute :id, :integer
    attribute :first_name, :string
    attribute :last_name, :string
    attribute :gender, :string
    attribute :dob, :string
    attribute :email, :string
    attribute :phone, :string
    attribute :master_country_id, :integer
    attribute :master_province_id, :integer
    attribute :master_district_id, :integer
    attribute :master_ward_id, :integer
    attribute :owner_id, :integer
    attribute :department_id,:integer
    attribute :role_id,:string
    
    def initialize(params)
      super(
        id: params.employee.id&.value,
        first_name: params.employee.first_name&.value,
        last_name: params.employee.last_name&.value,
        gender: params.employee.gender&.value,
        dob: params.employee.dob&.value,
        email: params.employee.email&.value,
        phone: params.employee.phone&.value,
        master_country_id: params.employee.master_country_id&.value,
        master_province_id: params.employee.master_province_id&.value,
        master_district_id: params.employee.master_district_id&.value,
        master_ward_id: params.employee.master_ward_id&.value,
        owner_id: params.employee.owner_id&.value,
        department_id: params.employee.department_id&.value,
        role_id: params.employee.role_id&.value
      )
    end
  end  
end