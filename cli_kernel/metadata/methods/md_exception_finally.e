note
	description: "Description of an exception finally clause."
	legal: "See notice at end of class."
	status: "See notice at end of class."
	date: "$Date: 2008-12-29 21:00:50 -0200 (Mon, 29 Dec 2008) $"
	revision: "$Revision: 76429 $"

class
	MD_EXCEPTION_FINALLY

inherit
	MD_EXCEPTION_CLAUSE

create
	make

feature -- Status report

	flags: INTEGER_16
			-- Flags of exception clause
		do
			Result := {MD_METHOD_CONSTANTS}.clause_finally
		ensure then
			definition: Result = {MD_METHOD_CONSTANTS}.clause_finally
		end

invariant

	no_class_token_or_filter_offset: class_token_or_filter_offset = 0

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

end
