#  Switch Dark Theme to Light Theme
<img src="https://github.com/sadhana5953/AdvFlutterCh1/assets/148869257/d9dab140-8579-4a28-9fbd-5b55bee2b84e" height=25% width=25%>
<img src="https://github.com/sadhana5953/AdvFlutterCh1/assets/148869257/883e2d97-93f1-48af-9059-cc53199499e9" height=25% width=25%>

# Registration Page using Stepper Widget
## Stepper Widget 

- This is the main widget that manages the steps and their navigation. It takes a list of Step objects and manages the current step.
#### steps Method: 
- Returns a list of Step widgets, each representing a different part of the registration process. Each Step has a title and content.
- onStepTapped: Updates the current step when a step is tapped.
- TextFormField: Used for user input.
- Padding: Adds padding around the Stepper widget for better spacing.

<img src="https://github.com/sadhana5953/AdvFlutterCh1/assets/148869257/af85ca3e-a79b-4c8d-89cc-a7c2cc18e432" height=25% width=25%>
<img src="https://github.com/sadhana5953/AdvFlutterCh1/assets/148869257/eca1c156-581e-4e32-9e6d-58616569a031" height=25% width=25%>

## State
- A state is information that can be read when the widget is built and might change or modified over a lifetime of the app.

- If you want to change your widget, you need to update the state object, which can be done by using the setState() function available for Stateful widgets.

## State Maangement
- The state management is one of the most popular and necessary processes in the lifecycle of an application.

- A state is information that can be read when the widget is built and might change or modified over a lifetime of the app.

- If you want to change your widget, you need to update the state object, which can be done by using the setState() function available for Stateful widgets. The setState() function allows us to set the properties of the state object that triggers a redraw of the UI.

## ChangeNotifer
- ChangeNotifier is a simple class, which provides change notification to its listeners.
- It is easy to understand, implement, and optimized for a small number of listeners.
- It is used for the listener to observe a model for changes.
- In this, we only use the notifyListener() method to inform the listeners.

### Example:
```bash
import 'package:flutter/material.dart';  
  
class Counter with ChangeNotifier {  
  int _counter;  
  
  Counter(this._counter);  
  
  getCounter() => _counter;  
  setCounter(int counter) => _counter = counter;  
  
  void increment() {  
    _counter++;  
    notifyListeners();  
  }  
  
  void decrement() {  
    _counter--;  
    notifyListeners();  
  }  
}  
````
## ChangeNotiferProvider
- ChangeNotifierProvider is the widget that provides an instance of a ChangeNotifier to its descendants.
- It comes from the provider package.
- The following code snippets help to understand the concept of ChangeNotifierProvider.

### Example:
```bash
void main() {  
  runApp(  
    MultiProvider(  
      providers: [  
        ChangeNotifierProvider(builder: (context) => Counter()),  
        Provider(builder: (context) => SomeOtherClass()),  
      ],  
      child: MyApp(),  
    ),  
  );  
}  
````

## Consumer
- It is a type of provider that does not do any fancy work.
- It just calls the provider in a new widget and delegates its build implementation to the builder.
- The following code explains it more clearly.

### Example: 
```bash
return Consumer<Counter>(  
  builder: (context, count, child) {  
    return Text("Total price: ${count.total}");  
  },  
);  
````
# Provider Tree
<img src = "https://github.com/user-attachments/assets/40f591b1-452f-4683-84ff-ba5e19ee5f81" height = 35%  width = 40%>

# Provider & Change Theme using Provider
- This class extends ChangeNotifier and manages the theme state.
- toggleTheme method switches between light and dark themes and calls notifyListeners to update the UI.

  

```dart

import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;

  ThemeMode get themeMode => _themeMode;

  bool get isDarkMode => _themeMode == ThemeMode.dark;

  void toggleTheme(bool isOn) {
    _themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}


```

<img src="https://github.com/sadhana5953/AdvFlutterCh1/assets/148869257/e4106438-4e36-4a59-b61a-fabf2e4dad82" height=25% width=25%>
<img src="https://github.com/sadhana5953/AdvFlutterCh1/assets/148869257/00297466-51cf-456a-9fd5-72e437531931" height=25% width=25%>

[theme.webm](https://github.com/sadhana5953/AdvFlutterCh1/assets/148869257/35da73dc-c9bc-409b-8eb2-03a420d2032f)

# Quotes Data Solving with Provider
- Quote Model: Represents the structure of a - quote with id, text, and author.

- QuotesProvider: Manages the list of quotes and provides methods for adding, editing, and deleting quotes. Uses notifyListeners to update the UI when changes occur.

- main.dart: Wraps the app with ChangeNotifierProvider to provide the QuotesProvider to the widget tree.

```dart

class Quote {
  String id;
  String text;
  String author;

  Quote({
    required this.id,
    required this.text,
    required this.author,
  });
}


```

<img src="https://github.com/user-attachments/assets/8914e761-d142-4abe-bc73-bff599ba0356" height=25% width=25%>
<img src="https://github.com/user-attachments/assets/bc4c3d20-80be-446b-a4c2-eddfee8ef9d4" height=25% width=25%>

https://github.com/user-attachments/assets/3eb8f16f-e555-41ad-8fd2-3d9f6d109df7


# One Time Intro Screen in Flutter 
<img src="https://github.com/user-attachments/assets/4f20fce9-c158-4c64-8750-79692bcecc81" height=25% width=25%>
<img src="https://github.com/user-attachments/assets/139b2000-0760-43a7-bbce-09df42c3d9b4" height=25% width=25%>
<img src="https://github.com/user-attachments/assets/62cbecaf-c8af-4418-bd46-8b7756af20e9" height=25% width=25%>
<img src="https://github.com/user-attachments/assets/34b0d6c5-82d1-47cb-9454-1b1b5ff86a5b" height=25% width=25%>

# Contact Us Page With Interaction
- The provided URL is passed directly to the host platform for handling. The supported URL schemes therefore depend on the platform and installed apps.

<img src="https://github.com/user-attachments/assets/be9cd74b-11ac-487f-8ac7-9181db291b66" height=25% width=25%>

https://github.com/user-attachments/assets/883a8fe7-214f-427c-aed8-d190579333ce


