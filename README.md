# Latex pdf signing docker image

Latex docker image built using the centos base image. Image contains the necessary plugins for the pdf signing.

## Example

An example.tex file has been provided with a sample signature. To generate the file locally run the following:

```
docker build -t latex_example .

# From the root of the project
docker run -it -v "`pwd`/:/setup" latex_example pdflatex example
```

A file example.pdf should be created which when viewed in adobe acrobat contains some sample text with a signature field.

## Additional links

* https://www.ctan.org/pkg/conv-xkv - conv-xkv extension CTAN

* https://www.ctan.org/pkg/acrotex - acrotex extension CTAN

