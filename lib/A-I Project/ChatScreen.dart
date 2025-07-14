import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart' as genai;
import 'package:flutter/cupertino.dart';
import 'ChatMessage.dart';
import 'Const.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final List<ChatMessage> _messages = [];

  genai.GenerativeModel? _model;
  genai.ChatSession? _chatSession;

  bool _isLoading = false;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _initializeChat();
  }

  Future<void> _initializeChat() async {
    if (GEMINI_API_KEY == 'YOUR_ACTUAL_API_KEY_HERE' ||
        GEMINI_API_KEY.isEmpty) {
      setState(() {
        _errorMessage = "Please provide a valid Gemini API key in Const.dart.";
      });
      return;
    }

    setState(() {
      _isLoading = true;
    });

    try {
      _model = genai.GenerativeModel(
        model: 'gemini-1.5-flash',
        apiKey: GEMINI_API_KEY,
      );
      _chatSession = _model?.startChat();
      _errorMessage = null;
    } catch (e) {
      setState(() {
        _errorMessage =
        "Failed to initialize Check API key and internet.";
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _sendMessage() async {
    final messageText = _textController.text.trim();
    if (messageText.isEmpty) return;

    if (_chatSession == null) {
      _addMessageToChat("Error: Chat session is not initialized.", false);
      await _initializeChat();
      return;
    }

    _textController.clear();
    _addMessageToChat(messageText, true);

    setState(() {
      _isLoading = true;
    });

    _scrollToBottom();

    try {
      final response = await _chatSession!.sendMessage(
        genai.Content.text(messageText),
      );
      final botResponseText = response.text ?? "Bot sent an empty response.";
      _addMessageToChat(botResponseText, false);
    } catch (e) {
      _addMessageToChat("Error: ${e.toString()}", false);
    } finally {
      setState(() {
        _isLoading = false;
      });
      _scrollToBottom();
    }
  }

  void _addMessageToChat(String text, bool isUser) {
    setState(() {
      _messages.add(ChatMessage(text: text, isUserMessage: isUser));
    });
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_errorMessage != null && _chatSession == null) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('ChatBot Error'),
          backgroundColor: CupertinoColors.systemRed,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.error_outline, color: Colors.red, size: 50),
              SizedBox(height: 10),
              Text(
                _errorMessage!,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.red, fontSize: 16),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _initializeChat,
                child: const Text("Retry"),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter ChatBot",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
        backgroundColor: CupertinoColors.activeGreen,
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Haadi.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: _scrollController,
                padding: const EdgeInsets.all(8),
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  final message = _messages[index];
                  return ChatBubble(
                    text: message.text,
                    isUserMessage: message.isUserMessage,
                    timestamp: message.timestamp,
                  );
                },
              ),
            ),
            if (_isLoading && _chatSession != null)
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: LinearProgressIndicator(),
              ),
            const Divider(height: 1),
            SafeArea(
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor.withOpacity(0.9),
                ),
                child: _buildTextComposer(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextComposer() {
    bool canSend = !_isLoading && _chatSession != null;
    String hintText = _isLoading
        ? (_chatSession == null
        ? 'Initializing chat...'
        : 'Generating response...')
        : (_chatSession == null
        ? 'Initialization failed.'
        : 'Send a message...');

    return IconTheme(
      data: IconThemeData(color: Theme.of(context).colorScheme.primary),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: _textController,
                onSubmitted: canSend ? (_) => _sendMessage() : null,
                decoration: InputDecoration.collapsed(hintText: hintText),
                enabled: canSend,
                minLines: 1,
                maxLines: 5,
                style: const TextStyle(color: Colors.black),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.send),
              onPressed: canSend ? _sendMessage : null,
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _textController.dispose();
    _scrollController.dispose();
    super.dispose();
  }
}

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isUserMessage;
  final DateTime timestamp;

  const ChatBubble({
    super.key,
    required this.text,
    required this.isUserMessage,
    required this.timestamp,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isUserMessage ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        constraints:
        BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.75),
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
        decoration: BoxDecoration(
          color: isUserMessage ? Colors.green[700] : Colors.black87,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(18),
            topRight: const Radius.circular(18),
            bottomLeft: Radius.circular(isUserMessage ? 18 : 4),
            bottomRight: Radius.circular(isUserMessage ? 4 : 18),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.07),
              spreadRadius: 1,
              blurRadius: 3,
            ),
          ],
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15.5,
          ),
        ),
      ),
    );
  }
}
