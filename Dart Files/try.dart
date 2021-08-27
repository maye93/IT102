import 'user.dart';

class login extends account1 {
  String loginAcc;
  String loginPass;

  accountLogin() {
    if (account() == loginAcc) {
      passwordLogin();
    } else {
      print("Can't find account.\n");
    }
  }

  passwordLogin() {
    if (password() == loginPass) {
      print("Logging you in...\n");
    } else {
      print("Wrong password.\n");
    }
  }

  login(this.loginAcc, this.loginPass);
}

void main() {
  login cantFind = login("Shan", "Password");
  cantFind.accountLogin();
  login loggingIn = login("Mitz", "Password123");
  loggingIn.accountLogin();
  login wrongPass = login("Mitz", "Password");
  wrongPass.accountLogin();
}