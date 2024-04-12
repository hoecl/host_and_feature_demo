import "core_util/login_interface.dart";
import "login_feature/login_feature.dart";

class MyLoginWithGoogleConfigurator implements LoginWithGoogleConfigurator {
  @override
  String getAPIkey() {
    return "ABCD";
  }

  @override
  void registerInOurSystem(String name) {
    print('sending to our backend system...');
  }
}

void main() {
  ///Dependency injection method will be used instead in real project
  LoginInterface loginfeature = LoginWithGoogle(MyLoginWithGoogleConfigurator());

  loginfeature.login();
  loginfeature.logout();
  loginfeature.register('userA');
}
