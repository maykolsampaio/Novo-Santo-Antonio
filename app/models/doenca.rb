class Doenca < ActiveRecord::Base
has_many :doenca_pessoas
has_many :doencas, through: :doenca_pessoas
has_and_belongs_to_many :pessoa
	columns.each do |c|
		attr_accessible c.name.to_sym
	end
end
