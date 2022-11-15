note
	description: "Summary description for {PE_POOL}."
	date: "$Date$"
	revision: "$Revision$"

class
	PE_POOL

inherit

	REFACTORING_HELPER

create
	make

feature {NONE} -- Implementation

	make
		do
			size := 0
			max_size := 200
			create base.make_filled (0, 200)
		ensure
			size_zero: size = 0
			max_size: max_size = 200
			base_empty: base.capacity = 200
		end

feature -- Access

	size: NATURAL

	max_size: NATURAL

	base: SPECIAL [NATURAL_8]
		-- todo double check if we need to use
		-- SPECIAL instead of ARRAY

	confirm (new_size: NATURAL)
			-- C++ uses ensure
		require
			valid_size: size + new_size <= max_size
		do
			if size + new_size > max_size then
				if size + new_size < max_size * 2 then
					max_size := max_size * 2
				else
					max_size := (max_size + new_size) * 2
				end
				base := base.resized_area_with_default (0, max_size.to_integer_32)
			end
		ensure
			new_max_size: base.capacity.to_natural_32 = max_size
		end

feature -- Element Change

	increment_size
			-- Increment size by 1.
		do
			size := size + 1
		ensure
			size_incremented: old size + 1 = size
		end

	increment_size_by (a_value: NATURAL)
			-- Increment size by `a_value`.
		do
			size := size + a_value
		ensure
			size_incremented: old size + a_value = size
		end

	copy_data (a_index: INTEGER; a_data: ARRAY [NATURAL_8]; a_count: INTEGER)
		local
			l_index: INTEGER
		do
			 -- TODO double check if
			 -- base.copy_data (other: SPECIAL [T], source_index, destination_index, n: INTEGER_32)
			 -- could replace the following code.
			l_index := a_index
			across 1 |..| a_count as ic  loop
				base [l_index] := ic.to_natural_8
				l_index := l_index + 1
			end
		end

end
