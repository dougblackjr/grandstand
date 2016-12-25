## Scaffolds:
#### SETLIST
	title
	date
	user
	song (has many)
	media (has many)
	comments

#### DISPLAY
	BACKGROUND COLOR
	BACKGROUND IMAGE
	FONT
	FONT SIZE

USER
	Username
	Password
	CCLIOrgNo
	setlist (has many)

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