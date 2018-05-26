module Arcgisscripting

using PyCall
@pyimport arcgisscripting as ags

create() = ags.create()

end # module
