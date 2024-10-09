// Automatic FlutterFlow imports
import '/backend/backend.dart';
// Imports other custom actions
// Imports custom functions
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

Future<String> queryFCMTokens(String uid) async {
  try {
    // Reference to the subcollection
    CollectionReference tokensRef = FirebaseFirestore.instance
        .collection('userList')
        .doc(uid)
        .collection('fcm_tokens');

    // Fetch the documents
    QuerySnapshot querySnapshot = await tokensRef.get();

    // Extract the 'fcm_token' field from the first document, assuming there's only one token per user
    if (querySnapshot.docs.isNotEmpty) {
      Map<String, dynamic> data =
          querySnapshot.docs.first.data() as Map<String, dynamic>;
      String fcmToken = data['fcm_token']
          as String; // Assuming the token field is named 'fcm_token'
      return fcmToken;
    } else {
      // Return an empty string if no token is found
      return '';
    }
  } catch (e) {
    // Handle any errors
    print('Error querying fcm_tokens: $e');
    return ''; // Return an empty string in case of error
  }
}
