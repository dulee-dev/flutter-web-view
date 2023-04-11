PACKAGE_NAME="com.groupname.servicename.tag" ## PACKAGE_NAME === APP_ID

# android manifest
sed -E -i '' "s/package=.*/package=\"$PACKAGE_NAME\">/g" android/app/src/main/AndroidManifest.xml

# build bundle
sed -E -i '' "s/applicationId .*/applicationId \"$PACKAGE_NAME\"/g" android/app/build.gradle