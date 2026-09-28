import 'package:flutter/material.dart';
import '../components/custom_button.dart';
import '../components/custom_textfield.dart';
import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';
import 'home_screen.dart';
import 'register_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(color: AppColors.primary, shape: BoxShape.circle),
                child: Icon(Icons.storefront, color: Colors.white, size: 40),
              ),
              const SizedBox(height: 24),
              Text('Paws-Patrol', style: AppTextStyles.title),
              Text('Masuk untuk melanjutkan', style: AppTextStyles.subtitle),
              const SizedBox(height: 32),
              
              CustomTextField(hintText: 'Email', prefixIcon: Icons.email_outlined),
              CustomTextField(hintText: 'Password', prefixIcon: Icons.lock_outline, isPassword: true, suffixIcon: Icons.visibility_outlined),
              
              Align(
                alignment: Alignment.centerRight,
                child: Text('Lupa Password?', style: TextStyle(color: AppColors.accent, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 24),
              
              CustomButton(
                text: 'MASUK',
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                },
              ),
              
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Belum punya akun? ', style: AppTextStyles.subtitle),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()));
                    },
                    child: Text('Daftar sekarang', style: TextStyle(color: AppColors.accent, fontWeight: FontWeight.bold)),
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