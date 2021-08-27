class computerUser {
  String _privAcc = "Mitz";
  String _privPass = "Password123";
  String loginAcc;
  String loginPass;

  accountLogin() {
    if (_privAcc == loginAcc) {
      passwordLogin();
    } else {
      print("Can't find account.");
    }
  }

  passwordLogin() {
    if (_privPass == loginPass) {
      print("Logging you in...");
    } else {
      print("Wrong password.");
    }
  }

  computerUser(this.loginAcc, this.loginPass);
}

void main() {
  computerUser login = computerUser("Mitz", "Password123");
  login.accountLogin();
}