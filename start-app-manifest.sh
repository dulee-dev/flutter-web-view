APP_NAME="My First App"

sed -E -i '' "s/android:label=.*/android:label=\"$APP_NAME\"/g" android/app/src/main/AndroidManifest.xml