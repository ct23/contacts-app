require "http"

response = HTTP.get("http://localhost:3000/api/contacts_url")
contacts = response.parse
puts contacts