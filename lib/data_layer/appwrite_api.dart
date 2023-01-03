import 'package:appwrite/appwrite.dart';

class AppWriteApi {
  final Client appwrite;

  AppWriteApi(this.appwrite) {
    appwrite.setEndpoint('https://your-appwrite-server.com/v1');
    appwrite.setProject('your-project-id');
    appwrite.setSelfSigned();
  }

  // void mehtijd() async {
  //   final Map<String, dynamic> response = await appwrite.auth.checkSession();
  //   if (response['code'] == 200) {
  //     // The session is valid
  //   } else if (response['code'] == 401) {
  //     // The session is invalid
  //   }
  // }
}
