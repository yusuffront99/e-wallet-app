import 'package:another_flushbar/flushbar.dart';
import 'package:e_wallet_app/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// === ALERT MESSAGE
void showCustomSnackBar(BuildContext context, String message) {
  Flushbar(
    message: message,
    flushbarPosition: FlushbarPosition.TOP,
    backgroundColor: redColor,
    duration: const Duration(seconds: 2),
  ).show(context);
}
// === ALERT MESSAGE

// === CURRENCY MONEY
String formatCurrency(
  num number, {
  String symbol = 'Rp ',
}) {
  return NumberFormat.currency(
    locale: 'id',
    symbol: symbol,
    decimalDigits: 0,
  ).format(number);
}

// === CURRENCY MONEY
