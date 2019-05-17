# 
# prepend a 'prefix' to each item in the 'input_list'
# 
function(list_prepend_each input_list prefix)
    set(output_list "")
    foreach(item ${${input_list}})
        list(APPEND output_list "${prefix}${item}")
    endforeach()
    set(${input_list} ${output_list} PARENT_SCOPE)
endfunction()

# 
# append a 'postfix' to each item in the 'input_list'
# 
function(list_append_each input_list postfix)
    set(output_list "")
    foreach(item ${${input_list}})
        list(APPEND output_list "${item}${postfix}")
    endforeach()
    set(${input_list} ${output_list} PARENT_SCOPE)
endfunction()
