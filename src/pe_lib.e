note
	description: "Summary description for {PE_LIB}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	PE_LIB

create
	make

feature {NONE} -- Initialization

	make (a_name: STRING_32; a_core_flags: INTEGER)
			-- Create the working assembly
			-- Note that this will ALLWAYS be the first assembly in the list.
		local
			l_assembly_ref: ASSEMBLY_DEF
		do
			core_flags := a_core_flags

				-- TODO check if it's convenient to use a NULL Object in
				-- the following cases.
--			pe_writer := Void
--			input_stream := Void
--			output_stream := Void
--			code_container := Void
--			obj_input_buf := Void

			create module_refs.make (0)

			create {LINKED_LIST [ASSEMBLY_DEF]} assembly_refs.make
			create p_invoke_signatures.make (0)
			create p_invoke_references.make (0)
			create assembly_name.make_empty
			create file_name.make_empty
			create unmanaged_routines.make (0)
			create using_list.make (0)
			create container_stack.make

			create l_assembly_ref.make (a_name, False, 0)
			assembly_refs.force (l_assembly_ref)

		end

	assembly_refs: LIST [ASSEMBLY_DEF]

	p_invoke_signatures: STRING_TABLE [METHOD]

	p_invoke_references: STRING_TABLE [LIST [METHOD_SIGNATURE]]
			-- Use it as a multimap.
			-- Multimap is an associative container that contains a sorted list of key-value pairs, while permitting multiple entries with the same key.
			-- Sorting is done according to the comparison function Compare, applied to the keys. Search, insertion, and removal operations have logarithmic complexity.

	assembly_name: STRING_32

	output_stream: detachable FILE

	input_stream: detachable FILE

	file_name: STRING_32

	unmanaged_routines: STRING_TABLE [STRING_32]

	core_flags: INTEGER

	pe_writer: detachable PE_WRITER

	using_list: ARRAYED_LIST [NAMESPACE]

	container_stack: LINKED_LIST [DATA_CONTAINER]
			-- Use it as a deque
			-- deque (usually pronounced like "deck") is an irregular acronym of double-ended queue.
			-- Double-ended queues are sequence containers with dynamic sizes that can be expanded or contracted on both ends (either its front or its back).

	code_container: detachable CODE_CONTAINER

	obj_input_buf: detachable STRING

	obj_input_size: INTEGER

	obj_input_pos: INTEGER

	obj_input_cache: INTEGER


feature -- Access

	module_refs: HASH_TABLE [NATURAL, NATURAL]


--	        ///** Get the working assembly
--        // This is the one with your code and data, that gets written to the output
--        AssemblyDef *WorkingAssembly() const { return assemblyRefs_.front(); }

	working_assembly: ASSEMBLY_DEF
			-- Get the working assembly
			-- This is the one with your code and data, that gets written to the output
		do
			Result := assembly_refs.first
		end

feature -- Access::FindType

		-- TODO check if we can use once classes

	s_notfound: INTEGER = 0
	s_ambiguous: INTEGER = 1
	s_namespace: INTEGER = 2
	s_class: INTEGER = 3
	s_enum: INTEGER = 4
	s_field: INTEGER = 5
	s_property: INTEGER = 6
	s_method: INTEGER = 7

feature -- Access::CorFlags

		-- TODO check if we can use once classes

	il_only: INTEGER = 1
			-- Set this for compatibility with .net assembly imports,
			-- unset it for standalone assemblies if you want to modify your
			-- sdata

	bits32: INTEGER = 2
			-- Set this if you want to force 32 bits - you will possibly need it
			-- for pinvokes


feature -- Operations

	add_pinvoke_reference (a_method_sig: METHOD_SIGNATURE; a_dll_name: STRING_32; iscdecl: BOOLEAN)
		local
			l_method: METHOD
		do
			create l_method.make (a_method_sig, create {QUALIFIERS}.make_with_flags ({METHOD_ATTRIBUTES}.pinvokefunc | {METHOD_ATTRIBUTES}.public), False)
			l_method.set_pinvoke(a_dll_name, if iscdecl then {INVOKE_TYPE}.Cdecl else {INVOKE_TYPE}.Stdcall end)
			p_invoke_signatures.force (l_method, a_method_sig.name)
		end

	allocate_method (a_method_sig: METHOD_SIGNATURE; a_flags: QUALIFIERS; a_entry: BOOLEAN): METHOD
		do
				-- TODO double check if we really need this feature.
				-- since we can create it directly.
				-- In C++ it's needed since the class it's responsible to Manage the Memory
			create Result.make (a_method_sig, a_flags, a_entry)
		end
end
