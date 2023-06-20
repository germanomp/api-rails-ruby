class Aluno
  include Mongoid::Document
  include Mongoid::Timestamps
  field :nome, type: String
  field :idade, type: Integer
  field :endereco, type: String
  field :curso, type: String
  field :email, type: String
end
