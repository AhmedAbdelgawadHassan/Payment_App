import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CustomCreditCard extends StatefulWidget {
  const CustomCreditCard({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;

  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  String cardNumber = '', expiryDate = '', cardHolderName = '', cvvCode = '';

  bool showBackView = false;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(  // the credit card
          chipColor: Colors.amber,  
          cardBgColor: Colors.grey.shade700,        
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          showBackView: showBackView,   // عشان لما اجي ادخل ال cvv الكارد تلف للوجه الاخر
          onCreditCardWidgetChange: (value) {},
          isHolderNameVisible: true,  // to display card Holder (Holder name)

        ),
        CreditCardForm(    // Form that users input his data in credit card (like TextFields)
          cardNumber: cardNumber, 
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          isHolderNameVisible: true,
          onCreditCardModelChange: (CreditCardModel){    // callBack method that Store the All Data in CreditCard Model{
         cardNumber =CreditCardModel.cardNumber;
         expiryDate=CreditCardModel.expiryDate;
         cardHolderName=CreditCardModel.cardHolderName;
         cvvCode=CreditCardModel.cvvCode;
         showBackView=CreditCardModel.isCvvFocused;
         setState(() {});},  // بحط setstate عشان البيانات اللي المستخدم بيخدلها تسمع علطول في ال كؤيتيد كاؤد 
          formKey: widget.formKey,  // formkey for Validation
        ),
      ],
    );

  }
}
