function count.files
  if arg $argv
    # switch $argv
    #   case h hidden
    #   	set -l count (ls -1 -a . | wc -l) ;
    # 		set -l count (math $count-2) ;
    # 		echo (color blue) $count (color normal) ;
    #   case f files
    #     	set -l file_count (ls -1 -a . | wc -l) ;
    #     	set -l count (math $count-2) ;
	  #       echo (color blue) $count (color normal) ;
    #   case d firs
    #   	set -l count (ls -1 -a . | wc -l) ;
	  #     set -l count (math $count-2) ;
	  #     echo (color blue) $count (color normal) ;
    #   case a all
    #   	set -l count (ls -1 -a . | wc -l) ;
	  #     set -l count (math $count-2) ;
	  #     echo (color blue) $count (color normal) ;
    #   case '*'
    #     error "invalid"
    # end
    set -l tmp_count (ls -1 -a . | wc -l)
    set -l count (math $tmp_count-2)
    out $tmp_count
  else
  # echo (green) Counting all files and folders ... (normal)
    set -l tmp_count (ls -1 -a . | wc -l)
    set -l count (math $tmp_count-2)
    out $count
  end
end
