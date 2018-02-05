Reading.destroy_all
User.destroy_all
Book.destroy_all

r = User.create!(name: "Roger")
m = User.create!(name: "Michel")
b = User.create!(name: "Bernard")
j = User.create!(name: "Jeanine")
g = User.create!(name: "Ginette")


b1 = Book.create!(name: "The Book Thief ")
b2 = Book.create!(name: "The Chronicles of Narnia")
b3 = Book.create!(name: "Harry Potter")
b4 = Book.create!(name: "The Hunger Games")
b5 = Book.create!(name: "To Kill a Mockingbird ")
b6 = Book.create!(name: "Pride and Prejudice")
b7 = Book.create!(name: "The Fault in Our Stars")
b8 = Book.create!(name: "The Giving Tree")

# Roger a tout lu
r.readings.create!([
  { book: b1 },
  { book: b2 },
  { book: b3 },
  { book: b4 },
  { book: b5 },
  { book: b6 },
  { book: b7 },
  { book: b8 }
])

# Michel a lu la première moitié
m.readings.create!([
  { book: b1 },
  { book: b2 },
  { book: b3 },
  { book: b4 }
])

# Bernard a lu l'autre moitié
b.readings.create!([
  { book: b5 },
  { book: b6 },
  { book: b7 },
  { book: b8 }
])

# Jeanine a lu un sur deux
j.readings.create!([
  { book: b1 },
  { book: b3 },
  { book: b5 },
  { book: b7 }
])

# Ginette a lu que le premier
g.readings.create([
  { book: b1 }
])
