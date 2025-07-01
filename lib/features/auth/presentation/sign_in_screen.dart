// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:structur_project/helpers/all_routes.dart';
// import 'package:structur_project/helpers/loading.dart';
// import 'package:structur_project/helpers/ui_helpers.dart';
// import 'package:structur_project/networks/api_acess.dart';

// class SignInScreen extends StatefulWidget {
//   const SignInScreen({super.key});

//   @override
//   State<SignInScreen> createState() => _SignInScreenState();
// }

// class _SignInScreenState extends State<SignInScreen> {
//   final _formKey = GlobalKey<FormState>();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   ValueNotifier<bool> isLoading = ValueNotifier<bool>(false);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color(0xFF00B2FF),
//         title: const Text('Sign In Screen'),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             Form(
//                 key: _formKey,
//                 child: Column(children: [
//                   TextFormField(
//                     controller: _emailController,
//                     decoration: const InputDecoration(
//                       labelText: 'Email',
//                       border: OutlineInputBorder(),
//                     ),
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Entar your email address';
//                       }
//                       if (!RegExp(
//                         r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
//                       ).hasMatch(value)) {
//                         return 'Please enter a valid email';
//                       }
//                       return null;
//                     },
//                   ),
//                   UIHelper.verticalSpace(20.h),
//                   TextFormField(
//                     controller: _passwordController,
//                     obscureText: true,
//                     decoration: const InputDecoration(
//                       labelText: 'Password',
//                       border: OutlineInputBorder(),
//                     ),
//                     validator: (value) {
//                       if (value == null || value.isEmpty) {
//                         return 'Please enter your password';
//                       }
//                       if (value.length < 6) {
//                         return 'Password must be at least 6 charactors';
//                       }
//                       return null;
//                     },
//                   ),
//                   ElevatedButton(
//                     onPressed: () async {
//                       if (_formKey.currentState!.validate()) {
//                         // Show loading
//                         showDialog(
//                           context: context,
//                           barrierDismissible: false,
//                           builder: (context) =>
//                               loadingIndicatorCircle(context: context),
//                         );

//                         bool signInSuccess = await signInRxObj.signIn(
//                           email: _emailController.text.trim(),
//                           password: _passwordController.text.trim(),
//                         );

//                         // Dismiss loading
//                         Navigator.of(context, rootNavigator: true).pop();

//                         if (signInSuccess) {
//                           Navigator.pushReplacementNamed(
//                               context, Routes.newScreen);
//                         } else {
//                           ScaffoldMessenger.of(context).showSnackBar(
//                             const SnackBar(content: Text('Sign in failed')),
//                           );
//                         }
//                       }
//                     },
//                     child: const Text('Sign In'),
//                   ),
//                 ]))
//           ],
//         ),
//       ),
//     );
//   }
// }
