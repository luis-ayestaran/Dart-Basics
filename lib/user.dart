import 'package:dart_basics/article.dart';
import 'package:dart_basics/pay_format.dart';
import 'package:dart_basics/type_aliases.dart';

class User {

  String _username = '';
  String _password = '';

  User( this._username, this._password );

  String get username => _username;
  set username(String username) => _username = username;

  String get password => _password;
  set password(String password) => _password = password;

  @override
  String toString() => "USUARIO\nusername: $_username\npassword: $_password";

  List<Article> selectArticlesToBuy(List<Article> catalog) => catalog
      .where((element) => element.quantity > 0)
      .skip(1)
      .take(3)
      .toList();


  Future<JSON> pay( String payFormat, double payAmount ) {
    return Future.delayed( Duration( seconds : 3 ), () {
      return {
        'payFormat' : payFormatFactory( payFormat ),
        'payAmount' : payAmount,
      };
    });
  }

  

}