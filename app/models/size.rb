class Size < ActiveHash::Base
  self.data = [
    {id: 0, name: '--'},
    {id: 1, name: '23.0'},
    {id: 2, name: '23.5'},
    {id: 3, name: '24.0'},
    {id: 4, name: '24.5'},
    {id: 5, name: '25.0'},
    {id: 6, name: '25.5'},
    {id: 7, name: '26.0'},
    {id: 8, name: '26.5'},
    {id: 9, name: '27.0'},
    {id: 10, name: '27.5'},
    {id: 11, name: '28.0'},
  ]

  include ActiveHash::Associations

end