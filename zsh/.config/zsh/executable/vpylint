poetry env info --path 2>&1 >/dev/null
if [ $? -eq 0 ]; then
    $(poetry env info --path)/bin/pylint $@
else
    pylint $@
fi
