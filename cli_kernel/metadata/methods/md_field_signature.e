note
	description: "Representation a field signature used for defining a field."
	legal: "See notice at end of class."
	status: "See notice at end of class."
	date: "$Date: 2008-12-29 21:00:50 -0200 (Mon, 29 Dec 2008) $"
	revision: "$Revision: 76429 $"

class
	MD_FIELD_SIGNATURE

inherit
	MD_SIGNATURE
		redefine
			make
		end
	
create
	make
	
feature {NONE} -- Initialization

	make
			-- Initialize current.
		do
			Precursor {MD_SIGNATURE}
			internal_put ({MD_SIGNATURE_CONSTANTS}.field_sig, 0)
			current_position := 1
		ensure then
			current_position_set: current_position = 1
		end

feature -- Reset

	reset
			-- Reset content.
		do
			internal_put ({MD_SIGNATURE_CONSTANTS}.field_sig, 0)
			current_position := 1
		ensure
			current_position_set: current_position = 1
		end
		
note
	copyright:	"Copyright (c) 1984-2006, Eiffel Software"
	license:	"GPL version 2 (see http://www.eiffel.com/licensing/gpl.txt)"
	licensing_options:	"http://www.eiffel.com/licensing"
	copying: "[
			This file is part of Eiffel Software's Eiffel Development Environment.
			
			Eiffel Software's Eiffel Development Environment is free
			software; you can redistribute it and/or modify it under
			the terms of the GNU General Public License as published
			by the Free Software Foundation, version 2 of the License
			(available at the URL listed under "license" above).
			
			Eiffel Software's Eiffel Development Environment is
			distributed in the hope that it will be useful,	but
			WITHOUT ANY WARRANTY; without even the implied warranty
			of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
			See the	GNU General Public License for more details.
			
			You should have received a copy of the GNU General Public
			License along with Eiffel Software's Eiffel Development
			Environment; if not, write to the Free Software Foundation,
			Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301  USA
		]"
	source: "[
			 Eiffel Software
			 356 Storke Road, Goleta, CA 93117 USA
			 Telephone 805-685-1006, Fax 805-685-6869
			 Website http://www.eiffel.com
			 Customer support http://support.eiffel.com
		]"

end -- class MD_FIELD_SIGNATURE
