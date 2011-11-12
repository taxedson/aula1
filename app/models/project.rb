class Project < ActiveRecord::Base
  scope :ativos, where(:active => true)
  scope :com_a, where('name like ?', 'a%')
  scope :da_empresa, lambda {|e| where(:company => e)}
  
  # Sample
  # Project.com_a.da_empresa("a")
  # pra saber sql
  # Project.com_a.da_empresa("a").to_sql
  
end
