import 'package:flutter/material.dart';
import 'package:askme/pallete.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.mainFontColor,
      appBar: AppBar(
        title: Text('Sign Up'),
        backgroundColor: Pallete.whiteColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Email Section
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Email',
                filled: true,
                fillColor: Pallete.firstSuggestionBoxColor,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 16.0),

            // Password Section
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Password',
                filled: true,
                fillColor: Pallete.secondSuggestionBoxColor,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
              ),
              obscureText: true,
            ),
            SizedBox(height: 16.0),

            // Confirm Password Section
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Confirm Password',
                filled: true,
                fillColor: Pallete.secondSuggestionBoxColor,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
              ),
              obscureText: true,
            ),
            SizedBox(height: 16.0),

            // Signup Button
            ElevatedButton(
              onPressed: () {
                // Add your signup logic here
              },
              style: ElevatedButton.styleFrom(
                primary: Pallete.thirdSuggestionBoxColor,
                padding: EdgeInsets.all(16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: Text(
                'Sign Up',
                style: TextStyle(
                  color: Pallete.mainFontColor,
                  fontSize: 16.0,
                ),
              ),
            ),
            SizedBox(height: 16.0),

            // Login Option
            GestureDetector(
              onTap: () {
                // Navigate to the login page
                Navigator.pop(context); // Pop the current page
              },
              child: Text(
                'Already have an account? Login',
                style: TextStyle(
                  color: Pallete.assistantCircleColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
