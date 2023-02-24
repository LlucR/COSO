for $book in doc("libreria.xml")/bookstore/book
let $precio_con_iva := $book/price * 1.21
order by $precio_con_iva ascending
return <libro>
         <titulo>{ data($book/title) }</titulo>
         <precio>{ data($book/price) }</precio>
         <precio_con_iva>{ $precio_con_iva }</precio_con_iva>
       </libro>