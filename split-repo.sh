src/resources/less/framework
src/resources/less/blocks.less
src/resources/less/grid.less
src/resources/less/mixins.less
src/resources/less/reset.less

git filter-branch --prune-empty --index-filter '
    # Delete files which are NOT needed
    git ls-files -z | egrep -zv  "^(src/resources/less/framework|src/resources/less/blocks.less|src/resources/less/grid.less|src/resources/less/mixins.less|src/resources/less/reset.less)" |
        xargs -0 -r git rm --cached -q
    # Move files to root directory
    git ls-files -s | sed -e "s-\t\(src/resources/less/framework\|src/resources/less/blocks.less\|src/resources/less/grid.less\|src/resources/less/mixins.less\|src/resources/less/reset.less\)/-\t-" |
        GIT_INDEX_FILE=$GIT_INDEX_FILE.new \
        git update-index --index-info &&
        ( test ! -f "$GIT_INDEX_FILE.new" \
            || mv -f "$GIT_INDEX_FILE.new" "$GIT_INDEX_FILE" )
'

mkdir framework
git mv blocks.less ./framework/
git mv grid.less ./framework/
git mv mixins.less ./framework/
git mv reset.less ./framework/
