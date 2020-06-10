# AMI

Amazon Machine Images

# Validate Template

```
The packer validate Packer command is used to validate the syntax and configuration of a template. The command will return a zero exit status on success, and a non-zero exit status on failure. Additionally, if a template doesn't validate, any error messages will be outputted.

packer validate ami.json
```

# Build AMI

```
The packer build command takes a template and runs all the builds within it in order to generate a set of artifacts. The various builds specified within a template are executed in parallel, unless otherwise specified. And the artifacts that are created will be outputted at the end of the build

packer build -var 'aws_region=us-east-1' -var 'aws_secret_key=<secret_key>' -var 'aws_access_key=<access_key>' ami.json
```
