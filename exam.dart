import 'dart:io';

// This class exhibits Encapsulation because...
class websiteUser {
  String _privAcc = "Mitz";
  String _privPass = "Password123";
  String name = "User 1";

  void greet() {
    print("Welcome " + name + "!");
  }
}

// This class exhibits Abstraction because...
class websiteSystem extends websiteUser {
  checkAcc() {
    print("Username: ");
    String? acc = stdin.readLineSync();
    if (_privAcc == acc.toString()) {
      checkPass();
    } else {
      print("\nCan't find account.");
    }
  }

  checkPass() {
    print("Password: ");
    String? pass = stdin.readLineSync();
    if (_privPass == pass.toString()) {
      loginAcc loggedIn = loginAcc();
      loggedIn.login();
    } else {
      print("\nWrong password.");
    }
  }
}

// This class exhibits Inheritance because...
class loginAcc extends websiteUser {
  void login() {
    String name = "User 1";
    print("\nWelcome " + name + "!");
    choices();
  }

  choices() {
    print("\nWhat would you like to do?");
    print("1 - Change Display Name");
    print("2 - Logout");
    String? choice = stdin.readLineSync();
    if (choice == "1") {
      displayName changeName = displayName();
      changeName.login();
    } else if (choice == "2") {
      print("\nLoging you out...");
      exit(0);
    } else {
      print("\nType the correct number.");
    }
  }
}

// This class exhibits Polymorphism because...
class displayName extends websiteUser {
  changeName() {
    print("\nNew Display Name:");
    String? newName = stdin.readLineSync();
    String newDisplay = newName.toString();
    return newDisplay;
  }

  @override
  void login() {
    String name = changeName();
    print("\nWelcome " + name + "!");
    loginAcc updateName = loginAcc();
    updateName.choices();
  }
}

void main() {
  websiteSystem loginUser = websiteSystem();
  loginUser.checkAcc();
}