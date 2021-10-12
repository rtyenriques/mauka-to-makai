Mauka to Makai App

User
has_many :beaches, through: :islands 
has_many :islands
has_many :comments, through: :beaches

email
username
password_digest


Beach
belongs_to :user
belongs_to :island
has_many :comments
has_many :users, through: :comments

name
surf
island



Island
has_many :beaches
has_many :users, through: :beaches

name
main_city



name



comment
belongs_to :beaches
belongs_to :user

content





