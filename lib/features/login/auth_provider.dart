import 'package:flutter/material.dart';
import '../../core/data/repo.dart';
import '../../core/models/auth_token_and_user_details_response.dart';
import '../../core/models/login_request.dart';

class AuthProvider with ChangeNotifier {
  final Repository repository; // Replace `YourRepository` with your actual repository class type
  bool isLoading = false;
  AuthTokenAndUserDetailsResponse? authResponse;

  AuthProvider({required this.repository});

  Future<void> login(String email, String password) async {
    isLoading = true;
    notifyListeners();

    try {
      authResponse = await repository.login(
        LoginRequest(username: email, password: password),
      );
    } catch (e) {

    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
