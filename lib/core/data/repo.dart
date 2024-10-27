import 'package:meragi/core/data/mapper.dart';

import '../models/auth_token_and_user_details_response.dart';
import '../models/login_request.dart';
import '../network/api.dart';

class Repository {
  Repository(this.api);

  final API api;

  Future<AuthTokenAndUserDetailsResponse> login(LoginRequest request) async {
    final response = await api.login(request.toRequest());

    return response.toResponse();
  }
}
