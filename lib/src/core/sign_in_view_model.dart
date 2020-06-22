import 'package:flutter/foundation.dart';
import 'package:soru/src/app/locator.dart';
import 'package:soru/src/models/routes/routes.dart';
import 'package:soru/src/services/authentication_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SignInViewModel extends BaseViewModel {
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();
  final DialogService _dialogService = locator<DialogService>();
  final NavigationService _navigationService = locator<NavigationService>();

  Future<void> signIn({
    @required String email,
    @required String password,
  }) async {
    setBusy(true);

    final dynamic result = await _authenticationService.signIn(
      email: email,
      password: password,
    );

    setBusy(false);

    if (result is bool) {
      if (result) {
        _navigationService.navigateTo(Routes.homeViewRoute);
      } else {
        await _dialogService.showDialog(
          title: 'Login Failure',
          description: 'General login failure. Please try again later',
        );
      }
    } else {
      await _dialogService.showDialog(
        title: 'Login Failure',
        description: result as String,
      );
    }
  }

  void goToSignUpScreen() {
    _navigationService.navigateTo(Routes.signUpViewRoute);
  }
}
