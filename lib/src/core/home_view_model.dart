import 'package:soru/src/app/locator.dart';
import 'package:soru/src/services/authentication_service.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();

  Future<void> signOut() async {
    setBusy(true);

    _authenticationService.signOut();

    setBusy(false);
  }
}
