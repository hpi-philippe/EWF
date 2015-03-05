note
	description: "Summary description for {WIZARD_PAGE_SECTION_ITEM}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	WIZARD_PAGE_SECTION_ITEM

inherit
	WIZARD_PAGE_ITEM

create
	make

feature {NONE} -- Initialization

	make (a_text: READABLE_STRING_GENERAL)
		do
			set_text (a_text)
		end

feature -- Access

	text: IMMUTABLE_STRING_32

	item_id: detachable READABLE_STRING_8
			-- Optional id to identify related page item.

feature -- Element change

	set_text (a_text: READABLE_STRING_GENERAL)
		do
			create text.make_from_string_general (a_text)
		end

	set_item_id (a_id: like item_id)
		do
			item_id := a_id
		end

end
