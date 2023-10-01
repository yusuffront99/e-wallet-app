import 'package:e_wallet_app/shared/theme.dart';
import 'package:e_wallet_app/ui/widgets/bank_item.dart';
import 'package:e_wallet_app/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class TopupPage extends StatelessWidget {
  const TopupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Up'),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(24, 30, 24, 30),
        children: [
          Text(
            'Wallet',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset(
                'assets/img_wallet.png',
                width: 80,
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '8000 2205 2023',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Johan Fraud',
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Wallet',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const BankItem(
            title: 'BANK BCA',
            imgURL: 'assets/img_bank_bca.png',
            isSelected: true,
          ),
          const BankItem(
            title: 'BANK BNI',
            imgURL: 'assets/img_bank_bni.png',
          ),
          const BankItem(
            title: 'BANK MANDIRI',
            imgURL: 'assets/img_bank_mandiri.png',
          ),
          const BankItem(
            title: 'BANK OCBC',
            imgURL: 'assets/img_bank_ocbc.png',
          ),
          const SizedBox(
            height: 12,
          ),
          CustomFilledButton(
            title: 'Continue',
            onPressed: () {
              Navigator.pushNamed(context, '/topup-amount');
            },
          ),
        ],
      ),
    );
  }
}
