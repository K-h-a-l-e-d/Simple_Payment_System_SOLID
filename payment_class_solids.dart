//this enum will be used to select payment method that will be passed to payment
//instance in main.dart and its chosen over Strings for better code quality and easier usage
enum PaymentMethods { cash, masterCard, mobileWallet }

/*****SOLID principles Analysis******/

//O: Open-closed Principle
//this map is used in accordance with Open-closed Principle to make the PaymentProcess class
//which processes the Payment Methods selection Closed to Modification and open to Extension
Map _paymentMethodsRegistry = {
  PaymentMethods.cash: CashPaymentMethod(),
  PaymentMethods.masterCard: MasterCardPaymentMethod(),
  PaymentMethods.mobileWallet: MobileWalletPaymentMethod()
};

// S: Single-responsibility Principle
//each of the following classes has a single responsibility

abstract class Payment {
  Payment pay({required double amount});
}

// L: Liskov Substitution Principle: Each of the following classes inherits Payment Super Class
// which makes them replaceable with their superclass

// I: Interface Segregation Principle: all of the following class aren't forced to implement
// methods they don't need

abstract class PaymentProcess extends Payment {
  static Payment payWith({required PaymentMethods paymentMethods}) {
    return _paymentMethodsRegistry[paymentMethods];
  }
}

// D: Dependency Inversion Principle: higher level modules don't
//depend on Lower level modules depend on high level super

class MasterCardPaymentMethod implements Payment {
  @override
  Payment pay({required double amount}) {
    print('Paying an Amount of ${amount}LE via Master Card');
    return this;
  }
}

class MobileWalletPaymentMethod implements Payment {
  @override
  Payment pay({required double amount}) {
    print('Paying an Amount of ${amount}LE via Mobile Wallet');
    return this;
  }
}

class CashPaymentMethod implements Payment {
  @override
  Payment pay({required double amount}) {
    print('User has chosen to pay an Amount of ${amount}LE  in Cash');
    return this;
  }
}
