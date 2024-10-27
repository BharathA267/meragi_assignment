import 'models/network_auth_token_and_user_details_response.dart';
import 'models/network_login_request.dart';

class API{

  Future<NetworkAuthTokenAndUserDetailsResponse> login(
      NetworkLoginRequest request) async {
    // make network call
    // return response
    await Future.delayed(const Duration(seconds: 1)); // added delay to show loading during network calls
    return NetworkAuthTokenAndUserDetailsResponse.fromJson({
      "accessToken": "your-access-token",
      "refreshToken": "your-refresh-token",
      "userName": "your-username",
      "userId": 12345
    }); // dummy response
  }
}