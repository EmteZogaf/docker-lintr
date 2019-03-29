# lintr

This docker Image contains lintr - Static code analysis for R (https://github.com/jimhester/lintr).

#Usage

Run the docker image, mount the R files to be linted and provide the file paths as arguments.

Example:

```
docker run --rm -v /home/user/r-package:/package-to-test math2306/lintr lint /package-to-test/awesome-script.R 1337-script.R
```
