import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_token_and_user_details_response.freezed.dart';

@freezed
class AuthTokenAndUserDetailsResponse with _$AuthTokenAndUserDetailsResponse {
  const factory AuthTokenAndUserDetailsResponse({
    required String accessToken,
    required String refreshToken,
    required String userName,
    required int userId
  }) = _AuthTokenAndUserDetailsResponse;
}