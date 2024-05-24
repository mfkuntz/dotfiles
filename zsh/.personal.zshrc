# javaVersionPath="/opt/homebrew/opt/openjdk@17"
# export PATH="${javaVersionPath}/bin:$PATH"
export JAVA_HOME=$(/usr/libexec/java_home -v 11)

export ANDROID_HOME="/Users/$USER/Library/Android/sdk"
export PATH="${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools"
export PATH="$PATH":"$HOME/.pub-cache/bin"

# https://cloud.google.com/iap/docs/using-tcp-forwarding#increasing_the_tcp_upload_bandwidth
export CLOUDSDK_PYTHON_SITEPACKAGES=1
sourceIf "/opt/homebrew/share/google-cloud-sdk/path.zsh.inc"
sourceIf "/opt/homebrew/share/google-cloud-sdk/completion.zsh.inc"
