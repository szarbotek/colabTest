# colabTest

Testing of adding repo to google colab notebook

```bash
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
```

Activate funtion to `git clone` repositoy with some control of project level adding (add in main tree new repo)

```bash

clone_repo "colabTest" "https://github.com/szarbotek/colabTest"```
```

For python test in colab `.ipynb`

```python 

from colabTest.module_test import my_method

x = my_method(10)
print(x)
```

result:
```
>>>
Activate module from Git
11
```





