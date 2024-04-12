import '../core_util/login_interface.dart';

abstract class LoginWithGoogleConfigurator{
  String getAPIkey();
  void registerInOurSystem(String name);
}

class LoginWithGoogle implements LoginInterface{
  LoginWithGoogleConfigurator configurator;
  LoginWithGoogle(this.configurator);
  @override
  void login() {
    configurator.getAPIkey();
    print('loggin in...');
    // ..... action below
  }

  @override
  void logout() {
    print('loggin out...');
  }

  @override
  void register(String name) {
    // .... register
    configurator.registerInOurSystem(name);
    print('registering...');
  }

}