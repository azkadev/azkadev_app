import 'lib.dart';

class SignPage extends StatefulWidget {
  const SignPage({Key? key, required this.box}) : super(key: key);
  final Box<dynamic> box;
  @override
  SignState createState() => SignState();
}

class SignState extends State<SignPage> {
  // ignore: non_constant_identifier_names
  var type_page = "signin".toString().toLowerCase();
  Map userData = {};
  final TextEditingController codeTextController = TextEditingController();
  final TextEditingController usernameTextController = TextEditingController();
  final TextEditingController fullnameTextController = TextEditingController();
  final TextEditingController passwordTextController = TextEditingController();

  List secretWords = [
    {
      "controller": TextEditingController(),
    },
    {
      "controller": TextEditingController(),
    },
    {
      "controller": TextEditingController(),
    },
    {
      "controller": TextEditingController(),
    },
    {
      "controller": TextEditingController(),
    },
    {
      "controller": TextEditingController(),
    },
    {
      "controller": TextEditingController(),
    },
    {
      "controller": TextEditingController(),
    },
    {
      "controller": TextEditingController(),
    },
    {
      "controller": TextEditingController(),
    }
  ];

  var numberTwo = 6;
  @override
  Widget build(BuildContext context) {
    showPopUp(titleName, valueBody) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(titleName),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Text(valueBody ?? "Error"),
                ],
              ),
            ),
            actions: [
              TextButton(
                child: const Text('Mengerti'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    showLoaderDialog() {
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Row(
              children: [
                const CircularProgressIndicator(),
                Container(
                  margin: const EdgeInsets.only(left: 7),
                  child: const Text("Loading..."),
                ),
              ],
            ),
          );
        },
      );
    }

    onBoardingPage() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeInUp(
                  delay: const Duration(milliseconds: 1000),
                  duration: const Duration(milliseconds: 1000),
                  child: const Text(
                    "Now one place",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                FadeInUp(
                  delay: const Duration(milliseconds: 1200),
                  duration: const Duration(milliseconds: 1000),
                  child: Text(
                    "Are you ready to learn application \neasily in the funniest way?",
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.8,
                      color: Colors.grey.shade700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          FadeInUp(
            delay: const Duration(milliseconds: 1300),
            duration: const Duration(milliseconds: 1000),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    onPressed: () {
                      /*
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MainPage()),
                                (Route<dynamic> route) => false,
                              );
                              */
                    },
                    color: Colors.black,
                    height: 45,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.only(
                      left: 25,
                      right: 25,
                      bottom: 4,
                    ),
                    child: const Center(
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () async {
                      /*
                      if (widget.box.length == 0) {
                        showPopUp("Failed",
                            "Terjadi kesalahan tolong ulangin lagi ya!");
                        return setState(() {
                          type_page = "signin";
                        });
                      }
*/
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return MainHomePage(
                              box: widget.box,
                              userData: userData,
                            );
                          },
                        ),
                        (Route<dynamic> route) => false,
                      );
                    },
                    child: const Text(
                      "skip",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        height: 1.8,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    }

    onBoardingPageDesktop() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeInUp(
                  delay: const Duration(milliseconds: 1000),
                  duration: const Duration(milliseconds: 1000),
                  child: const Text(
                    "Now one place",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                FadeInUp(
                  delay: const Duration(milliseconds: 1200),
                  duration: const Duration(milliseconds: 1000),
                  child: Text(
                    "Are you ready to learn application \neasily in the funniest way?",
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.8,
                      color: Colors.grey.shade700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }

    typeBodyPage() {
      if (type_page == "signin") {
        return FadeInUp(
          duration: const Duration(milliseconds: 300),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 25,
              ),
              const Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                cursorColor: Colors.black,
                controller: usernameTextController,
                maxLength: 15,
                onChanged: (String value) {
                  if (value.isEmpty) {
                    // ignore: void_checks
                    return showPopUp("Username", "Tolong isi username ya!");
                  }
                  if (RegExp("^[a-z]+\$", caseSensitive: false)
                      .hasMatch(value)) {
                  } else {
                    setState(() {
                      usernameTextController.clear();
                    });
                    // ignore: void_checks
                    return showPopUp(
                        "Username", "Tolong isi username dengan benar ya!");
                  }
                },
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(0.0),
                  labelText: 'Username',
                  hintText: 'username',
                  labelStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                  ),
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14.0,
                  ),
                  prefixIcon: const Icon(
                    Iconsax.user,
                    color: Colors.black,
                    size: 18,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.grey.shade200, width: 2),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  floatingLabelStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.black, width: 1.5),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
              TextField(
                controller: passwordTextController,
                cursorColor: Colors.black,
                maxLength: 15,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(0.0),
                  labelText: 'Password',
                  hintText: 'example123',
                  labelStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                  ),
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14.0,
                  ),
                  prefixIcon: const Icon(
                    Iconsax.key,
                    color: Colors.black,
                    size: 18,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.grey.shade200, width: 2),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  floatingLabelStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.black, width: 1.5),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "By logging in, you agree to our Terms, Data policy and Cookies policy",
                style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                onPressed: () async {
                  try {
                    var usernameValue = usernameTextController.text;
                    var passwordValue = passwordTextController.text;
                    if (usernameValue.isEmpty) {
                      var dataPopUp = {
                        "type": "Username",
                        "message": "Tolong isi username ya!"
                      };
                      return showPopUp(
                        dataPopUp["type"],
                        dataPopUp["message"],
                      );
                    }
                    if (usernameValue.length < 5) {
                      return showPopUp("username",
                          "Minimal panjang username adalah 5 tolong isi lebih dari itu ya");
                    }

                    if (passwordValue.isEmpty) {
                      return showPopUp(
                          "Password", "Tolong isi Passwordnya juga ya!");
                    }

                    if (passwordValue.length < 8) {
                      return showPopUp("password",
                          "Minimal panjang password adalah 8 tolong isi lebih dari itu ya");
                    }

                    if (RegExp("^[a-z]+\$", caseSensitive: false)
                        .hasMatch(usernameValue)) {
                      showLoaderDialog();
                      var res = await Api.account("signin", {
                        "username": usernameValue,
                        "password": passwordValue
                      });
                      if (res["status_bool"]) {
                        List user = widget.box.get("user", defaultValue: []);
                        if (user.isNotEmpty) {
                          List data = [];
                          for (var i = 0; i < user.length; i++) {
                            // ignore: non_constant_identifier_names
                            Map loop_data = user[i];
                            if (loop_data["id"] == res["result"]["id"]) {
                              data.add(res["result"]);
                            } else {
                              data.add(loop_data);
                            }
                          }
                          widget.box.put("user", data);
                        } else {
                          widget.box.put("user", [res["result"]]);
                        }
                        return setState(() {
                          userData = res;
                          Navigator.pop(context);
                          usernameTextController.clear();
                          passwordTextController.clear();
                          type_page = "onboarding";
                        });
                      } else {
                        setState(() {
                          Navigator.pop(context);
                          if (res["result"]["state"] != null) {
                            usernameTextController.clear();
                            passwordTextController.clear();
                            type_page = res["result"]["state"];
                          }
                        });
                        return showPopUp("Failed", res["message"]);
                      }
                    } else {
                      return showPopUp("username",
                          "Format Username kamu tidak ada simbol dan angka ya!");
                    }
                  } catch (e) {
                    return showPopUp("Error",
                        "Terjadi kesalahan application\ntolong update ke versi baru / lapor ke developer kami ya");
                  }
                },
                color: Colors.blue,
                height: 50,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.only(
                  left: 25,
                  right: 25,
                ),
                child: const Center(
                  child: Text(
                    "Log in",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      usernameTextController.clear();
                      passwordTextController.clear();
                      type_page = "resetpassword";
                    });
                  },
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        usernameTextController.clear();
                        passwordTextController.clear();
                        type_page = "signup";
                      });
                    },
                    child: const Text(
                      'Register',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ],
          ),
        );
      } else if (type_page == "signup") {
        return FadeInUp(
          duration: const Duration(milliseconds: 300),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 25,
              ),
              const Center(
                child: Text(
                  "Create Account",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text("Username"),
              const SizedBox(
                height: 5,
              ),
              TextField(
                maxLength: 15,
                cursorColor: Colors.black,
                controller: usernameTextController,
                onChanged: (String value) {
                  if (value.isEmpty) {
                    // ignore: void_checks
                    return showPopUp("Username", "Tolong isi username ya!");
                  }
                  if (RegExp("^[a-z]+\$", caseSensitive: false)
                      .hasMatch(value)) {
                  } else {
                    setState(() {
                      usernameTextController.clear();
                    });
                    // ignore: void_checks
                    return showPopUp(
                        "Username", "Tolong isi username dengan benar ya!");
                  }
                },
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(0.0),
                  hintText: 'username',
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14.0,
                  ),
                  labelStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                  ),
                  prefixIcon: const Icon(
                    Iconsax.user,
                    color: Colors.black,
                    size: 18,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade200,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  floatingLabelStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(
                      25.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text("Full Name"),
              const SizedBox(
                height: 5,
              ),
              TextField(
                maxLength: 25,
                cursorColor: Colors.black,
                controller: fullnameTextController,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(0.0),
                  hintText: 'Full Name',
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14.0,
                  ),
                  labelStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                  ),
                  prefixIcon: const Icon(
                    Iconsax.user,
                    color: Colors.black,
                    size: 18,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade200,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  floatingLabelStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(
                      25.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text("Password"),
              const SizedBox(
                height: 5,
              ),
              TextField(
                maxLength: 15,
                cursorColor: Colors.black,
                controller: passwordTextController,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(0.0),
                  hintText: 'example123',
                  labelStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                  ),
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14.0,
                  ),
                  prefixIcon: const Icon(
                    Iconsax.key,
                    color: Colors.black,
                    size: 18,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.grey.shade200, width: 2),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  floatingLabelStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.black, width: 1.5),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "By logging in, you agree to our Terms, Data policy and Cookies policy",
                style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                onPressed: () async {
                  try {
                    var usernameValue = usernameTextController.text;
                    var passwordValue = passwordTextController.text;
                    if (usernameValue.isEmpty) {
                      var dataPopUp = {
                        "type": "Username",
                        "message": "Tolong isi username ya!"
                      };
                      return showPopUp(
                        dataPopUp["type"],
                        dataPopUp["message"],
                      );
                    }
                    if (usernameValue.length < 5) {
                      return showPopUp("username",
                          "Minimal panjang username adalah 5 tolong isi lebih dari itu ya");
                    }

                    if (passwordValue.isEmpty) {
                      return showPopUp(
                          "Password", "Tolong isi Passwordnya juga ya!");
                    }

                    if (passwordValue.length < 8) {
                      return showPopUp("password",
                          "Minimal panjang password adalah 8 tolong isi lebih dari itu ya");
                    }

                    if (RegExp("^[a-z]+\$", caseSensitive: false)
                        .hasMatch(usernameValue)) {
                      showLoaderDialog();
                      var res = await Api.account("signup", {
                        "password": passwordValue,
                        "username": usernameValue
                      });
                      if (res["status_bool"]) {
                        return setState(() {
                          userData = res;
                          Navigator.pop(context);
                          type_page = res["result"]["state"];
                        });
                      } else {
                        setState(() {
                          Navigator.pop(context);
                          usernameTextController.clear();
                          passwordTextController.clear();
                        });
                        showPopUp("Failed", res["message"]);
                      }
                    } else {
                      return showPopUp("username",
                          "Format Username kamu tidak ada simbol dan angka ya!");
                    }
                  } catch (e) {
                    return showPopUp("Error",
                        "Terjadi kesalahan application\ntolong update ke versi baru / lapor ke developer kami ya");
                  }
                },
                color: Colors.blue,
                height: 50,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.only(
                  left: 25,
                  right: 25,
                ),
                child: const Center(
                  child: Text(
                    "SignUp",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      usernameTextController.clear();
                      passwordTextController.clear();
                      type_page = "resetpassword";
                    });
                  },
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Have an account?',
                    style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        usernameTextController.clear();
                        passwordTextController.clear();
                        type_page = "signin";
                      });
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        );
      } else if (type_page == "onboarding") {
        return onBoardingPage();
      } else {
        return FadeInUp(
          duration: const Duration(milliseconds: 300),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 25,
              ),
              const Center(
                child: Text(
                  "Forgot Password",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Username"),
              const SizedBox(
                height: 10,
              ),
              TextField(
                maxLength: 15,
                controller: usernameTextController,
                cursorColor: Colors.black,
                onChanged: (String value) {
                  if (value.isEmpty) {
                    // ignore: void_checks
                    return showPopUp("Username", "Tolong isi username ya!");
                  }
                  if (RegExp("^[a-z]+\$", caseSensitive: false)
                      .hasMatch(value)) {
                  } else {
                    setState(() {
                      usernameTextController.clear();
                    });
                    // ignore: void_checks
                    return showPopUp(
                        "Username", "Tolong isi username dengan benar ya!");
                  }
                },
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(5.0),
                  hintText: 'username',
                  labelStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                  ),
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14.0,
                  ),
                  prefixIcon: const Icon(
                    Iconsax.user,
                    color: Colors.black,
                    size: 18,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.grey.shade200, width: 2),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  floatingLabelStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.black, width: 1.5),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  "Secret Words",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.normal),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              for (var i = 0, ii = 5; i < 5; i++, ii++) ...[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text((i + 1).toString()),
                    TextField(
                      readOnly: false,
                      controller: secretWords[i]["controller"],
                      onChanged: (String value) {
                        if (value.isEmpty) {
                          // ignore: void_checks
                          return showPopUp(
                              "Secret Words",
                              "Secret Word nomor " +
                                  (i + 1).toString() +
                                  " Tidak boleh kosong");
                        }
                        if (value.length >= 15) {
                          setState(() {
                            secretWords[i]["controller"].clear();
                          });
                          // ignore: void_checks
                          return showPopUp(
                              "Secret Words",
                              "Secret Word nomor " +
                                  (i + 1).toString() +
                                  "\nterlalu panjang");
                        }
                        if (RegExp("^[a-z]+\$", caseSensitive: false)
                            .hasMatch(value)) {
                        } else {
                          setState(() {
                            secretWords[i]["controller"].clear();
                          });
                          // ignore: void_checks
                          return showPopUp(
                              "Secret Words",
                              "Secret Word nomor " +
                                  (i + 1).toString() +
                                  "\nFormat Salah\nPastiin text tidak ada simbol dan angka ya!");
                        }
                      },
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        constraints:
                            const BoxConstraints(maxHeight: 35, maxWidth: 100),
                        contentPadding: const EdgeInsets.all(5),
                        hintText: '',
                        labelStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                        ),
                        hintStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 14.0,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey.shade200, width: 2),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        floatingLabelStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    Text((ii + 1).toString()),
                    TextField(
                      controller: secretWords[ii]["controller"],
                      onChanged: (String value) {
                        if (value.isEmpty) {
                          // ignore: void_checks
                          return showPopUp(
                              "Secret Words",
                              "Secret Word nomor " +
                                  (ii + 1).toString() +
                                  " Tidak boleh kosong");
                        }
                        if (RegExp("^[a-z]+\$", caseSensitive: false)
                            .hasMatch(value)) {
                        } else {
                          setState(() {
                            secretWords[ii]["controller"].clear();
                          });
                          // ignore: void_checks
                          return showPopUp(
                              "Secret Words",
                              "Secret Word nomor " +
                                  (ii + 1).toString() +
                                  "\nFormat Salah\nPastiin text tidak ada simbol dan angka ya!");
                        }
                      },
                      readOnly: false,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        constraints:
                            const BoxConstraints(maxHeight: 35, maxWidth: 100),
                        contentPadding: const EdgeInsets.all(5),
                        hintText: '',
                        labelStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                        ),
                        hintStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 14.0,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey.shade200, width: 2),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        floatingLabelStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
              const SizedBox(
                height: 20,
              ),
              Text(
                "By logging in, you agree to our Terms, Data policy and Cookies policy",
                style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                onPressed: () async {
                  var usernameValue = usernameTextController.text;
                  if (usernameValue.isEmpty) {
                    var dataPopUp = {
                      "type": "Username",
                      "message": "Tolong isi username ya!"
                    };
                    return showPopUp(
                      dataPopUp["type"],
                      dataPopUp["message"],
                    );
                  }
                  if (usernameValue.length < 5) {
                    return showPopUp("username",
                        "Minimal panjang username adalah 5 tolong isi lebih dari itu ya");
                  }

                  print(context.size?.width);
                  if (RegExp("^[a-z]+\$", caseSensitive: false)
                      .hasMatch(usernameValue)) {
                    List SecretDataWords = [];
                    for (var i = 0; i < secretWords.length; i++) {
                      // ignore: non_constant_identifier_names
                      var loop_data = secretWords[i];
                      // ignore: avoid_print
                      if (loop_data["controller"].text.toString().isEmpty) {
                        return showPopUp("Secret Words",
                            "Tolong isi secret nomor " + (i + 1).toString());
                      } else {
                        if (loop_data["controller"].text.toString().length <=
                            2) {
                          setState(() {
                            secretWords[i]["controller"].clear();
                          });
                          // ignore: void_checks
                          return showPopUp(
                              "Secret Words",
                              "Secret Word nomor " +
                                  (i + 1).toString() +
                                  "\nterlalu pendek");
                        }
                        if (loop_data["controller"].text.toString().length >=
                            15) {
                          setState(() {
                            secretWords[i]["controller"].clear();
                          });
                          // ignore: void_checks
                          return showPopUp(
                              "Secret Words",
                              "Secret Word nomor " +
                                  (i + 1).toString() +
                                  "\nterlalu panjang");
                        }
                        if (RegExp("^[a-z]+\$", caseSensitive: false).hasMatch(
                            loop_data["controller"].text.toString())) {
                          SecretDataWords.add(loop_data["controller"]
                              .text
                              .toString()
                              .toLowerCase());
                        } else {
                          setState(() {
                            loop_data["controller"].clear();
                          });
                          return showPopUp("Secret Words",
                              "Format bad nomor " + (i + 1).toString());
                        }
                      }
                    }
                    print(SecretDataWords);
                  } else {
                    return showPopUp("Username",
                        "Format username salah tolong isi dengan benar ya!");
                  }
                },
                color: Colors.blue,
                height: 50,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: const EdgeInsets.only(
                  left: 25,
                  right: 25,
                ),
                child: const Center(
                  child: Text(
                    "Reset Password",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Have an account?',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextButton(
                    onPressed: () async {
                      for (var i = 0; i < secretWords.length; i++) {
                        secretWords[i]["controller"].clear();
                      }
                      setState(() {
                        usernameTextController.clear();
                        passwordTextController.clear();
                        type_page = "signin";
                      });
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        );
      }
    }

    body(constraints) {
      if (constraints.maxWidth < 600) {
        return typeBodyPage();
      } else {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 0,
                    blurRadius: 10,
                  ),
                ],
              ),
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: onBoardingPageDesktop(),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: typeBodyPage(),
                  ),
                ],
              ),
            ),
          ),
        );
      }
    }

    return LayoutBuilder(
      builder: (contex, constraints) {
        return Scaffold(
          backgroundColor: isDarkMode ? Colors.black : const Color(0xffF0F8FF),
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            scrollDirection: Axis.vertical,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height,
                minWidth: MediaQuery.of(context).size.width,
              ),
              child: body(constraints),
            ),
          ),
        );
      },
    );
  }
}
