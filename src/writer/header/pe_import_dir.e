note
	description: "Summary description for {PE_IMPORT_DIR}."
	date: "$Date: 2022-12-26 16:07:06 -0300 (Mon, 26 Dec 2022) $"
	revision: "$Revision: 106465 $"

class
	PE_IMPORT_DIR


feature -- Access

	thunk_pos2: INTEGER assign set_thunk_pos2
			-- `address thunk'

	time: INTEGER assign set_time
			-- `time'

	version: INTEGER assign set_version
			-- `version'

	dll_name: INTEGER assign set_dll_name
			-- `dll_name'

	thunk_pos: INTEGER assign set_thunk_pos
			-- name thunk

feature -- Element change

	set_thunk_pos2 (a_thunk_pos2: like thunk_pos2)
			-- Assign `thunk_pos2' with `a_thunk_pos2'.
		do
			thunk_pos2 := a_thunk_pos2
		ensure
			thunk_pos2_assigned: thunk_pos2 = a_thunk_pos2
		end

	set_time (a_time: like time)
			-- Assign `time' with `a_time'.
		do
			time := a_time
		ensure
			time_assigned: time = a_time
		end

	set_version (a_version: like version)
			-- Assign `version' with `a_version'.
		do
			version := a_version
		ensure
			version_assigned: version = a_version
		end

	set_dll_name (a_dll_name: like dll_name)
			-- Assign `dll_name' with `a_dll_name'.
		do
			dll_name := a_dll_name
		ensure
			dll_name_assigned: dll_name = a_dll_name
		end

	set_thunk_pos (a_thunk_pos: like thunk_pos)
			-- Assign `thunk_pos' with `a_thunk_pos'.
		do
			thunk_pos := a_thunk_pos
		ensure
			thunk_post_assigned: thunk_pos = a_thunk_pos
		end


feature -- Managed Pointer

	managed_pointer: MANAGED_POINTER
		local
			l_pos: INTEGER
		do
			create Result.make (size_of)
			l_pos := 0

				-- thunk_pos2
			Result.put_integer_32_le (thunk_pos2, l_pos)
			l_pos := l_pos + {PLATFORM}.integer_32_bytes

				-- time
			Result.put_integer_32_le (time, l_pos)
			l_pos := l_pos + {PLATFORM}.integer_32_bytes

				-- version
			Result.put_integer_32_le (version, l_pos)
			l_pos := l_pos + {PLATFORM}.integer_32_bytes

				-- dll_name
			Result.put_integer_32_le (dll_name, l_pos)
			l_pos := l_pos + {PLATFORM}.integer_32_bytes

				-- thunk_pos
			Result.put_integer_32_le (thunk_pos, l_pos)
		end

feature -- Measurement

	size_of: INTEGER
		local
			l_internal: INTERNAL
			n: INTEGER
			l_obj: PE_IMPORT_DIR
		do
			create l_obj
			create l_internal
			n := l_internal.field_count (l_obj)
			across 1 |..| n as ic loop
				if attached l_internal.field (ic, l_obj) as l_field then
					if attached {INTEGER_32} l_field then
						Result := Result + {PLATFORM}.integer_32_bytes
					end
				end
			end
		ensure
			instance_free: class
		end
end
