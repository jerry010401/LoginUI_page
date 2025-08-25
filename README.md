# Flutter Authentication UI

A clean, modular, and responsive Flutter project that provides out-of-the-box screens for user authentication:
- **Sign In**
- **Sign Up**
- **Forgot Password**

---

##  Features

- **Modern Design** — Sleek forms with `TextFormField`, icons, and consistent styling.
- **Form Validation** — Built-in checks for required inputs, email format, password strength, and confirmation matching.
- **Responsive Layout** — Supports different screen sizes using `MediaQuery` and adaptive padding.
- **Clear Navigation Flow** — Easy transitions between Auth screens via `Navigator` and named routes.
- **Separation of Concerns** — Organized components, screens, and utility functions.
- **Easily Extensible** — Designed to integrate smoothly with Firebase, social logins, and state management solutions like Provider or GetX.

---

##  Project Structure

.
├── lib/
│ ├── main.dart # App entry point
│ ├── screens/
│ │ ├── login_screen.dart
│ │ ├── signup_screen.dart
│ │ └── forgot_password_screen.dart
│ ├── widgets/
│ │ ├── custom_input_field.dart
│ │ └── rounded_button.dart
│ └── utils/
│ └── routes.dart # Centralized named routes
└── pubspec.yaml # Dependencies and asset configuration

yaml
Copy
Edit

---

##  Getting Started

```bash
git clone <your-repo-url>
cd <project-folder>
flutter pub get
flutter run
Ensure you have Flutter SDK installed and properly configured. IDEs like VS Code or Android Studio with Flutter support are recommended.

Navigation Flow
Login Screen

Email and password inputs with validation

Buttons:

Sign In (executes login logic)

Sign Up (navigates to the signup screen)

Forgot Password? (navigates to password recovery screen)

Signup Screen

Fields: Email, Password, Confirm Password

Validation for proper email format and matching passwords

Button: Register (executes signup logic)

Forgot Password Screen

Email input form

Button: Send Reset Link (executes password reset logic)

Optional Enhancements

Integrate Firebase Auth to handle actual authentication and password reset flows.

Add social login providers (e.g., Google, Facebook).

Use GetX, Provider, or BLoC for state and routing management.

Apply animations (e.g., AnimatedContainer, Hero) and improve UI/UX.

Implement localization and accessibility features.

Contribution

Contributions are welcome! Whether you improve UI, enhance validations, or integrate new features—feel free to open issues or pull requests.

Summary

This README offers a robust framework for building and extending your Flutter authentication UI. It supports clear navigation, modular design, and is ready to tie into backend or state management architecture.

