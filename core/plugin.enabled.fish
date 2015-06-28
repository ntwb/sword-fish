function plugin.enabled
  if arg.one $argv
    if contains "$argv" $sword_plugins
      if test -f "$sword_plugin/$argv/.enabled"
        return 0
      else
        return 1
      end
    end
  else
    for plugin in $sword_plugins
      if test -f "$sword_plugin/$plugin/.enabled"
        echo -n "$plugin "
      end
    end
  end
end