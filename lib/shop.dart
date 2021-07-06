import 'package:dart_basics/article.dart';

List<Article> registerArticles() {

  return <Article>[
    Article( 'Jitomate', null, 8, quantity: 15 ),
    Article( 'Jamon serrano', null, 24, quantity: 20 ),
    Article( 'Carlos V', '123', 12, quantity: 13 ),
    Article( 'Sabritas', '456', 13, quantity: 8 ),
    Article( 'Queso', '456', 13 ),
    Article( 'Crema', '456', 13, quantity: 10 ),
  ];

}