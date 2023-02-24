for $book in doc("libreria.xml")/bookstore/book
order by $book/@category ascending, $book/title/text() ascending
return $book
