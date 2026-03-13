import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kyle_machinetask/app/view/home/home_view.dart';

class LoginViewModel extends GetxController {

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  var isLoading = false.obs;
  var obscurePassword = true.obs;
  var errorMessage = ''.obs;
  var rememberMe = false.obs;

  void togglePasswordVisibility() {
    obscurePassword.value = !obscurePassword.value;
  }

  void onUsernameChanged(String _) {
    errorMessage.value = '';
  }

  void onPasswordChanged(String _) {
    errorMessage.value = '';
  }

  void toggleRememberMe(bool? value) {
    rememberMe.value = value ?? false;
  }

  Future<void> login() async {
    String username = usernameController.text.trim();
    String password = passwordController.text.trim();

    if (username.isEmpty) {
      errorMessage.value = "Username is required";
      return;
    }

    if (password.isEmpty) {
      errorMessage.value = "Password is required";
      return;
    }

    isLoading.value = true;
    errorMessage.value = '';

    try {
      await Future.delayed(const Duration(seconds: 2));

if (username == 'bearer' && password == '123') {
  Get.snackbar(
    'Success', 'Login Successful',
    backgroundColor: Colors.green.shade600,
    colorText: Colors.white,
    snackPosition: SnackPosition.TOP,
    margin: const EdgeInsets.all(16),
    borderRadius: 12,
    duration: const Duration(seconds: 2),
    icon: const Icon(Icons.check_circle_rounded, color: Colors.white, size: 26),
    shouldIconPulse: false,
  );
  await Future.delayed(const Duration(seconds: 2));
  Get.off(() => const HomeView());  

      } else {
        errorMessage.value = "Invalid username or password";
      }
    } catch (e) {
      errorMessage.value = "Something went wrong";
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onClose() {
    usernameController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}