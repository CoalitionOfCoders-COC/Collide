import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier{
  String _token;
  DateTime _expiryDate;
  String  _userId;

  //SIGN UP
  Future<void> signUp(String email, String password) async {
    const signupNewUser = "signupNewUser";
    const url = 'https://www.googleapis.com/identitytoolkit/v3/relyingparty/$signupNewUser?key=AIzaSyDRaMXZ6NfVJl1z-iQtKM7YedXU-FtjAi8';
    
    final response = await http.post(url, body: json.encode(
      { 'email' : email, 'password' : password, 'returnSecureToken': true }
    ));
    print(response.body);  
  }
}

//