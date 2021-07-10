import 'package:dart_basics/article.dart';
import 'package:dart_basics/user.dart';
import 'package:dart_basics/accounts.dart';
import 'package:dart_basics/pay_format.dart';

List<Article> registerArticles() {

  return <Article>[
    Article( 'Jitomate', null, 8, quantity: 15 ),
    Article( 'Jamon serrano', null, 24, quantity: 0 ),
    Article( 'Carlos V', '123', 12, quantity: 13 ),
    Article( 'Sabritas', '456', 13, quantity: 8 ),
    Article( 'Queso', '456', 13 ),
    Article( 'Crema', '456', 13, quantity: 10 ),
    Article.fromJSON( '{'
      '"nombre": "Cebolla", ' 
      '"codBar": "4393849", ' 
      '"precio": 14.0'
    '}'),
    Article.fromDartJSON( 
      { 
        'name' : 'Gomitas', 
        'barcode' : '3948934', 
        'price' : 15.0 
      } 
    ),
  ];

}



User logUserIn( String username, String password ) => usersAccounts
    .where((element) => element.username == username && element.password == password)
    .take(1).first;

void placeOrder( User user, double paymentAmount ) {
  print('\nEl usuario ${user.username} realizó un pedido.\n');
  checkout( user, paymentAmount );
  //print('\nPedido entregado con éxito.');
}

void checkout( User user, double paymentAmount ) async {

  await user.pay('cash', paymentAmount).then((value) {
    PayFormat payFormat = value['payFormat'];
    double payAmount = value['payAmount'];
    payFormat.pay( payAmount );
  });

  print( 'Pedido entregado con éxito...' );

}


double calculateCartPrice( List<Article> shoppingCart ) {

  double price = 0;
  for( Article article in shoppingCart ) {
    price += article.quantity * article.price;
  }
  return price;

}