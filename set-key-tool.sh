# storetype 은 PKCS12가 추천양식
KEY_ALIAS="key"
KEY_OUTPUT_PATH="./output/$KEY_ALIAS.pfx"

NAME="name"
GROUP_NAME="group name"
COMPANY_NAME="company name"
LOCATION="location" # 시/군/구, location
CITY="state" # 시/도, state
NATION_CODE="82" # nation code
VALIDITY=730 # 유효기간 d
PASSWORD=""
# PKCS12에서는 keypass와 storepass 가 같아야함. 

rm "$KEY_OUTPUT_PATH"

keytool -genkey -alias "$KEY_ALIAS" \
    -keystore "$KEY_OUTPUT_PATH" \
    -storetype PKCS12 \
    -keyalg RSA \
    -validity "$VALIDITY" \
    -keysize 2048 \
    -dname "CN=$NAME, OU=$GROUP_NAME, O=$COMPANY_NAME, L=$LOCATION, ST=$CITY, C=$NATIONAL_CODE" \
    -keypass "$PASSWORD" \
    -storepass "$PASSWORD" \

touch android/key.properties

echo $"storePassword=$PASSWORD\n\
keyPassword=$PASSWORD\n\
keyAlias=$KEY_ALIAS\n\
storeFile=$KEY_OUTPUT_PATH\n\
" > android/key.properties
