import 'package:flutter/foundation.dart';
import 'package:soru/src/app/locator.dart';
import 'package:soru/src/models/routes/routes.dart';
import 'package:soru/src/services/authentication_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SignUpViewModel extends BaseViewModel {
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();
  final DialogService _dialogService = locator<DialogService>();
  final NavigationService _navigationService = locator<NavigationService>();

  Future<void> signUp({
    @required String username,
    @required String email,
    @required String password,
  }) async {
    setBusy(true);

    final dynamic authenticationResult = await _authenticationService.signUp(
      username: username,
      email: email,
      password: password,
    );

    setBusy(false);

    if (authenticationResult is bool) {
      if (authenticationResult) {
        _navigationService.navigateTo(Routes.homeViewRoute);
      } else {
        await _dialogService.showDialog(
          title: 'Sign Up Failure',
          description: 'General sign up failure. Please try again later',
        );
      }
    } else {
      await _dialogService.showDialog(
        title: 'Sign Up Failure',
        description: authenticationResult as String,
      );
    }
  }
}
