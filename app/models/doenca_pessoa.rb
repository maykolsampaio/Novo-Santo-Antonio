class DoencaPessoa < ActiveRecord::Base
belongs_to :doenca
belongs_to :pessoa
end
