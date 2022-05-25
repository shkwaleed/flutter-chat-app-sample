# fiberchat

## Version 1.0.44 - 13th March 2022

- This update is made compatible with the Flutter framework 2.10.3 & minor new features are added as mentioned in the attached ChangeLog.md file in the Documentation folder. Broadcast feature is now also available.

## Please refer to the Installation Guide provided in the Source Code Package for quick & easy installation.

PLEASE KEEP IN MIND:

- FOR NEW INSTALLS: After setting up the security rule as mentioned in the installation guide. When you run the app for very first time, the database will be auto-written. Just Run the App.

- FOR UPDATES: Create Firestore Broadcast query as this is now fearure available publicly now. For database setup, If you have already build the App before this update, your firebase database will be automatically updated when the updated app runs for the first time.

KINDLY CAREFULLY FOLLOW THE INSTALLATION GUIDE, AND DON'T FORGET TO FILL INFORMATION IN ALL THESE FILES FOR PROPER INSTALLATION:

1. .firebaserc
2. add key.jks inside android folder
3. fill - key.properties
4. google-services file download from firebase for android and ios
5. fill info in - app_constants.dart inside lib/config
6. Setup Firbase Security Rules
7. Setup Cloud functions
8. NEW- Create three Firestore query exactly similar to the attached FIRESTORE_QUERY_EXAMPLE.png screenshot file.
9. Enable Firebase Crashlytics for User Android & iOS app from Firebase Console.

## It is highly RECOMMENDED to clone/copy the whole project because android gradle is updated and also to ensure you might not miss out any new feature/updates in the latest source code.

##

## Thank you for using Fiberchat. We perform thorough testing of the App to detect bugs and fix them before every update. For any app related queries and issue reporting, please write us at contact@tctech.in.

https://tctech.in/blog/agora-setup
