# javaVersionPath="/opt/homebrew/opt/openjdk@17"
# export PATH="${javaVersionPath}/bin:$PATH"
export JAVA_HOME=$(/usr/libexec/java_home -v 11)

export ANDROID_HOME="/Users/$USER/Library/Android/sdk"
export PATH="${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools"