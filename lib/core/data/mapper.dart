import '../models/auth_token_and_user_details_response.dart';
import '../models/login_request.dart';
import '../network/models/network_auth_token_and_user_details_response.dart';
import '../network/models/network_login_request.dart';

extension LoginRequestmapper on LoginRequest {
  NetworkLoginRequest toRequest() {
    return NetworkLoginRequest(
      password: password,
      username: username,
    );
  }
} // converting UI model to network model

extension NetworkAuthResponseMapper on NetworkAuthTokenAndUserDetailsResponse {
  AuthTokenAndUserDetailsResponse toResponse() {
    return AuthTokenAndUserDetailsResponse(
      accessToken: accessToken,
      refreshToken: refreshToken,
      userName: userName,
      userId: userId,
    );
  }
} // converting network model to UI model
