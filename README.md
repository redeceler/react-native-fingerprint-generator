
# React Native Cybersource Device Fingerprint

## Getting started

`$ yarn add https://github.com/JhonySpark/react-native-fingerprint-genrator`

### Manual installation


#### iOS

NOTE: if you're using RN 0.60+ you can autolinking, ignore step 1.

1. Add pod 'RNCybersourceDeviceFingerprint', :path => '../node_modules/react-native-fingerprint-genrator/ios' to your Podfile
2. Run pod install from ios folder
3. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import br.com.atev.rn-fingerprint-generator.RNCybersourceDeviceFingerprintPackage;` to the imports at the top of the file
  - Add private static Application _application;
  - Add in onCreate() _application = this;
  - Add `new RNCybersourceDeviceFingerprintPackage(_application)` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-fingerprint-genrator'
  	project(':react-native-fingerprint-genrator').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-fingerprint-genrator/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      implementation project(':react-native-fingerprint-genrator')
  	```


## Usage
```javascript
import RNCybersourceDeviceFingerprint from 'react-native-fingerprint-genrator'

// INITIALIZE THE SDK
await RNCybersourceDeviceFingerprint.configure(ORG_ID);

OR

RNCybersourceDeviceFingerprint.configure(ORG_ID).then( () => {
	console.log('THE CYBERSOURCE SKD INITIALIZED')
})
.catch(err => {
	console.log('SOMETHING WENT WRONG!  ', err)
})

================================================================ 
// GET SESSION ID
// Obs: getSession accepts custom attributes for session, check the Cybersource SDK documentation
const { sessionId } = await RNCybersourceDeviceFingerprint.getSessionID([]);

OR 

RNCybersourceDeviceFingerprint.getSessionID([]).then( (obj) => {
	console.log(`The session id is ${obj.sessionId}`)
})
.catch(err => {
	console.log('ERROR ON GET SESSION ID ', err)
})

```
  
