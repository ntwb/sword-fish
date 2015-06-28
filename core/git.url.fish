function git.url
  if arg $argv
    if test -d "$argv/.git"
      pwd.save
      cd "$argv"
      call $git config --get remote.origin.url
      cd (pwd.get)
    end
  else
    call $git config --get remote.origin.url
  end
  # git ls-remote --get-url
# git config --get remote.origin.url
end
