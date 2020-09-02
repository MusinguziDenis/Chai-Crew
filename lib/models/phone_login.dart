/*Future<bool> registerwithPhoneNumber(
      String phone, BuildContext context) async {
    FirebaseAuth _auth = FirebaseAuth.instance;
    _auth.verifyPhoneNumber(
        phoneNumber: phone,
        timeout: Duration(seconds: 60),
        verificationCompleted: (AuthCredential credential) async {
          Navigator.of(context).pop();
          //signin with phone number
          AuthResult result = await _auth.signInWithCredential(credential);
          FirebaseUser user = result.user;
          //create a document for thr user with the uid
          await DatabaseService(uid: user.uid).updateUserData(
              'name', '+256774548568', 'travelexpress@gmail.com');
          if (user != null) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home()));
          }
        },
        verificationFailed: (AuthException) {
          print(AuthException.message);
        },
        codeSent: (String verificationId, [int ForceResendingToken]) {
          showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) {
                return AlertDialog(
                  title: Text('Enter the code'),
                  content: Column(
                    children: [
                      TextField(
                        controller: _codeController,
                      )
                    ],
                  ),
                  actions: [
                    FlatButton(
                      child: Text('Confirm'),
                      textColor: Colors.white,
                      onPressed: () async {
                        final code = _codeController.text.trim();
                        AuthCredential credential =
                            PhoneAuthProvider.getCredential(
                                verificationId: verificationId, smsCode: code);
                        AuthResult result =
                            await _auth.signInWithCredential(credential);
                        FirebaseUser user = result.user;
                        if (user != null) {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        }
                      },
                    )
                  ],
                );
              });
        },
        codeAutoRetrievalTimeout: null);
    //FirebaseUser user = result.user;
  }*/
