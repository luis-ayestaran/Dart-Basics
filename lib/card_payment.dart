import 'package:dart_basics/pay_format.dart';

class CardPayment implements PayFormat {

  @override
  void pay( double paymentAmount ) => print( 'El cliente pagó \$$paymentAmount en tarjeta.' );

}