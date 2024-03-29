note
	description: "Summary description for {PE_FIXED_VERSION_INFO}."
	date: "$Date: 2022-12-26 16:07:06 -0300 (Mon, 26 Dec 2022) $"
	revision: "$Revision: 106465 $"

class
	PE_FIXED_VERSION_INFO

feature -- Access

	signature: NATURAL_32 assign set_signature
			-- `signature'

	struct_version: NATURAL_32 assign set_struct_version
			-- `struct_version'

	file_version_ms: NATURAL_32 assign set_file_version_ms
			-- `file_version_ms'

	file_version_ls: NATURAL_32 assign set_file_version_ls
			-- `file_version_ls'

	product_version_ms: NATURAL_32 assign set_product_version_ms
			-- `product_version_ms'

	product_version_ls: NATURAL_32 assign set_product_version_ls
			-- `product_version_ls'

	file_flags_mask: NATURAL_32 assign set_file_flags_mask
			-- `file_flags_mask'

	file_flags: NATURAL_32 assign set_file_flags
			-- `file_flags'

	file_os: NATURAL_32 assign set_file_os
			-- `file_os'

	file_type: NATURAL_32 assign set_file_type
			-- `file_type'

	file_subtype: NATURAL_32 assign set_file_subtype
			-- `file_subtype'

	file_date_ms: NATURAL_32 assign set_file_date_ms
			-- `file_date_ms'

	file_date_ls: NATURAL_32 assign set_file_date_ls
			-- `file_date_ls'

feature -- Element change

	set_signature (a_signature: like signature)
			-- Assign `signature' with `a_signature'.
		do
			signature := a_signature
		ensure
			signature_assigned: signature = a_signature
		end

	set_struct_version (a_struct_version: like struct_version)
			-- Assign `struct_version' with `a_struct_version'.
		do
			struct_version := a_struct_version
		ensure
			struct_version_assigned: struct_version = a_struct_version
		end

	set_file_version_ms (a_file_version_ms: like file_version_ms)
			-- Assign `file_version_ms' with `a_file_version_ms'.
		do
			file_version_ms := a_file_version_ms
		ensure
			file_version_ms_assigned: file_version_ms = a_file_version_ms
		end

	set_file_version_ls (a_file_version_ls: like file_version_ls)
			-- Assign `file_version_ls' with `a_file_version_ls'.
		do
			file_version_ls := a_file_version_ls
		ensure
			file_version_ls_assigned: file_version_ls = a_file_version_ls
		end

	set_product_version_ms (a_product_version_ms: like product_version_ms)
			-- Assign `product_version_ms' with `a_product_version_ms'.
		do
			product_version_ms := a_product_version_ms
		ensure
			product_version_ms_assigned: product_version_ms = a_product_version_ms
		end

	set_product_version_ls (a_product_version_ls: like product_version_ls)
			-- Assign `product_version_ls' with `a_product_version_ls'.
		do
			product_version_ls := a_product_version_ls
		ensure
			product_version_ls_assigned: product_version_ls = a_product_version_ls
		end

	set_file_flags_mask (a_file_flags_mask: like file_flags_mask)
			-- Assign `file_flags_mask' with `a_file_flags_mask'.
		do
			file_flags_mask := a_file_flags_mask
		ensure
			file_flags_mask_assigned: file_flags_mask = a_file_flags_mask
		end

	set_file_flags (a_file_flags: like file_flags)
			-- Assign `file_flags' with `a_file_flags'.
		do
			file_flags := a_file_flags
		ensure
			file_flags_assigned: file_flags = a_file_flags
		end

	set_file_os (a_file_os: like file_os)
			-- Assign `file_os' with `a_file_os'.
		do
			file_os := a_file_os
		ensure
			file_os_assigned: file_os = a_file_os
		end

	set_file_type (a_file_type: like file_type)
			-- Assign `file_type' with `a_file_type'.
		do
			file_type := a_file_type
		ensure
			file_type_assigned: file_type = a_file_type
		end

	set_file_subtype (a_file_subtype: like file_subtype)
			-- Assign `file_subtype' with `a_file_subtype'.
		do
			file_subtype := a_file_subtype
		ensure
			file_subtype_assigned: file_subtype = a_file_subtype
		end

	set_file_date_ms (a_file_date_ms: like file_date_ms)
			-- Assign `file_date_ms' with `a_file_date_ms'.
		do
			file_date_ms := a_file_date_ms
		ensure
			file_date_ms_assigned: file_date_ms = a_file_date_ms
		end

	set_file_date_ls (a_file_date_ls: like file_date_ls)
			-- Assign `file_date_ls' with `a_file_date_ls'.
		do
			file_date_ls := a_file_date_ls
		ensure
			file_date_ls_assigned: file_date_ls = a_file_date_ls
		end

feature -- Managed Pointer

	managed_pointer: MANAGED_POINTER
		local
			l_pos: INTEGER
		do
			create Result.make (size_of)
			l_pos := 0

				-- signature
			Result.put_natural_32_le (signature, l_pos)
			l_pos := l_pos + {PLATFORM}.natural_32_bytes

				-- struct_version
			Result.put_natural_32_le (struct_version, l_pos)
			l_pos := l_pos + {PLATFORM}.natural_32_bytes

				-- file_version_ms
			Result.put_natural_32_le (file_version_ms, l_pos)
			l_pos := l_pos + {PLATFORM}.natural_32_bytes

				-- file_version_ls
			Result.put_natural_32_le (file_version_ls, l_pos)
			l_pos := l_pos + {PLATFORM}.natural_32_bytes

				-- product_version_ms
			Result.put_natural_32_le (product_version_ms, l_pos)
			l_pos := l_pos + {PLATFORM}.natural_32_bytes

				-- product_version_ls
			Result.put_natural_32_le (product_version_ls, l_pos)
			l_pos := l_pos + {PLATFORM}.natural_32_bytes

				-- file_flags_mask
			Result.put_natural_32_le (file_flags_mask, l_pos)
			l_pos := l_pos + {PLATFORM}.natural_32_bytes

				-- file_flags
			Result.put_natural_32_le (file_flags, l_pos)
			l_pos := l_pos + {PLATFORM}.natural_32_bytes

				-- file_os
			Result.put_natural_32_le (file_os, l_pos)
			l_pos := l_pos + {PLATFORM}.natural_32_bytes

				-- file_type
			Result.put_natural_32_le (file_type, l_pos)
			l_pos := l_pos + {PLATFORM}.natural_32_bytes

				-- file_subtype
			Result.put_natural_32_le (file_subtype, l_pos)
			l_pos := l_pos + {PLATFORM}.natural_32_bytes

				-- file_date_ms
			Result.put_natural_32_le (file_date_ms, l_pos)
			l_pos := l_pos + {PLATFORM}.natural_32_bytes

				-- file_date_ls
			Result.put_natural_32_le (file_date_ls, l_pos)
		end

feature -- Measurement

	size_of: INTEGER
		local
			l_internal: INTERNAL
			n: INTEGER
			l_obj: PE_FIXED_VERSION_INFO
		do
			create l_obj
			create l_internal
			n := l_internal.field_count (l_obj)
			across 1 |..| n as ic loop
				if attached l_internal.field (ic, l_obj) as l_field then
					if attached {NATURAL_32} l_field then
						Result := Result + {PLATFORM}.natural_32_bytes
					end
				end
			end
		ensure
			instance_free: class
		end



end
