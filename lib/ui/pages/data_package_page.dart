import 'package:e_wallet_app/shared/theme.dart';
import 'package:e_wallet_app/ui/widgets/buttons.dart';
import 'package:e_wallet_app/ui/widgets/forms.dart';
import 'package:e_wallet_app/ui/widgets/package_item.dart';
import 'package:flutter/material.dart';

class DataPackagePage extends StatelessWidget {
  const DataPackagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Package Data'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            'Phone Number',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const CustomFormField(
            title: '+628',
            isShowTitle: false,
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Select Package',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Wrap(
            spacing: 50,
            runSpacing: 26,
            children: [
              PackageItem(
                amount: 12,
                price: 55000,
                isSelected: true,
              ),
              PackageItem(
                amount: 8,
                price: 35000,
              ),
              PackageItem(
                amount: 2,
                price: 25000,
              ),
              PackageItem(
                amount: 45,
                price: 650000,
              ),
            ],
          ),
          const SizedBox(
            height: 85,
          ),
          CustomFilledButton(
            title: 'Continue',
            onPressed: () async {
              if (await Navigator.pushNamed(context, '/pin') == true) {
                // ignore: use_build_context_synchronously
                await Navigator.pushNamedAndRemoveUntil(
                    context, '/data-success', (route) => false);
              }
            },
          ),
          const SizedBox(
            height: 57,
          ),
        ],
      ),
    );
  }
}
