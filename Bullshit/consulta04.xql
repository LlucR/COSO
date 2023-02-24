for $book in doc("libreria.xml") /bookstore/book
where $book/price <= 30
return <titulo>{ data($book/title) }</titulo>