# Unpack app.asar
npm install -g asar

pushd /Applications/Slack.app/Contents/Resources/
sudo asar extract app.asar app
popd

# Add custom CSS tweaks to Slack css to set dark theme.
SLACKPATH="/Applications/Slack.app/Contents/Resources/app/dist/"

for FILEPATH in ssb-interop.bundle.js
do
    FULLPATH=$SLACKPATH$FILEPATH
    echo "Updating $FULLPATH"
    sudo chmod a+w $FULLPATH
    cat custom.css >> $FULLPATH
done

