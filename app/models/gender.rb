class Gender < ActiveHash::Base
  self.data = [
    {id: 0, name: '--'},
    {id: 1, name: 'メンズ'},
    {id: 2, name: 'レディース'},
    {id: 3, name: 'キッズ'},
  ]
  include ActiveHash::Associations
  has_many :items

end