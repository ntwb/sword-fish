function sword.version.remote
        if git.is $sword_root
            if net.connected
                set sword_version_remote (call $git --git-dir="$sword_root/.git" --work-tree="$sword_root" ls-remote origin HEAD | grep HEAD | cut -c 1-7)
            else
                set sword_version_remote (sword.version.git)
            end
            out $sword_version_remote
        end
end
