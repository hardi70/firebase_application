import 'package:firebase_application/res/common/text_field.dart';
import 'package:firebase_application/view/netflix_profile_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class NetflixLoginScreen extends StatefulWidget {
  const NetflixLoginScreen({Key? key}) : super(key: key);

  @override
  State<NetflixLoginScreen> createState() => _NetflixLoginScreenState();
}

class _NetflixLoginScreenState extends State<NetflixLoginScreen> {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  User? userCradential;
  User? user;
  bool nameValid = false;
  bool emailValid = false;
  bool passwordValid = false;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  FocusNode nameFocus = FocusNode();
  FocusNode emailFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 300),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => const NetflixProfilePage(),
                            ));
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(
                              color: const Color(0xFFF3F3F3), width: 2),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Icon(
                          Icons.arrow_forward,
                          size: 30,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Image.asset(
                      "assets/images/netflix_logo.png",
                      height: 35,
                      width: 130,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Sign in ",
                    style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Avenir"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Full Name",
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Avenir",
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Textfield(
                    controller: nameController,
                    focusNode: nameFocus,
                    hintText: "Enter your name",
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Email",
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Avenir",
                    ),
                  ),
                  const SizedBox(height: 15),
                  Textfield(
                    controller: emailController,
                    focusNode: emailFocus,
                    hintText: "Enter your Email",
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Password",
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Avenir",
                    ),
                  ),
                  const SizedBox(height: 15),
                  Textfield(
                    controller: passwordController,
                    focusNode: passwordFocus,
                    hintText: "Enter your password",
                    textInputAction: TextInputAction.done,
                  ),
                  const SizedBox(height: 50),
                  ElevatedButton(
                    onPressed: () {
                      signUp();
                      if (validator()) {
                        debugPrint("Every thing is Good!");
                      }
                    },
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(
                        const Size(double.infinity, 45),
                      ),
                    ),
                    child: const Text(
                      "sign in",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Divider(
                    thickness: 1,
                    color: Color(0xFFF3F3F3),
                  ),
                  const SizedBox(height: 20),
                  const Center(
                    child: Text(
                      "Or Sign In With",
                      style: TextStyle(
                        color: Color(0xFFA7A9B7),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Avenir",
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.transparent),
                            ),
                            onPressed: () {
                              googleLogin();
                            },
                            child: Image.asset(
                              "assets/images/Google_Icon.png",
                              height: 24,
                              width: 24,
                            ),
                          ),
                          // Image.asset(
                          //   "assets/images/Google_Icon.png",
                          //   height: 24,
                          //   width: 24,
                          //),
                          const SizedBox(width: 10),
                          const Text(
                            "Sign Up with Google",
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Avenir",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: Container(
                      height: MediaQuery.of(context).size.height / 13,
                      width: MediaQuery.of(context).size.width / 1.2,
                      decoration: BoxDecoration(
                        color: const Color(0xFFD22F26),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/iphone_logo.png",
                            height: 24,
                            width: 20,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Text(
                            "Sign Up with Apple",
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Avenir",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  showToastMessage(String message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: (Colors.black),
        elevation: 0,
        margin: const EdgeInsets.all(12),
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 2),
        onVisible: () {
          debugPrint("onVisible ----->>> ");
        },
        // showCloseIcon: true,
        dismissDirection: DismissDirection.horizontal,
        action: SnackBarAction(
          label: 'dismiss',
          onPressed: () {},
        ),
      ),
    );
  }

  bool validator() {
    if (nameController.text.isEmpty) {
      showToastMessage("Please enter name");
      return false;
    } else if (!RegExp("^[a-zA-Z]+[\-'\s]?[a-zA-Z ]+\$")
        .hasMatch(nameController.text)) {
      showToastMessage("Please enter valid name");
      return false;
    } else if (emailController.text.isEmpty) {
      showToastMessage("Please enter Email");
      return false;
    } else if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(emailController.text)) {
      showToastMessage("Please enter valid Email");
      return false;
    } else if (passwordController.text.isEmpty) {
      showToastMessage("Please enter password");
      return false;
    } else if (!RegExp(
            r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$")
        .hasMatch(passwordController.text)) {
      showToastMessage("Please enter valid password");
      return false;
    } else {
      return true;
    }
  }

  signUp() async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: emailController.text, password: passwordController.text)
          .then((value) {
        userCradential = value.user;
        value.user!.sendEmailVerification();
        debugPrint('user Data -----> ${value.user}');
        setState(() {});
      });
    } on FirebaseAuthException catch (error) {
      debugPrint('code ---> ${error.code}');
      if (error.code == 'email-already-in-use') {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('email already in use')));
        return false;
      } else if (error.code == 'invalid-email') {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('invalid email')));
        return false;
      } else if (error.code == 'weak-password') {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('Password should be at least 6 characters')));
        return false;
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(error!.code)));
        debugPrint('message ---> ${error.message}');
      }
    }
  }

  googleLogin() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
