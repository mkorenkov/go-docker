# go-docker
Go build container

We can do better then distributing compilers and build tools along with our production containers. Let's use one container for build purposes and distribute containers with build artifacts, e.g. app binaries itself.

Benefits:
- Improved security as you don't offer your build tools for the attacker
- Reduced size of your app container
