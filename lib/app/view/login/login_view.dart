import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kyle_machinetask/app/view_model/login_view_model.dart';
import 'package:kyle_machinetask/core/style/colors.dart';
import 'package:kyle_machinetask/core/style/text_style.dart';
import 'package:kyle_machinetask/shared/widgets/custome_text_field.dart';
import 'package:kyle_machinetask/shared/widgets/header.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = Get.put(LoginViewModel());

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Header(),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 32, 24, 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Welcome back!', style: AppTextStyles.heading),
                    const SizedBox(height: 6),
                    const Text(
                      'Sign in to your Dine8 account to continue.',
                      style: AppTextStyles.subheading,
                    ),
                    const SizedBox(height: 32),

                    CustomTextField(
                      label: 'Username',
                      hint: 'Enter your username',
                      controller: vm.usernameController,
                      onChanged: vm.onUsernameChanged,
                    ),
                    const SizedBox(height: 20),

                    Obx(
                      () => CustomTextField(
                        label: 'Password',
                        hint: '••••••••',
                        controller: vm.passwordController,
                        onChanged: vm.onPasswordChanged,
                        obscureText: vm.obscurePassword.value,
                        textInputAction: TextInputAction.done,
                        suffixIcon: IconButton(
                          icon: Icon(
                            vm.obscurePassword.value
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                            color: AppColors.textSecondary,
                            size: 20,
                          ),
                          onPressed: vm.togglePasswordVisibility,
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),

                    Obx(
                      () => Center(
                        child: Row(
                          children: [
                            Checkbox(
                              value: vm.rememberMe.value,
                              onChanged: vm.toggleRememberMe,
                              activeColor: AppColors.primary,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              visualDensity: VisualDensity.compact,
                            ),
                            const Text(
                              'Login to Admin Panel',
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColors.textSecondary,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),

                    Obx(
                      () => SizedBox(
                        width: double.infinity,
                        height: 52,
                        child: ElevatedButton(
                          onPressed: vm.isLoading.value ? null : vm.login,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                            elevation: 2,
                          ),
                          child: vm.isLoading.value
                              ? const SizedBox(
                                  width: 22,
                                  height: 22,
                                  child: CircularProgressIndicator(
                                    color: Colors.white,
                                    strokeWidth: 2.5,
                                  ),
                                )
                              : const Text(
                                  'Log in',
                                  style: AppTextStyles.button,
                                ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
  