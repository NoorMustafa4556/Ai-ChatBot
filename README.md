# Flutter Gemini AI ChatBot 🤖


A beautiful and fully functional chatbot application built with Flutter and powered by Google's advanced **Gemini AI** model. This project serves as an excellent example of integrating a state-of-the-art AI into a modern, cross-platform mobile application.

The app provides a real-time, user-friendly chat interface that allows users to interact with an AI in an intuitive and engaging way.

---
## ✨ App Screenshots

<p align="center">
  <img src="https://raw.githubusercontent.com/NoorMustafa4556/Ai-ChatBot/main/assets/images/1.png" alt="Screenshot 1" width="30%" style="margin: 10px;" />
  <img src="https://raw.githubusercontent.com/NoorMustafa4556/Ai-ChatBot/main/assets/images/2.png" alt="Screenshot 2" width="30%" style="margin: 10px;" />
  <img src="https://raw.githubusercontent.com/NoorMustafa4556/Ai-ChatBot/main/assets/images/3.png" alt="Screenshot 3" width="30%" style="margin: 10px;" />
</p>


## ✨ Key Features

-   **🤖 Intelligent Conversations:** Live, intelligent responses powered by Google's **Gemini 1.5 Flash** model.
-   **🎨 Sleek & Responsive UI:** A modern and clean user interface featuring chat bubbles, a background image, and smooth animations.
-   **🚀 Engaging Splash Screen:** A professional animated splash screen using `flutter_spinkit` on app launch.
-   **⏳ Real-time Loading Indicators:** A `LinearProgressIndicator` keeps the user informed while the AI is generating a response.
-   **🛡️ Robust Error Handling:** Displays clear, user-friendly error messages for invalid API keys or network connectivity issues.
-   **🔒 Secure API Key Management:** The API key is isolated in a `Const.dart` file, which is easily managed and kept private using `.gitignore`.
-   **📜 Auto-Scrolling Chat:** The chat view automatically scrolls to the latest message, ensuring a smooth user experience.

---
|



---

## 🛠️ Technology Stack

-   **Framework:** [Flutter](https://flutter.dev/)
-   **Language:** [Dart](https://dart.dev/)
-   **AI Service:** [Google Gemini API](https://ai.google.dev/)
-   **Core Packages:**
    -   [`google_generative_ai`](https://pub.dev/packages/google_generative_ai): For interacting with the Gemini API.
    -   [`flutter_spinkit`](https://pub.dev/packages/flutter_spinkit): For the animated loading indicator on the splash screen.
    -   [`cupertino_icons`](https://pub.dev/packages/cupertino_icons): For iOS-style icons.

---

## 🚀 Getting Started

Follow these instructions to set up and run the project on your local machine.

### Prerequisites
-   Flutter SDK installed. [Installation Guide](https://docs.flutter.dev/get-started/install)
-   A code editor like VS Code or Android Studio.

### Installation & Setup

1.  **Clone the Repository:**
    ```bash
    git clone https://github.com/NoorMustafa4556/Ai-ChatBot.git
    cd Ai-ChatBot
    ```

2.  **Obtain a Google Gemini API Key:**
    -   Go to [Google AI Studio](https://makersuite.google.com/).
    -   Click on **"Get API Key"** and create a new API key.

3.  **Add the API Key to the Project:**
    -   Inside the `lib/A-I Project/` directory, find the `Const.dart` file.
    -   Replace the placeholder with your actual API key.

    ```dart
    // lib/A-I Project/Const.dart
    const String GEMINI_API_KEY = 'YOUR_ACTUAL_API_KEY_HERE';
    ```
    > **⚠️ IMPORTANT:** The `Const.dart` file is already included in `.gitignore` to prevent your secret API key from being exposed publicly. Do not remove it from `.gitignore`.

4.  **Install Dependencies:**
    Run the following command in the project's root directory:
    ```bash
    flutter pub get
    ```

5.  **Run the Application:**
    ```bash
    flutter run
    ```

---

## 📂 Project Structure

lib/
├── A-I Project/
│ ├── ChatBotSplash.dart # Application's entry splash screen
│ ├── ChatBubble.dart # UI widget for user and bot messages
│ ├── ChatMessage.dart # Data model class for messages
│ ├── ChatScreen.dart # Main screen containing the chat logic and UI
│ ├── Const.dart # Stores constants like the API key
│ └── main.dart # Main entry point of the application
│
└── assets/
└── images/ # Contains app assets like background and splash images



---

## 🤝 Contributing

Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1.  **Fork** the Project.
2.  Create your Feature Branch (`git checkout -b feature/AmazingFeature`).
3.  Commit your Changes (`git commit -m 'Add some AmazingFeature'`).
4.  Push to the Branch (`git push origin feature/AmazingFeature`).
5.  Open a **Pull Request**.

---

## 📄 License

This project is licensed under the MIT License. See the `LICENSE` file for more details.

---

**Developed with ❤️ by Noor Mustafa**
