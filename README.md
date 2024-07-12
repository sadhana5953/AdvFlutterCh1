#  Switch Dark Theme to Light Theme
<img src="https://github.com/sadhana5953/AdvFlutterCh1/assets/148869257/d9dab140-8579-4a28-9fbd-5b55bee2b84e" height=22% width=35%>
<img src="https://github.com/sadhana5953/AdvFlutterCh1/assets/148869257/883e2d97-93f1-48af-9059-cc53199499e9" height=22% width=35%>

# Registration Page using Stepper Widget
<img src="https://github.com/sadhana5953/AdvFlutterCh1/assets/148869257/af85ca3e-a79b-4c8d-89cc-a7c2cc18e432" height=22% width=35%>
<img src="https://github.com/sadhana5953/AdvFlutterCh1/assets/148869257/eca1c156-581e-4e32-9e6d-58616569a031" height=22% width=35%>

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

# Provider & Change Theme using Provider
<img src="https://github.com/sadhana5953/AdvFlutterCh1/assets/148869257/e4106438-4e36-4a59-b61a-fabf2e4dad82" height=22% width=35%>
<img src="https://github.com/sadhana5953/AdvFlutterCh1/assets/148869257/00297466-51cf-456a-9fd5-72e437531931" height=22% width=35%>

[theme.webm](https://github.com/sadhana5953/AdvFlutterCh1/assets/148869257/35da73dc-c9bc-409b-8eb2-03a420d2032f)

