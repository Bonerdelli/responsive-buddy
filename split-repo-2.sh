# Splitting a git repository and follow directory renames
#
# Many thanks to @haimg, see
# https://stackoverflow.com/questions/14759345/how-to-split-a-git-repository-and-follow-directory-renames
# NOTE: for a fastest execution it must be done in Linux

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
# Prune empty merge commits from history
# NOTE: It does require GNU versions of xargs and sed

git filter-branch -f --prune-empty --parent-filter '
    gsed "s/-p //g" | gxargs -r git show-branch --independent | gsed "s/\</-p /g"
'