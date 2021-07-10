import 'package:dart_basics/shop.dart' as shop;
import 'package:dart_basics/article.dart';
import 'package:dart_basics/pay_format.dart';
import 'package:dart_basics/user.dart';

void main(List<String> args) {
  
  List<Article> articles = shop.registerArticles();

  User loggedUser = shop.logUserIn( 'user123', '123456' );
  
  double cartPrice = shop.calculateCartPrice( loggedUser.selectArticlesToBuy( articles ) );

  shop.placeOrder( loggedUser, cartPrice );
  
}
