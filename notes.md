## Scaffolds:
#### SONG
	TITLE
	TEXT (done in markdown)
	THEME
	TEMPO
	KEY
	CCLISongNo
	SCRIPTURE

#### MEDIA
	title
	type
		select field
		<%= f.select :temperature, [['Hot','hot'],['Medium','medium'],['Cold','cold']] %>
		audio
		image
		youtube
		video
	user
	url
	mediaupload

#### DISPLAY
	BACKGROUND COLOR
	BACKGROUND IMAGE
	FONT
	FONT SIZE

#### SETLIST
	dateCreated
	title
	song (has many)
	media (has many)
	comments

USER
	Username
	Password
	CCLIOrgNo

SETTINGS
	USER (settings belong to user)
	Display-BACKGROUND COLOR
	Display-BACKGROUND IMAGE
	Display-FONT
	Display-FONT SIZE


======
GUI
DISPLAY window
	Display chosen song
	With display settings (simple CSS)
CONTROL window
	Song list
	Preview window
	Live window