class Pessoa < ActiveRecord::Base
  belongs_to :ocupacao
  has_many :doenca_pessoas
  has_many :doencas, through: :doenca_pessoas
  belongs_to :ficha
  columns.each do |c|
		attr_accessible c.name.to_sym
	end
end
