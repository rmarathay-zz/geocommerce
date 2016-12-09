# README


## Geocommerce is a open source iOS Framework for location based payments


###Installation

git clone https://github.com/rmarathay/geocommerce
copy "geocommerce.framework" into the frameworks folder in your Xcode project

###Usage

'''
			import geocommerce
			var gc = geocommerce()
			@IBAction payButton(sender: any){
				gc.GCpayment(time: NSDate, amount: NSNumber, longitude: NSNumber, latitude: NSNumber)
			}

'''
