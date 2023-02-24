
<publicacion>
{
    for $year in doc("libreria.xml")
    let $books := //book[year = $year]
    order by $year ascending
    return <anio valor="{ $year }" cantidad="{ count($books) }"/>
}
</publicacion>
