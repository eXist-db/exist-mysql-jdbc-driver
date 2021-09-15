xquery version "3.1";

(:~
 : A very simple example XQuery Library Module implemented
 : in XQuery.
 :)
module namespace mysql = "https://exist-db.org/exist-db/ns/app/mysql";

declare function mysql:say-hello($name as xs:string?) as document-node(element(hello)) {
    document {
        element hello {
            if($name) then
                $name
            else
                "stranger"
        }
    }
};

declare function mysql:hello-world() as document-node(element(hello)) {
    mysql:say-hello("world")
};

declare function mysql:add($a as xs:int, $b as xs:int) as xs:int {
    $a + $b
};
