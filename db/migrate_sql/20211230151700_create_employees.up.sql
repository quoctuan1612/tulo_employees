CREATE TABLE employees (
  id bigserial PRIMARY KEY,

  first_name varchar NOT NULL,

  last_name varchar NOT NULL,

  gender varchar NOT NULL,

  dob varchar NULL,

  email varchar NULL,

  phone varchar NULL,

  master_country_id int8 NULL,

  master_province_id int8 NULL,

  master_district_id int8 NULL,

  master_ward_id int8 NULL,

  owner_id int8 NULL,

  department_id int8 NULL,

  role_id varchar NULL,

  created_at timestamp without time zone NOT NULL,

  updated_at timestamp without time zone NOT NULL
);

COMMENT ON TABLE employees IS 'Employees';

-- Column comments

COMMENT ON COLUMN employees.id IS 'ID';
COMMENT ON COLUMN employees.first_name IS 'First Name';
COMMENT ON COLUMN employees.last_name IS 'Last Name';
COMMENT ON COLUMN employees.gender IS 'Gender';
COMMENT ON COLUMN employees.dob IS 'Data of Birth';
COMMENT ON COLUMN employees.email IS 'Email';
COMMENT ON COLUMN employees.phone IS 'Phone';
COMMENT ON COLUMN employees.master_country_id IS 'Country';
COMMENT ON COLUMN employees.master_province_id IS 'Province';
COMMENT ON COLUMN employees.master_district_id IS 'District';
COMMENT ON COLUMN employees.master_ward_id IS 'Ward';
COMMENT ON COLUMN employees.owner_id IS 'Owner ID';
COMMENT ON COLUMN employees.department_id IS 'Department ID';
COMMENT ON COLUMN employees.role_id IS 'Role ID';
COMMENT ON COLUMN employees.created_at IS 'Created At';
COMMENT ON COLUMN employees.updated_at IS 'Updated At';