import 'package:e_wallet_app/shared/theme.dart';
import 'package:e_wallet_app/ui/widgets/buttons.dart';
import 'package:e_wallet_app/ui/widgets/forms.dart';
import 'package:flutter/material.dart';

class ProfileEditPage extends StatelessWidget {
  const ProfileEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              children: [
                CustomFormField(title: 'Username'),
                const SizedBox(
                  height: 30,
                ),
                CustomFormField(title: 'Full Name'),
                const SizedBox(
                  height: 30,
                ),
                CustomFormField(title: 'Email Address'),
                const SizedBox(
                  height: 30,
                ),
                CustomFormField(
                  title: 'Password',
                  obscureText: true,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomFilledButton(
                  title: 'Update Now',
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/profile-edit-success', (route) => false);
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
