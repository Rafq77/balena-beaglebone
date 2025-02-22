deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

module.exports =
	version: 1
	slug: 'beagleboard-xm'
	name: 'BeagleBoard-XM'
	arch: 'armv7hf'
	state: 'experimental'

	instructions: commonImg.instructions

	gettingStartedLink:
		windows: 'https://docs.resin.io/pocketbeagle/nodejs/getting-started/#adding-your-first-device'
		osx: 'https://docs.resin.io/pocketbeagle/nodejs/getting-started/#adding-your-first-device'
		linux: 'https://docs.resin.io/pocketbeagle/nodejs/getting-started/#adding-your-first-device'

	supportsBlink: false

	yocto:
		machine: 'beagleboard-xm'
		image: 'resin-image'
		fstype: 'resinos-img'
		version: 'yocto-rocko'
		deployArtifact: 'resin-image-beagleboard-xm.resinos-img'
		compressed: true

	options: [ networkOptions.group ]

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	initialization: commonImg.initialization
