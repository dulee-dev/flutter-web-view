VERSION="1.0.0" # 1.0.0+1 major.minor.patch +@

sed -E -i '' "s/^version: .*/version: $VERSION/g" pubspec.yaml