# flutter webview app boilerplate

convert web service to webview app

https://flutter-ko.dev/docs/deployment/android

### 1. set launcher icon

    a. ADD assets/launcher_icon/launcher_icon.png

    b. RUN ./set-launcher-icon.sh

### 2. build app

    a. build-apk (for test)

        1) RUN ./build-apk.prod.sh

    b. build-app-bundle

        1) RUN ./build-app-bundle.prod.sh

### 3. make-keystore

    a. RUN ./set-key-tool.sh

    E: the operation couldn’t be completed. unable to locate a java runtime.

        a. install java (VISIT http://www.java.com)

### 4. start-app-manifest

    change app name

    a. RUN ./start-app-manifest.sh

### 5. start-build-config

    change application id, package name

    a. RUN ./start-build-config

### 6. set version

    a. RUN ./set-version.sh