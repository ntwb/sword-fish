if not var.done find_init
  find.init
end

function find.program

    if arg $argv

      if arg.two $argv

        set -l find_program "$argv[1]"
        set -l find_program_var "$argv[2]"

        if not contains $find_program $found_programs
          set -l find_bin (eval find.path $find_program)
          if test (count $find_bin) -eq 1
            set -xg $find_program_var $find_bin
            set -xg found_programs $found_programs $find_program
            # debug "find.program: $find_program -> [$find_bin]"
          else if test (count $find_bin) -gt 1
            set -xg $find_program_var $find_bin[1]
            set -xg found_programs $found_programs $find_program
            # debug "find.program: $find_program -> [$find_bin[1]] $find_bin[2..-1]"
          end
        end

      else if arg.one $argv

          set -l find_program "$argv[1]"

          if not contains $find_program $found_programs
            set -l find_bin (eval find.path $find_program)
            if test (count $find_bin) -eq 1
              set -xg $find_program $find_bin
              set -xg found_programs $found_programs $find_program
              # debug "find.program: $find_program -> [$find_bin]"
            else if test (count $find_bin) -gt 1
              set -xg $find_program $find_bin[1]
              set -xg found_programs $found_programs $find_program
              # debug "find.program: $find_program -> [$find_bin[1]] $find_bin[2..-1]"
            end
          end
      end
    end

end


      # set -l find_program "$argv[1]"
      # # debug "find.program: [$found] [$find_program]"
      # if not contains $find_program $found
      #   set -l find_bin (eval find.path $find_program)
      #   # debug "find.program: adding $argv[1] with $find_bin"
      #   if test (count $find_bin) -eq 1
      #     set -xg $find_program $find_bin
      #     set -xg found $found $find_program
      #     # debug "find.program: $find_program -> [$find_bin]"
      #   else if test (count $find_bin) -gt 1
      #     set -xg $find_program $find_bin[1]
      #     set -xg found $found $find_program
      #     # debug "find.program: $find_program -> [$find_bin[1]] $find_bin[2..-1]"
      #   end
      # else
      #   # debug "find.program: $find_program contains $found"
      # end
    # end
    # set -l find_bin
    #
    #
    #   # debug $argv
    #   if not contains $found $argv[1]
    #     # debug not contains $argv
    #     set find_program $argv[1]
    #     set find_bin (eval $which "$argv[1]")
    #     # debug $find_program $find_bin
    #     # return 1
    #     if not test -z "$find_bin"
    #       debug "find.program: [$find_program] -> [$find_bin]"
    #       set -xg $find_program $find_bin
    #       set -xg found $found $argv
    #       return 0
    #     else
    #       debug "find.program: [$find_program] not found"
    #       return 1
    #     end
    #   else
    #     return 0
    #   end
    # end
    # else
        # debug "Program [$find_program] not found"
        # return 1
    # end
# end

# function find.path
#
# end
# #
