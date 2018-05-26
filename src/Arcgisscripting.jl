module Arcgisscripting

using PyCall
@pyimport arcgisscripting as ags

struct GeoProcessorObject
	o::PyObject
end
create() = ags.create() |> GeoProcessorObject

for f in (:CheckOutExtension, :SingleOutputAlgebra_sa)
	@eval ($f)(g::GeoProcessorObject, args...) = g.o[f](args...)
end



end # module
