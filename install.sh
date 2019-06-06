# Add custom CSS tweaks to Slack css to set dark theme.

SLACKPATH="/Applications/Slack.app/Contents/Resources/app.asar.unpacked/src/static/"
for FILEPATH in index.js ssb-interop.js
do
    FULLPATH=$SLACKPATH$FILEPATH
    echo "Updating $FULLPATH"
    sudo chmod a+w $FULLPATH
    cat custom.css >> $FULLPATH
done

