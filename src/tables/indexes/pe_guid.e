note
	description: "[
		we also have psuedo-indexes for the various streams
		these are like regular indexes except streams are unambiguous so we don't need to shift
		and add a tag
	]"
	date: "$Date$"
	revision: "$Revision$"

class
	PE_GUID

inherit

	PE_INDEX_BASE
		rename
			make as make_base
		redefine
			get_index_shift,
			has_index_overflow
		end

create
	make_with_index,
	make

feature {NONE} -- Initialization

	make
		do
		end

feature -- Operations

	get_index_shift: INTEGER
		do
			Result := 0
		end

	has_index_overflow (a_sizes: ARRAY [NATURAL_64]): BOOLEAN
		do
			Result := large (a_sizes[{PE_TABLE_CONSTANTS}.t_guid + 1].to_natural_32)
		end

end
