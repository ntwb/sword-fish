function color.personalize

		# Regular syntax highlighting colors

		var.default fish_color_normal $color_normal

		var.default fish_color_command $color_deepskyblue
		var.default fish_color_param $color_coral
		var.default fish_color_redirection $color_royalblue
		var.default fish_color_comment $color_gray
		var.default fish_color_error $color_tomato
		var.default fish_color_escape $color_gold
		var.default fish_color_operator $color_mediumslateblue
		var.default fish_color_quote $color_chartreuse
		var.default fish_color_autosuggestion $color_gray
		var.default fish_color_valid_path $color_mediumaquamarine --underline

		var.default fish_color_cwd $color_mediumspringgreen
		var.default fish_color_cwd_root $color_deeppink

		# Background color for matching quotes and parenthesis
		var.default fish_color_match $color_lightgrey

		# Background color for search matches
		var.default fish_color_search_match "--background=$color_deepskyblue"

		# Background color for selections
		var.default fish_color_selection "--background=$color_purple"

		# Pager colors
		var.default fish_pager_color_prefix normal
		var.default fish_pager_color_completion normal
		var.default fish_pager_color_description 555 normal
		var.default fish_pager_color_progress normal

		# Directory history colors

		var.default fish_color_history_current normal

		# # Regular syntax highlighting colors
		# var.default fish_color_normal normal
		# var.default fish_color_command 005fd7 purple
		# var.default fish_color_param 00afff cyan
		# var.default fish_color_redirection normal
		# var.default fish_color_comment red
		# var.default fish_color_error red --bold
		# var.default fish_color_escape cyan
		# var.default fish_color_operator cyan
		# var.default fish_color_quote brown
		# var.default fish_color_autosuggestion 555 yellow
		# var.default fish_color_valid_path --underline
		#
		# var.default fish_color_cwd green
		# var.default fish_color_cwd_root red
		#
		# # Background color for matching quotes and parenthesis
		# var.default fish_color_match cyan
		#
		# # Background color for search matches
		# var.default fish_color_search_match --background=purple
		#
		# # Background color for selections
		# var.default fish_color_selection --background=purple
		#
		# # Pager colors
		# var.default fish_pager_color_prefix cyan
		# var.default fish_pager_color_completion normal
		# var.default fish_pager_color_description 555 yellow
		# var.default fish_pager_color_progress cyan
		#
		# #
		# # Directory history colors
		# #
		#
		# var.default fish_color_history_current cyan

end
