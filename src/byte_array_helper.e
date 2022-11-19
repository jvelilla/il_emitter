note
	description: "[
					Helper class to emulate C byte assigments like.
				
					 *(int*)(result + sz) = n;
					 
					  *(longlong*)result = intValue_;
					 
					 Where `result` is defined as Byte* result
					 and Byte as typedef unsigned char Byte; /* 1 byte */

		]"
	date: "$Date$"
	revision: "$Revision$"

class
	BYTE_ARRAY_HELPER

feature -- Element Change

	put_array_natural_8 (a_arr: SPECIAL [NATURAL_8]; a_value: NATURAL_8; a_pos: INTEGER)
		require
			valid_pos: a_pos >= a_arr.lower and then a_pos <= a_arr.upper

		local
			l_arr: ARRAY [NATURAL_8]
			l_mp: MANAGED_POINTER
		do
			create l_arr.make_from_special (a_arr)
			create l_mp.make_from_array (l_arr)
			l_mp.put_natural_8 (a_value, a_pos)
			l_arr := l_mp.read_array (a_arr.lower, a_arr.upper)
			a_arr.copy_data (l_arr.to_special, a_pos, a_pos, 1)
		ensure
			instance_free: class
		end

	put_array_natural_16 (a_arr: SPECIAL [NATURAL_8]; a_value: NATURAL_16; a_pos: INTEGER)
		require
			valid_pos: a_pos >= a_arr.lower and then a_pos <= a_arr.upper

		local
			l_arr: ARRAY [NATURAL_8]
			l_mp: MANAGED_POINTER
		do
			create l_arr.make_from_special (a_arr)
			create l_mp.make_from_array (l_arr)
			l_mp.put_natural_16 (a_value, a_pos)
			l_arr := l_mp.read_array (a_arr.lower, a_arr.upper)
			a_arr.copy_data (l_arr.to_special, a_pos, a_pos, 2)
		ensure
			instance_free: class
		end

	put_array_natural_32 (a_arr: SPECIAL [NATURAL_8]; a_value: NATURAL_32; a_pos: INTEGER)
		require
			valid_pos: a_pos >= a_arr.lower and then a_pos <= a_arr.upper

		local
			l_arr: ARRAY [NATURAL_8]
			l_mp: MANAGED_POINTER
		do
			create l_arr.make_from_special (a_arr)
			create l_mp.make_from_array (l_arr)
			l_mp.put_natural_32 (a_value, a_pos)
			l_arr := l_mp.read_array (a_arr.lower, a_arr.upper)
			a_arr.copy_data (l_arr.to_special, a_pos, a_pos, 4)
		ensure
			instance_free: class
		end

	put_array_natural_64 (a_arr: SPECIAL [NATURAL_8]; a_value: NATURAL_64; a_pos: INTEGER)
		require
			valid_pos: a_pos >= a_arr.lower and then a_pos <= a_arr.upper

		local
			l_arr: ARRAY [NATURAL_8]
			l_mp: MANAGED_POINTER
		do
			create l_arr.make_from_special (a_arr)
			create l_mp.make_from_array (l_arr)
			l_mp.put_natural_64 (a_value, a_pos)
			l_arr := l_mp.read_array (a_arr.lower, a_arr.upper)
			a_arr.copy_data (l_arr.to_special, a_pos, a_pos, 8)
		ensure
			instance_free: class
		end

	put_array_integer_8 (a_arr: SPECIAL [NATURAL_8]; a_value: INTEGER_8; a_pos: INTEGER)
		require
			valid_pos: a_pos >= a_arr.lower and then a_pos <= a_arr.upper

		local
			l_arr: ARRAY [NATURAL_8]
			l_mp: MANAGED_POINTER
		do
			create l_arr.make_from_special (a_arr)
			create l_mp.make_from_array (l_arr)
			l_mp.put_integer_8 (a_value, a_pos)
			l_arr := l_mp.read_array (a_arr.lower, a_arr.upper)
			a_arr.copy_data (l_arr.to_special, a_pos, a_pos, 1)
		ensure
			instance_free: class
		end

	put_array_integer_16 (a_arr: SPECIAL [NATURAL_8]; a_value: INTEGER_16; a_pos: INTEGER)
		require
			valid_pos: a_pos >= a_arr.lower and then a_pos <= a_arr.upper

		local
			l_arr: ARRAY [NATURAL_8]
			l_mp: MANAGED_POINTER
		do
			create l_arr.make_from_special (a_arr)
			create l_mp.make_from_array (l_arr)
			l_mp.put_integer_16 (a_value, a_pos)
			l_arr := l_mp.read_array (a_arr.lower, a_arr.upper)
			a_arr.copy_data (l_arr.to_special, a_pos, a_pos, 2)
		ensure
			instance_free: class
		end

	put_array_integer_32 (a_arr: SPECIAL [NATURAL_8]; a_value: INTEGER_32; a_pos: INTEGER)
		require
			valid_pos: a_pos >= a_arr.lower and then a_pos <= a_arr.upper
		local
			l_arr: ARRAY [NATURAL_8]
			l_mp: MANAGED_POINTER
		do
			create l_arr.make_from_special (a_arr)
			create l_mp.make_from_array (l_arr)
			l_mp.put_integer_32 (a_value, a_pos)
			l_arr := l_mp.read_array (a_arr.lower, a_arr.upper)
			a_arr.copy_data (l_arr.to_special, a_pos, a_pos, 4)
		ensure
			instance_free: class
		end

	put_array_integer_64 (a_arr: SPECIAL [NATURAL_8]; a_value: INTEGER_64; a_pos: INTEGER)
		require
			valid_pos: a_pos >= a_arr.lower and then a_pos <= a_arr.upper
		local
			l_arr: ARRAY [NATURAL_8]
			l_mp: MANAGED_POINTER
		do
			create l_arr.make_from_special (a_arr)
			create l_mp.make_from_array (l_arr)
			l_mp.put_integer_64 (a_value, a_pos)
			l_arr := l_mp.read_array (a_arr.lower, a_arr.upper)
			a_arr.copy_data (l_arr.to_special, a_pos, a_pos, 8)
		ensure
			instance_free: class
		end

end