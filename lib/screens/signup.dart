import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/login.dart';

class SignUpScreen extends StatefulWidget {
 const SignUpScreen({Key? key}) : super(key: key);

 @override
 _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
 final _formKey = GlobalKey<FormState>();
 final _nameController = TextEditingController();
 final _emailController = TextEditingController();
 final _passwordController = TextEditingController();
 final _confirmPasswordController = TextEditingController();
 bool _isLoading = false;
 bool _isPasswordVisible = false;
 bool _isConfirmPasswordVisible = false;

 String? _validateName(String? value) {
   if (value == null || value.isEmpty) {
     return 'Name is required';
   }
   if (value.length < 2) {
     return 'Name must be at least 2 characters';
   }
   return null;
 }

 String? _validateEmail(String? value) {
   if (value == null || value.isEmpty) {
     return 'Email is required';
   }
   final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
   if (!emailRegex.hasMatch(value)) {
     return 'Enter a valid email address';
   }
   return null;
 }

 String? _validatePassword(String? value) {
   if (value == null || value.isEmpty) {
     return 'Password is required';
   }
   if (value.length < 6) {
     return 'Password must be at least 6 characters';
   }
   return null;
 }

 String? _validateConfirmPassword(String? value) {
   if (value == null || value.isEmpty) {
     return 'Please confirm your password';
   }
   if (value != _passwordController.text) {
     return 'Passwords do not match';
   }
   return null;
 }

 Future<void> _handleSignUp() async {
   if (_formKey.currentState!.validate()) {
     setState(() {
       _isLoading = true;
     });

     try {
       await Future.delayed(const Duration(seconds: 2));

       if (mounted) {
         Navigator.pushReplacement(
           context,
           MaterialPageRoute(builder: (context) => LoginScreen()),
         );
       }
     } catch (e) {
       if (mounted) {
         ScaffoldMessenger.of(context).showSnackBar(
           SnackBar(
             content: Text('Sign up failed: ${e.toString()}'),
             backgroundColor: const Color.fromARGB(255, 193, 47, 37),
           ),
         );
       }
     } finally {
       if (mounted) {
         setState(() {
           _isLoading = false;
         });
       }
     }
   }
 }

