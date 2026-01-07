# db/seeds.rb

# Usuń istniejących użytkowników i produkty
User.destroy_all
Product.destroy_all

# Stwórz przykładowego użytkownika
user = User.create!(
  email: "user@shop.pl",
  password: "123456",
  name: "Jan Kowalski"
)

# Stwórz przykładowe produkty przypisane do tego użytkownika z flagami
Product.create!(
  name: "Laptop Dell XPS 13",
  description: "Lekki laptop do pracy programisty. 16GB RAM, SSD.",
  price: 5899,
  user: user,
  active: true,
  featured: true
)

Product.create!(
  name: "Klawiatura mechaniczna Keychron K2",
  description: "Bezprzewodowa klawiatura mechaniczna z podświetleniem.",
  price: 449,
  user: user,
  active: true,
  featured: false
)

Product.create!(
  name: "Mysz Logitech MX Master 3",
  description: "Ergonomiczna mysz do pracy biurowej i programowania.",
  price: 399,
  user: user,
  active: true,
  featured: false
)

Product.create!(
  name: "Monitor LG UltraWide 34\"",
  description: "Monitor ultrapanoramiczny idealny do pracy z kodem.",
  price: 1899,
  user: user,
  active: true,
  featured: true
)

Product.create!(
  name: "Słuchawki Sony WH-1000XM5",
  description: "Słuchawki z aktywną redukcją szumów.",
  price: 1599,
  user: user,
  active: false,
  featured: false
)

puts "Seed zakończony! Stworzono użytkownika #{user.email} i #{Product.count} produktów."