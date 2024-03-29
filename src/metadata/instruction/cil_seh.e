note
	description: "Summary description for {CIL_SEH}."
	date: "$Date: 2022-10-17 15:31:32 -0300 (Mon, 17 Oct 2022) $"
	revision: "$Revision: 106386 $"

once class
	CIL_SEH

create
	seh_try, seh_catch, seh_finally, seh_fault, seh_filter, seh_filter_handler

feature {NONE} -- Creation

	seh_try once  end
	seh_catch once  end
	seh_finally once  end
	seh_fault once  end
	seh_filter once  end
	seh_filter_handler once  end

feature -- Access

	instances: ITERABLE [CIL_SEH]
			-- All known cil sehs
		do
			Result := <<{CIL_SEH}.seh_try, {CIL_SEH}.seh_catch, {CIL_SEH}.seh_finally, {CIL_SEH}.seh_fault, {CIL_SEH}.seh_filter, {CIL_SEH}.seh_filter_handler>>
		ensure
			instance_free: class
		end


	index_of (a_value: CIL_SEH): INTEGER
			-- Index of first occurrence of item identical to `a_value'.
			-- -1 if none.
		local
			l_area: SPECIAL [CIL_SEH]
		do
			l_area := (create {ARRAYED_LIST [CIL_SEH]}.make_from_iterable (instances)).area
			Result :=  l_area.index_of(a_value, l_area.lower)
		ensure
			instance_free: class
		end


end
