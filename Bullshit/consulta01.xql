for $book in doc("libreria.xml") /bookstore/book
return <titulo>{ $book/title/text() }</titulo>
