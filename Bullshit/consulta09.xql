<resultado>
{
    for $book in doc("libreria.xml")
    return <titulo>{ data($book/title) }</titulo>
}
<total>{count(doc("libreria.xml")/bookstore/book)}</total>
</resultado>