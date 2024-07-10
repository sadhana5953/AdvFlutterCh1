# Theme
<img src="https://github.com/sadhana5953/AdvFlutterCh1/assets/148869257/d9dab140-8579-4a28-9fbd-5b55bee2b84e" height=32% width=22%>
<img src="https://github.com/sadhana5953/AdvFlutterCh1/assets/148869257/883e2d97-93f1-48af-9059-cc53199499e9" height=32% width=22%>

# Stepper
<img src="https://github.com/sadhana5953/AdvFlutterCh1/assets/148869257/af85ca3e-a79b-4c8d-89cc-a7c2cc18e432" height=32% width=22%>
<img src="https://github.com/sadhana5953/AdvFlutterCh1/assets/148869257/eca1c156-581e-4e32-9e6d-58616569a031" height=32% width=22%>

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

## ChangeNotiferProvider
- ChangeNotifierProvider is the widget that provides an instance of a ChangeNotifier to its descendants.
- It comes from the provider package.
- The following code snippets help to understand the concept of ChangeNotifierProvider.

## Consumer
- It is a type of provider that does not do any fancy work.
- It just calls the provider in a new widget and delegates its build implementation to the builder.
- The following code explains it more clearly.
