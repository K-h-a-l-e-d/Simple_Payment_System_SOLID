import 'payment_class_solids.dart';

void main() {
  PaymentProcess.payWith(
    paymentMethods: PaymentMethods.mobileWallet,
  ).pay(amount: 50);

  Payment masterCardPaymentMethod = MasterCardPaymentMethod();
  masterCardPaymentMethod.pay(amount: 50);

  PaymentProcess.payWith(paymentMethods: PaymentMethods.cash).pay(amount: 100);
}
