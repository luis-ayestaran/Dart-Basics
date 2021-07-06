import 'package:dart_basics/cash_payment.dart';
import 'package:dart_basics/card_payment.dart';

PayFormat payFormatFactory( String type ) {

  if( type == 'cash' ) return CashPayment();
  if( type == 'card' ) return CardPayment();
  throw "No se puede crear el tipo solicitado";

}

abstract class PayFormat {

  void pay( double paymentAmount ) => print( 'El cliente pagó \$$paymentAmount' );

}