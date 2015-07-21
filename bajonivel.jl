 suma(x, y) = x + y


@code_lowered suma(1, 1)
#1-element Array{Any,1}:
 #:($(Expr(:lambda, Any[:x,:y], Any[Any[Any[:x,:Any,0],Any[:y,:Any,0]],Any[],0,Any[]], :(begin  # none, line 1:
        #return x + y
    #end))))

@code_typed suma(1, 1)
#1-element Array{Any,1}:
 #:($(Expr(:lambda, Any[:x,:y], Any[Any[Any[:x,Int64,0],Any[:y,Int64,0]],Any[],Any[],Any[]], :(begin  # none, line 1:
        #return (top(box))(Int64,(top(add_int))(x::Int64,y::Int64))
    #end::Int64))))
#
@code_llvm suma(1, 1)
#
#define i64 @julia_suma_21868(i64, i64) {
#top:
  #%2 = add i64 %1, %0
  #ret i64 %2
#}

@code_native suma(1, 1)
    #.section    __TEXT,__text,regular,pure_instructions
#Filename: none
#Source line: 1
    #pushq   %rbp
    #movq    %rsp, %rbp
#Source line: 1
    #addq    %rsi, %rdi
    #movq    %rdi, %rax
    #popq    %rbp
    #ret

@code_warntype suma(1, 1)
#Variables:
  #x::Int64
  #y::Int64
#
#Body:
  #begin  # none, line 1:
      #return (top(box))(Int64,(top(add_int))(x::Int64,y::Int64))
  #end::Int64
#
 