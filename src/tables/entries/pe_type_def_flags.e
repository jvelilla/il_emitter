note
	description: "Summary description for {PE_TYPE_DEF_FLAGS}."
	date: "$Date: 2022-11-03 08:29:14 -0300 (Thu, 03 Nov 2022) $"
	revision: "$Revision: 106391 $"

class
	PE_TYPE_DEF_FLAGS

feature -- Enum: Flags

		-- Visibility

	VisibilityMask: INTEGER = 0x00000007

	NotPublic: INTEGER = 0x00000000
	Public: INTEGER = 0x00000001

	NestedPublic: INTEGER = 0x00000002
	NestedPrivate: INTEGER = 0x00000003
	NestedFamily: INTEGER = 0x00000004
	NestedAssembly: INTEGER = 0x00000005
	NestedFamANDAssem: INTEGER = 0x00000006
	NestedFamORAssem: INTEGER = 0x00000007

		-- layout

	LayoutMask: INTEGER = 0x00000018

	AutoLayout: INTEGER = 0x00000000
	SequentialLayout: INTEGER = 0x00000008
	ExplicitLayout: INTEGER = 0x00000010

		-- semantics

	ClassSemanticsMask: INTEGER = 0x00000060

	Class_: INTEGER = 0x00000000
	Interface: INTEGER = 0x00000020

		-- other attributes

	Abstract: INTEGER = 0x00000080
	Sealed: INTEGER = 0x00000100
	SpecialName: INTEGER = 0x00000400
	Import: INTEGER = 0x00001000
	Serializable: INTEGER = 0x00002000

		-- string format

	StringFormatMask: INTEGER = 0x00030000

	AnsiClass: INTEGER = 0x00000000
	UnicodeClass: INTEGER = 0x00010000
	AutoClass: INTEGER = 0x00020000
	CustomFormatClass: INTEGER = 0x00030000

		-- valid for custom format class but undefined

	CustomFormatMask: INTEGER = 0x00C00000

	BeforeFieldInit: INTEGER = 0x00100000
	Forwarder: INTEGER = 0x00200000

		-- runtime
	ReservedMask: INTEGER = 0x00040800
	RTSpecialName: INTEGER = 0x00000800

	HasSecurity: INTEGER = 0x00040000

end
