import 'package:flutter/material.dart';
import '../components/custom_button.dart';
import '../components/custom_textfield.dart';
import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              Text('Buat Akun Baru', style: AppTextStyles.title),
              Text('Isi data diri untuk bergabung dengan Paws-Patrol', style: AppTextStyles.subtitle),
              const SizedBox(height: 32),
              
              CustomTextField(hintText: 'Nama Lengkap', prefixIcon: Icons.person_outline),
              CustomTextField(hintText: 'Email', prefixIcon: Icons.email_outlined),
              CustomTextField(hintText: 'Nomor Telepon', prefixIcon: Icons.phone_outlined),
              CustomTextField(hintText: 'Password', prefixIcon: Icons.lock_outline, isPassword: true, suffixIcon: Icons.visibility_outlined),
              CustomTextField(hintText: 'Konfirmasi Password', prefixIcon: Icons.verified_user_outlined, isPassword: true, suffixIcon: Icons.visibility_outlined),
              
              const SizedBox(height: 24),
              CustomButton(
                text: 'DAFTAR',
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Sudah punya akun? ', style: AppTextStyles.subtitle),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Text('Masuk di sini', style: TextStyle(color: AppColors.accent, fontWeight: FontWeight.bold)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}