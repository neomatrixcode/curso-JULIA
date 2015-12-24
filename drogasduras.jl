a=1
b=2
c=3

type animal
x::String
y::String
end

a = {"hola"=>2, "adios"=>x->x+1, "animal"=> animal("oso","azul"), "arreglo" => [ eval(:(($op)(($op)(a,b),c))) for op = (:+, :*, :&, :|, :$) ] }


ja={"locuras"=>[a,1,"hola"]}

map(ja["locuras"][1]["adios"], ja["locuras"][1]["arreglo"])


h(x)=2x
palabra= readline(STDIN)
palabra= palabra[1:end-1]
eval(parse(palabra))
