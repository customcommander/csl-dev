# CSL Dev

This Docker image contains:

- [CSL Schema v1.0.1](https://github.com/citation-style-language/schema/releases). (Available in `/var/csl/schema`.)
- [Jing](https://github.com/relaxng/jing-trang). (Validator for RELAX NG.)

## Prerequisites

1.  You must have Docker installed on your machine.

2.  You must build the Docker image first:

    ```
    cd /path/to/csl-dev
    docker build -t customcommander/csl-dev .
    ```



## How to validate a CSL file?

```
cd /path/to/csl-dev
./validate-csl.sh /path/to/my/style.csl
```

_Note: if the CSL file is valid nothing will be printed out._
