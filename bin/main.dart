import 'package:dart_basics/shop.dart' as shop;
import 'package:dart_basics/article.dart';
import 'package:dart_basics/pay_format.dart';

void main(List<String> args) {
  
  List<Article> articles = shop.registerArticles();
  print( articles );

  PayFormat cashPayment = payFormatFactory( 'cash' );
  cashPayment.pay( 300 );
  
}
