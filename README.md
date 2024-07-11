#  Switch Dark Theme to Light Theme
<img src="https://github.com/sadhana5953/AdvFlutterCh1/assets/148869257/d9dab140-8579-4a28-9fbd-5b55bee2b84e" height=32% width=22%>
<img src="https://github.com/sadhana5953/AdvFlutterCh1/assets/148869257/883e2d97-93f1-48af-9059-cc53199499e9" height=32% width=22%>

# Registration Page using Stepper Widget
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
[Uploading provider.drawio…]()<mxfile host="app.diagrams.net" modified="2024-07-11T05:51:26.252Z" agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36" etag="NhTHPXqZQOj9zcl2MSMe" version="24.6.4" type="google">
  <diagram name="Page-1" id="yHKrIRSLbq-JWvERPJzD">
    <mxGraphModel dx="1050" dy="522" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="850" pageHeight="1100" math="0" shadow="0">
      <root>
        <mxCell id="0" />
        <mxCell id="1" parent="0" />
        <mxCell id="9plpH3UYGeZr24iRll5r-1" value="&lt;font style=&quot;font-size: 16px;&quot;&gt;Provider&lt;/font&gt;" style="rounded=1;whiteSpace=wrap;html=1;align=center;fillColor=#d5e8d4;strokeColor=#82b366;" vertex="1" parent="1">
          <mxGeometry x="350" y="50" width="140" height="40" as="geometry" />
        </mxCell>
        <mxCell id="9plpH3UYGeZr24iRll5r-2" value="" style="endArrow=none;html=1;rounded=0;exitX=0.5;exitY=0;exitDx=0;exitDy=0;" edge="1" parent="1" source="9plpH3UYGeZr24iRll5r-3">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="420" y="110" as="sourcePoint" />
            <mxPoint x="419.5" y="90" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="9plpH3UYGeZr24iRll5r-3" value="&lt;span style=&quot;font-size: 16px;&quot;&gt;Material App&lt;/span&gt;" style="rounded=1;whiteSpace=wrap;html=1;align=center;fillColor=#d5e8d4;strokeColor=#82b366;" vertex="1" parent="1">
          <mxGeometry x="350" y="119" width="140" height="40" as="geometry" />
        </mxCell>
        <mxCell id="9plpH3UYGeZr24iRll5r-4" value="" style="endArrow=none;html=1;rounded=0;" edge="1" parent="1" source="9plpH3UYGeZr24iRll5r-7">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="351" y="200" as="sourcePoint" />
            <mxPoint x="391" y="160" as="targetPoint" />
            <Array as="points">
              <mxPoint x="391" y="200" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="9plpH3UYGeZr24iRll5r-5" value="" style="endArrow=none;html=1;rounded=0;" edge="1" parent="1" source="9plpH3UYGeZr24iRll5r-6">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="490" y="200" as="sourcePoint" />
            <mxPoint x="450" y="160" as="targetPoint" />
            <Array as="points">
              <mxPoint x="450" y="200" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="9plpH3UYGeZr24iRll5r-6" value="&lt;font style=&quot;font-size: 16px;&quot;&gt;Screen - 2&lt;/font&gt;" style="rounded=1;whiteSpace=wrap;html=1;align=center;fillColor=#d5e8d4;strokeColor=#82b366;" vertex="1" parent="1">
          <mxGeometry x="513" y="181" width="140" height="40" as="geometry" />
        </mxCell>
        <mxCell id="9plpH3UYGeZr24iRll5r-7" value="&lt;font style=&quot;font-size: 16px;&quot;&gt;Screen - 1&lt;/font&gt;" style="rounded=1;whiteSpace=wrap;html=1;align=center;fillColor=#d5e8d4;strokeColor=#82b366;" vertex="1" parent="1">
          <mxGeometry x="186" y="180" width="140" height="40" as="geometry" />
        </mxCell>
        <mxCell id="9plpH3UYGeZr24iRll5r-8" value="" style="endArrow=none;html=1;rounded=0;" edge="1" parent="1">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="248" y="250" as="sourcePoint" />
            <mxPoint x="248" y="220" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="9plpH3UYGeZr24iRll5r-9" value="&lt;span style=&quot;font-size: 16px;&quot;&gt;Scaffold&lt;/span&gt;" style="rounded=1;whiteSpace=wrap;html=1;align=center;fillColor=#d5e8d4;strokeColor=#82b366;" vertex="1" parent="1">
          <mxGeometry x="177" y="250" width="140" height="40" as="geometry" />
        </mxCell>
        <mxCell id="9plpH3UYGeZr24iRll5r-10" value="&lt;font style=&quot;font-size: 16px;&quot;&gt;Body&lt;/font&gt;" style="rounded=1;whiteSpace=wrap;html=1;align=center;fillColor=#d5e8d4;strokeColor=#82b366;" vertex="1" parent="1">
          <mxGeometry x="94" y="320" width="140" height="40" as="geometry" />
        </mxCell>
        <mxCell id="9plpH3UYGeZr24iRll5r-11" value="&lt;font style=&quot;font-size: 16px;&quot;&gt;FloatingAction&lt;/font&gt;&lt;span style=&quot;font-size: 16px; background-color: initial;&quot;&gt;Button&lt;/span&gt;" style="rounded=1;whiteSpace=wrap;html=1;align=center;fillColor=#d5e8d4;strokeColor=#82b366;" vertex="1" parent="1">
          <mxGeometry x="256" y="320" width="170" height="40" as="geometry" />
        </mxCell>
        <mxCell id="9plpH3UYGeZr24iRll5r-12" value="" style="endArrow=none;html=1;rounded=0;" edge="1" parent="1">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="200" y="320" as="sourcePoint" />
            <mxPoint x="200" y="290" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="9plpH3UYGeZr24iRll5r-13" value="" style="endArrow=none;html=1;rounded=0;" edge="1" parent="1">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="285" y="321" as="sourcePoint" />
            <mxPoint x="285" y="291" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="9plpH3UYGeZr24iRll5r-14" value="" style="endArrow=none;html=1;rounded=0;" edge="1" parent="1">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="581" y="392" as="sourcePoint" />
            <mxPoint x="581" y="362" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="9plpH3UYGeZr24iRll5r-15" value="&lt;font style=&quot;font-size: 16px;&quot;&gt;Row&lt;/font&gt;" style="rounded=1;whiteSpace=wrap;html=1;align=center;fillColor=#d5e8d4;strokeColor=#82b366;" vertex="1" parent="1">
          <mxGeometry x="517" y="393" width="140" height="40" as="geometry" />
        </mxCell>
        <mxCell id="9plpH3UYGeZr24iRll5r-16" value="&lt;font style=&quot;font-size: 16px;&quot;&gt;Text&lt;/font&gt;" style="rounded=1;whiteSpace=wrap;html=1;align=center;fillColor=#d5e8d4;strokeColor=#82b366;" vertex="1" parent="1">
          <mxGeometry x="417" y="463" width="140" height="40" as="geometry" />
        </mxCell>
        <mxCell id="9plpH3UYGeZr24iRll5r-17" value="&lt;font style=&quot;font-size: 16px;&quot;&gt;Consumer&lt;/font&gt;" style="rounded=1;whiteSpace=wrap;html=1;align=center;fillColor=#fff2cc;strokeColor=#d6b656;" vertex="1" parent="1">
          <mxGeometry x="574" y="463" width="140" height="40" as="geometry" />
        </mxCell>
        <mxCell id="9plpH3UYGeZr24iRll5r-18" value="" style="endArrow=none;html=1;rounded=0;" edge="1" parent="1">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="519" y="463" as="sourcePoint" />
            <mxPoint x="519" y="433" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="9plpH3UYGeZr24iRll5r-19" value="" style="endArrow=none;html=1;rounded=0;" edge="1" parent="1">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="605" y="464" as="sourcePoint" />
            <mxPoint x="605" y="434" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="9plpH3UYGeZr24iRll5r-20" value="Value" style="rounded=1;whiteSpace=wrap;html=1;fillColor=#f8cecc;strokeColor=#b85450;fontSize=14;" vertex="1" parent="1">
          <mxGeometry x="469" y="30" width="80" height="30" as="geometry" />
        </mxCell>
        <mxCell id="9plpH3UYGeZr24iRll5r-21" value="&lt;font style=&quot;font-size: 16px;&quot;&gt;Consumer&lt;/font&gt;" style="rounded=1;whiteSpace=wrap;html=1;align=center;fillColor=#fff2cc;strokeColor=#d6b656;" vertex="1" parent="1">
          <mxGeometry x="110" y="390" width="122" height="40" as="geometry" />
        </mxCell>
        <mxCell id="9plpH3UYGeZr24iRll5r-22" value="&lt;font style=&quot;font-size: 16px;&quot;&gt;Value++&lt;/font&gt;" style="rounded=1;whiteSpace=wrap;html=1;align=center;fillColor=#e1d5e7;strokeColor=#9673a6;" vertex="1" parent="1">
          <mxGeometry x="254" y="390" width="106" height="40" as="geometry" />
        </mxCell>
        <mxCell id="9plpH3UYGeZr24iRll5r-23" value="" style="endArrow=none;html=1;rounded=0;" edge="1" parent="1">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="164" y="390" as="sourcePoint" />
            <mxPoint x="164" y="360" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="9plpH3UYGeZr24iRll5r-24" value="" style="endArrow=none;html=1;rounded=0;" edge="1" parent="1">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="300" y="391" as="sourcePoint" />
            <mxPoint x="300" y="361" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="9plpH3UYGeZr24iRll5r-25" value="&lt;font style=&quot;font-size: 16px;&quot;&gt;Text&lt;/font&gt;" style="rounded=1;whiteSpace=wrap;html=1;align=center;fillColor=#d5e8d4;strokeColor=#82b366;" vertex="1" parent="1">
          <mxGeometry x="114" y="460" width="119" height="40" as="geometry" />
        </mxCell>
        <mxCell id="9plpH3UYGeZr24iRll5r-26" value="" style="endArrow=none;html=1;rounded=0;" edge="1" parent="1">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="172" y="461" as="sourcePoint" />
            <mxPoint x="172" y="431" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="9plpH3UYGeZr24iRll5r-27" value="" style="endArrow=none;html=1;rounded=0;" edge="1" parent="1">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="584" y="251" as="sourcePoint" />
            <mxPoint x="584" y="221" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="9plpH3UYGeZr24iRll5r-28" value="&lt;span style=&quot;font-size: 16px;&quot;&gt;Scaffold&lt;/span&gt;" style="rounded=1;whiteSpace=wrap;html=1;align=center;fillColor=#d5e8d4;strokeColor=#82b366;" vertex="1" parent="1">
          <mxGeometry x="514" y="251" width="140" height="40" as="geometry" />
        </mxCell>
        <mxCell id="9plpH3UYGeZr24iRll5r-29" value="" style="endArrow=none;html=1;rounded=0;" edge="1" parent="1">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="579" y="321" as="sourcePoint" />
            <mxPoint x="579" y="291" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="9plpH3UYGeZr24iRll5r-30" value="&lt;font style=&quot;font-size: 16px;&quot;&gt;Body&lt;/font&gt;" style="rounded=1;whiteSpace=wrap;html=1;align=center;fillColor=#d5e8d4;strokeColor=#82b366;" vertex="1" parent="1">
          <mxGeometry x="515" y="322" width="140" height="40" as="geometry" />
        </mxCell>
        <mxCell id="9plpH3UYGeZr24iRll5r-31" value="" style="endArrow=none;html=1;rounded=0;" edge="1" parent="1">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="641" y="533" as="sourcePoint" />
            <mxPoint x="641" y="503" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="9plpH3UYGeZr24iRll5r-32" value="&lt;font style=&quot;font-size: 16px;&quot;&gt;Text&lt;/font&gt;" style="rounded=1;whiteSpace=wrap;html=1;align=center;fillColor=#d5e8d4;strokeColor=#82b366;" vertex="1" parent="1">
          <mxGeometry x="577" y="534" width="140" height="40" as="geometry" />
        </mxCell>
        <mxCell id="9plpH3UYGeZr24iRll5r-33" value="" style="curved=1;endArrow=classic;html=1;rounded=0;entryX=0.75;entryY=0;entryDx=0;entryDy=0;" edge="1" parent="1" target="9plpH3UYGeZr24iRll5r-17">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="550" y="50" as="sourcePoint" />
            <mxPoint x="670" y="427" as="targetPoint" />
            <Array as="points">
              <mxPoint x="690" y="110" />
              <mxPoint x="717" y="410" />
            </Array>
          </mxGeometry>
        </mxCell>
      </root>
    </mxGraphModel>
  </diagram>
</mxfile>


