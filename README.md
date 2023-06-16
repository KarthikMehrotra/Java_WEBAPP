This repositories main aim is to setup a CI CD pipeline with below configurations-
1. Source code is a Java Web Application (Existing)
2. A CI pipeline using Github Actions that builds the code, creates docker image and pushes the docker image to Docker Hub.
3. A CD pipeline using Github Actions that fetches the image from Docker Hub and deploys it into Elastic Container Service- AWS.

The code build step uses-
a.  Maven to compile, package and run unit tests,
b. Use sonarcloud to do code quality checks.

<!-- container should be up and running after deployment and you can showcase the successful deployment by visiting the website URL. -->
