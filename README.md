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
```bash
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
 ```


---

## 🤝 Contributing

Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1.  **Fork** the Project.
2.  Create your Feature Branch (`git checkout -b feature/AmazingFeature`).
3.  Commit your Changes (`git commit -m 'Add some AmazingFeature'`).
4.  Push to the Branch (`git push origin feature/AmazingFeature`).
5.  Open a **Pull Request**.

---

# 👋 Hi, I'm Noor Mustafa

A passionate and results-driven **Flutter Developer** from **Bahawalpur, Pakistan**, specializing in building elegant, scalable, and high-performance cross-platform mobile applications using **Flutter** and **Dart**.

With a strong understanding of **UI/UX principles**, **state management**, and **API integration**, I aim to deliver apps that are not only functional but also user-centric and visually compelling. My development approach emphasizes clean code, reusability, and performance.

---

## 🚀 What I Do

- 🧑‍💻 **Flutter App Development** – I build cross-platform apps for Android, iOS, and the web using Flutter.
- 🔗 **API Integration** – I connect apps to powerful RESTful APIs and third-party services.
- 🎨 **UI/UX Design** – I craft responsive and animated interfaces that elevate the user experience.
- 🔐 **Authentication & Firebase** – I implement secure login systems and integrate Firebase services.
- ⚙️ **State Management** – I use Provider, setState, and Riverpod (in-progress) for scalable app architecture.
- 🧠 **Clean Architecture** – I follow MVVM and MVC patterns for maintainable code.

---


## 🌟 Projects I'm Proud Of

- 🌤️ **[Live Weather Check App](https://github.com/NoorMustafa4556/Live-Weather-Check-App)** – Real-time weather forecast using OpenWeatherMap API  
- 🤖 **[AI Chatbot (Gemini)](https://github.com/NoorMustafa4556/Ai-ChatBot)** – Conversational AI chatbot powered by Google’s Gemini  

- 🍔 **[Recipe App](https://github.com/NoorMustafa4556/Recipe-App)** – Discover recipes with images, categories, and step-by-step instructions  

- 📚 **[Palindrome Checker](https://github.com/NoorMustafa4556/Palindrome-Checker-App)** – A Theory of Automata-based project to identify palindromic strings  

> 🎯 Check out all my repositories on [github.com/NoorMustafa4556](https://github.com/NoorMustafa4556?tab=repositories)

---

## 🛠️ Tech Stack & Tools

| Area                | Tools/Technologies |
|---------------------|--------------------|
| **Languages**       | Dart, JavaScript, Python (basic) |
| **Mobile Framework**| Flutter            |
| **Backend/Cloud**   | Firebase (Auth, Realtime DB, Storage), Django, Flask |
| **Frontend (Web)**  | React.js (basic), HTML, CSS, Bootstrap |
| **State Management**| Provider, setState, Riverpod (learning) |
| **API & Storage**   | REST APIs, HTTP, Shared Preferences, SQLite |
| **Design**          | Material, Cupertino, Lottie Animations, Gradient UI |
| **Version Control** | Git, GitHub        |
| **Tools**           | Android Studio, VS Code, Postman, Figma (basic) |

---

## 🧰 Tech Toolbox

<p align="left">
  <img src="https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white"/>
  <img src="https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white"/>
  <img src="https://img.shields.io/badge/Firebase-FFCA28?style=for-the-badge&logo=firebase&logoColor=black"/>
  <img src="https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white"/>
  <img src="https://img.shields.io/badge/Django-092E20?style=for-the-badge&logo=django&logoColor=white"/>
  <img src="https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB"/>
  <img src="https://img.shields.io/badge/Postman-FF6C37?style=for-the-badge&logo=postman&logoColor=white"/>
  <img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white"/>
</p>

---

## 📈 Current Focus

- 💡 Enhancing Flutter animations and transitions
- 🤖 Implementing AI-based logic with Google Gemini API
- 📲 Building portfolio-level applications using full-stack Django & Flutter

---

## 📫 Let's Connect!

<p align="left">
  <a href="https://x.com/NoorMustafa4556" target="blank">
    <img src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/twitter.svg" alt="X / Twitter" height="30" width="40" />
  </a>
  <a href="https://www.linkedin.com/in/noormustafa4556/" target="blank">
    <img src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/linked-in-alt.svg" alt="LinkedIn" height="30" width="40" />
  </a>
  <a href="https://www.facebook.com/NoorMustafa4556" target="blank">
    <img src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/facebook.svg" alt="Facebook" height="30" width="40" />
  </a>
  <a href="https://instagram.com/noormustafa4556" target="blank">
    <img src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/instagram.svg" alt="Instagram" height="30" width="40" />
  </a>
  <a href="https://wa.me/923087655076" target="blank">
    <img src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/whatsapp.svg" alt="WhatsApp" height="30" width="40" />
  </a>
  <a href="https://www.tiktok.com/@noormustafa4556" target="blank">
    <img src="https://cdn-icons-png.flaticon.com/512/3046/3046122.png" alt="TikTok" height="30" width="30" />
  </a>
</p>

- 📍 **Location:** Bahawalpur, Punjab, Pakistan

---

> _“Learning never stops. Every app I build makes me a better developer — one widget at a time.”_

---



## 📄 License

This project is licensed under the MIT License. See the `LICENSE` file for more details.

---

**Developed with ❤️ by Noor Mustafa**
