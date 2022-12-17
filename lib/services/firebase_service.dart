import 'package:twitter/utility/consts.dart';

class FireStoreSercices {
  static getUser(uid) {
    return firestore
        .collection(usersCollection)
        .where('id', isEqualTo: uid)
        .snapshots();
  }
}
