note
	description: "[
			This class is the base class for pointer index rendering
			(index value in FieldPointer or MethodPointer tables)
		]"
	date: "$Date: 2023-07-20 13:39:59 -0300 (Thu, 20 Jul 2023) $"
	revision: "$Revision: 107165 $"

deferred class
	PE_POINTER_INDEX

inherit
	PE_INDEX_BASE
		redefine
			has_index_overflow,
			accepts
		end

feature -- Access

	associated_table_index: NATURAL_32
		deferred
		end

feature -- Access

	has_index_overflow (a_sizes: ARRAY [NATURAL_32]): BOOLEAN
		do
			Result := large (a_sizes [associated_table_index.to_integer_32 + 1])
		end

feature -- Visitor

	accepts (vis: MD_VISITOR)
		do
			vis.visit_pointer_index (Current)
		end

end