 @override
 Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
       decoration: BoxDecoration(
         image: DecorationImage(
           image: AssetImage('assets/images/scan.jpg'),
           fit: BoxFit.cover,
           colorFilter: ColorFilter.mode(
             Colors.black.withOpacity(0.75),
             BlendMode.darken,
           ),
         ),
       ),
       child: Center(
         child: SingleChildScrollView(
           padding: const EdgeInsets.all(24.0),
           child: Container(
             decoration: BoxDecoration(
               color: Colors.black.withOpacity(0.6),
               borderRadius: BorderRadius.circular(20),
               border: Border.all(
                 color: Colors.grey.withOpacity(0.2),
               ),
             ),
             padding: const EdgeInsets.all(24.0),
             child: Form(
               key: _formKey,
               child: Column(
                 mainAxisSize: MainAxisSize.min,
                 children: [
                   const Text(
                     'Create Account',
                     style: TextStyle(
                       fontSize: 32,
                       fontWeight: FontWeight.bold,
                       color: Colors.white,
                     ),
                   ),
                   const SizedBox(height: 8),
                   Text(
                     'Sign up to get started',
                     style: TextStyle(
                       color: Colors.grey[400],
                       fontSize: 16,
                     ),
                   ),
                   const SizedBox(height: 32),
                   TextFormField(
                     controller: _nameController,
                     validator: _validateName,
                     decoration: InputDecoration(
                       labelText: 'Full Name',
                       labelStyle: TextStyle(color: Colors.grey[400]),
                       filled: true,
                       fillColor: Colors.grey[900]?.withOpacity(0.3),
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(12),
                         borderSide: BorderSide(color: Colors.grey.withOpacity(0.2)),
                       ),
                       enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(12),
                         borderSide: BorderSide(color: Colors.grey.withOpacity(0.2)),
                       ),
                       focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(12),
                         borderSide: const BorderSide(color: Color.fromARGB(255, 186, 42, 140)),
                       ),
                     ),
                     style: const TextStyle(color: Colors.white),
                   ),
                   const SizedBox(height: 16),
                   TextFormField(
                     controller: _emailController,
                     validator: _validateEmail,
                     decoration: InputDecoration(
                       labelText: 'Email',
                       labelStyle: TextStyle(color: Colors.grey[400]),
                       filled: true,
                       fillColor: Colors.grey[900]?.withOpacity(0.3),
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(12),
                         borderSide: BorderSide(color: Colors.grey.withOpacity(0.2)),
                       ),
                       enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(12),
                         borderSide: BorderSide(color: Colors.grey.withOpacity(0.2)),
                       ),
                       focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(12),
                         borderSide: const BorderSide(color: Color.fromARGB(255, 190, 38, 147)),
                       ),
                     ),
                     style: const TextStyle(color: Colors.white),
                   ),
                   const SizedBox(height: 16),
                   TextFormField(
                     controller: _passwordController,
                     validator: _validatePassword,
                     obscureText: !_isPasswordVisible,
                     decoration: InputDecoration(
                       labelText: 'Password',
                       labelStyle: TextStyle(color: Colors.grey[400]),
                       filled: true,
                       fillColor: Colors.grey[900]?.withOpacity(0.3),
                       suffixIcon: IconButton(
                         icon: Icon(
                           _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                           color: Colors.grey[400],
                         ),
                         onPressed: () {
                           setState(() {
                             _isPasswordVisible = !_isPasswordVisible;
                           });
                         },
                       ),
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(12),
                         borderSide: BorderSide(color: Colors.grey.withOpacity(0.2)),
                       ),
                       enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(12),
                         borderSide: BorderSide(color: Colors.grey.withOpacity(0.2)),
                       ),
                       focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(12),
                         borderSide: const BorderSide(color: Color.fromARGB(255, 202, 41, 159)),
                       ),
                     ),
                     style: const TextStyle(color: Colors.white),
                   ),
                   const SizedBox(height: 16),
                   TextFormField(
                     controller: _confirmPasswordController,
                     validator: _validateConfirmPassword,
                     obscureText: !_isConfirmPasswordVisible,
                     decoration: InputDecoration(
                       labelText: 'Confirm Password',
                       labelStyle: TextStyle(color: Colors.grey[400]),
                       filled: true,
                       fillColor: Colors.grey[900]?.withOpacity(0.3),
                       suffixIcon: IconButton(
                         icon: Icon(
                           _isConfirmPasswordVisible ? Icons.visibility : Icons.visibility_off,
                           color: Colors.grey[400],
                         ),
                         onPressed: () {
                           setState(() {
                             _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
                           });
                         },
                       ),
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(12),
                         borderSide: BorderSide(color: Colors.grey.withOpacity(0.2)),
                       ),
                       enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(12),
                         borderSide: BorderSide(color: Colors.grey.withOpacity(0.2)),
                       ),
                       focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(12),
                         borderSide: const BorderSide(color: Color.fromARGB(255, 176, 39, 151)),
                       ),
                     ),
                     style: const TextStyle(color: Colors.white),
                   ),
                   const SizedBox(height: 24),
                   SizedBox(
                     width: double.infinity,
                     height: 50,
                     child: ElevatedButton(
                       onPressed: _isLoading ? null : _handleSignUp,
                       style: ElevatedButton.styleFrom(
                         backgroundColor: const Color.fromARGB(255, 202, 46, 171),
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(12),
                         ),
                       ),
                       child: _isLoading
                           ? const CircularProgressIndicator(color: Colors.white)
                           : const Text(
                               'Sign Up',
                               style: TextStyle(
                                 fontSize: 16,
                                 fontWeight: FontWeight.bold,
                               ),
                             ),
                     ),
                   ),
                   const SizedBox(height: 16),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text(
                         'Already have an account? ',
                         style: TextStyle(color: Colors.grey[400]),
                       ),
                       GestureDetector(
                         onTap: () {
                           Navigator.pushReplacement(
                             context,
                             MaterialPageRoute(builder: (context) => LoginScreen()),
                           );
                         },
                         child: const Text(
                           'Sign In',
                           style: TextStyle(
                             color: Color.fromARGB(255, 195, 41, 166),
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                       ),
                     ],
                   ),
                 ],
               ),
             ),
           ),
         ),
       ),
     ),
   );
 }

 @override
 void dispose() {
   _nameController.dispose();
   _emailController.dispose();
   _passwordController.dispose();
   _confirmPasswordController.dispose();
   super.dispose();
 }
}