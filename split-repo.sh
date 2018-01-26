git filter-branch --prune-empty --index-filter '
    # Delete files which are NOT needed
    git ls-files -z | egrep -zv  "^(src/styles/framework)" |
        xargs -0 -r git rm --cached -q
    # Move files to root directory
    git ls-files -s | sed -e "s-\t\(src/styles/framework\)/-\t-" |
        GIT_INDEX_FILE=$GIT_INDEX_FILE.new \
        git update-index --index-info &&
        ( test ! -f "$GIT_INDEX_FILE.new" \
            || mv -f "$GIT_INDEX_FILE.new" "$GIT_INDEX_FILE" )
'