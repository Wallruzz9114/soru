import 'package:soru/src/app/locator.dart';
import 'package:soru/src/models/routes/routes.dart';
import 'package:soru/src/services/authentication_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class StartUpViewModel extends BaseViewModel {
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();
  final NavigationService _navigationService = locator<NavigationService>();

  Future<void> handleStartUpLogic() async {
    final bool userIsLoggedIn = await _authenticationService.isUserLoggedIn();

    if (userIsLoggedIn) {
      _navigationService.navigateTo(Routes.homeViewRoute);
    } else {
      _navigationService.navigateTo(Routes.signInViewRoute);
    }
  }
}
