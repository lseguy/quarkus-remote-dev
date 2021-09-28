# Test Project

## Build

```sh
$ ./gradlew build
$ docker build -t quarkus-remote-dev .
```

## Run

To run the main application:
```sh
$ docker run --rm -p 8080:8080 -e QUARKUS_LAUNCH_DEV_MODE=true quarkus-remote-dev
```

To enable remote development:
```sh
$ ./gradlew quarkusRemoteDev
```

## Try it out

1. Run both the application and the remote dev worker
2. Make a call to http://localhost:8080/hello
3. Modify `main-app/src/main/java/com/example/TestResource` to return a different `String`
4. Make another call to http://localhost:8080/hello, the app returns the new value

## Reproduce the bug

1. Add any file — empty or not — to `local-dependency/src/main/resources`
2. Rebuild the project and the Docker image
3. Run both the main application and the remote dev worker as usual
4. It fails with a `java.nio.file.FileAlreadyExistsException` exception