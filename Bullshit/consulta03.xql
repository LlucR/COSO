for $book in doc("libreria.xml") /bookstore/book[price <= 30]
return $book
