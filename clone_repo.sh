%%bash
# ===================
clone_repo() {
    local repoDir="$1"
    local repoUrl="$2"

    cd /content

    echo "[INFO] Folder exists: $repoDir"

    if [ -d "$repoDir" ]; then
        rm -rf "$repoDir" && echo "Delate old $repoDir"
    else
        echo "No folder: $repoDir"
    fi

    echo "[INFO] Download repository"
    git clone "$repoUrl" && echo "DONE"

    echo "[INFO] End status of creat folder in /content:"
    ls
}
