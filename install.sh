# Add custom CSS tweaks to Slack css to set dark theme.
FILEPATH=/Applications/Slack.app/Contents/Resources/app.asar.unpacked/src/static/index.js
sudo chmod a+w $FILEPATH
cat custom.css >> $FILEPATH

