import 'package:chai_crew/models/chai.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:chai_crew/models/user.dart';

class DatabaseService {
  final String uid;

  DatabaseService({this.uid});
  //collection reference
  final CollectionReference chaiCollection =
      Firestore.instance.collection('chais');
  //firestore will create the collection for us
  //and refences it back to the particular collection
  //we can then access read,update,remove and add

  //we are going to create a function that works when the
  //person registers and then when the user updates their
  //data in the database
  Future updateUserData(String sugars, String name, int strength) async {
    //creates the document when the user has just registered
    //also links the users firebase with the user details
    return await chaiCollection.document(uid).setData({
      //used to update the data we need a map to link the data
      'sugars': sugars,
      'name': name,
      'strength': strength,
    });
  }

  //chai list from a snapshot
  List<Chai> _chaiListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      return Chai(
          name: doc.data['name'] ?? '',
          strength: doc.data['strength'] ?? 0,
          sugars: doc.data['sugars'] ?? '0');
    }).toList();
  }

  //userData from snapShot
  UserData _userDataFromSnapshot(DocumentSnapshot snapshot) {
    return UserData(
      uid: uid,
      name: snapshot.data['name'],
      sugars: snapshot.data['sugars'],
      strength: snapshot.data['strength'],
    );
  }

  //get chais stream
  Stream<List<Chai>> get chais {
    return chaiCollection.snapshots().map(_chaiListFromSnapshot);
  }

//get user doc stream
  Stream<UserData> get userData {
    return chaiCollection.document(uid).snapshots().map(_userDataFromSnapshot);
  }
}
