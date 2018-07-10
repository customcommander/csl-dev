# CSL Dev

This Docker image contains:

- [CSL Schema v1.0.1](https://github.com/citation-style-language/schema/releases). (Available in `/var/csl/schema`.)
- [Jing](https://github.com/relaxng/jing-trang). (Validator for RELAX NG.)

## Install

```
docker pull customcommander/csl-dev
```

## Usage

In the following example, the CSL's [styles](https://github.com/citation-style-language/styles) repository has been cloned into `~/GitHub`.

1.  Start the container with some data:

    ```bash
    cd ~/GitHub/styles
    # mount ~/GitHub/styles into /var/csl/data
    docker run -it --rm --mount type=bind,src=$PWD,dst=/var/csl/data -w /var/csl/data customcommander/csl-dev
    ```

2.  Validate a file:

    ```bash
    # (inside the container)
    # jing displays some warnings in stderr which can be safely ignored
    # validation errors are redirected to stdout
    jing -c /var/csl/schema/csl.rnc academy-of-management-review.csl 2>/dev/null
    ```
