note
	description: "Summary description for {CLI_STRING_HANDLER}."
	date: "$Date: 2023-05-25 07:43:57 -0300 (Thu, 25 May 2023) $"
	revision: "$Revision: 106876 $"

class
	CLI_STRING_HANDLER

inherit
	NATIVE_STRING_HANDLER

	STRING_HANDLER

feature {NONE} -- Externals

	c_strlen (a_ptr: POINTER): NATURAL_64
			-- Length in bytes of a platform specific file name pointer, not
			-- including the null-terminating character.
		require
			a_ptr_not_null: a_ptr /= default_pointer
		external
			"C inline use %"eif_eiffel.h%""
		alias
			"{
				return (EIF_NATURAL_64) wcslen($a_ptr) * sizeof(wchar_t);
			}"
		end

end
