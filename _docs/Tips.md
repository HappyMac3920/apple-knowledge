# Apple Tips app
The Tips app description: 
"Get the most from your Apple devices with helpful hints and hidden gems.

Features

• Learn about your device and its built-in apps.

• Flip through collections of tips on a specific topic.

• Check back for the latest suggestions — new tips are added often."

The app contacts ipcdn.apple.com and downloads certain content to display tips, like videos and images.

First, a "Meta" file is downloaded as a JSON file:

MacBook Pro (16-inch 2021):
https://ipcdn.apple.com/api/v1/tips/meta?deviceFamily=Mac&lang=en&RegulatoryModelNumber=J316cAP

iPhone 13 Pro Max:
https://ipcdn.apple.com/api/v1/tips/meta?deviceFamily=iPhone&lang=en&RegulatoryModelNumber=A2484

iPad Pro (12-inch 2021):
https://ipcdn.apple.com/api/v1/tips/meta?deviceFamily=iPad&lang=en&RegulatoryModelNumber=A2378

Apple Watch Series 7 (45 mm):
https://ipcdn.apple.com/api/v1/tips/meta?deviceFamily=AppleWatch&lang=en&RegulatoryModelNumber=A2474

Then a document file is requested:

MacBook Pro (16-inch 2021):
https://ipcdn.apple.com/api/v1/tips/content/documents?deviceFamily=Mac&lang=en&RegulatoryModelNumber=J316cAP

iPhone 13 Pro Max:
https://ipcdn.apple.com/api/v1/tips/content/documents?deviceFamily=iPhone&lang=en&RegulatoryModelNumber=A2484

iPad Pro (12-inch 2021):
https://ipcdn.apple.com/api/v1/tips/content/documents?deviceFamily=iPad&lang=en&RegulatoryModelNumber=A2378

Apple Watch Series 7 (45 mm):
https://ipcdn.apple.com/api/v1/tips/content/documents?deviceFamily=AppleWatch&lang=en&RegulatoryModelNumber=A2474

Assets are downloaded like this:

https://ipcdn.apple.com/assets/v1/tips/videoIDorposterIDorimageID?model=modelAnumber&lang=en&userInterface=lightordark

On Mac however, the model here is a ProductHash from MobileGestalt for some reason:

https://ipcdn.apple.com/assets/v1/tips/videoIDorposterIDorimageID?model=6d976b2f44e9139202e41fdd29c06a26e3d9eced&lang=en&userInterface=lightordark

To search for a specific OS version, add the osVersion flag to the request.

The same applies to languages, by typing in the specific language code to the request.
