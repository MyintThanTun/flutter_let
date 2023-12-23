import 'package:flutter/material.dart';
import 'package:training_flutter_dart/Layouts/container_demo.dart';
import 'package:training_flutter_dart/Layouts/expanded_demo.dart';
import 'package:training_flutter_dart/Layouts/fractionally_sized_box_demo.dart';
import 'package:training_flutter_dart/Layouts/row_col_demo.dart';
import 'package:training_flutter_dart/Layouts/stack_demo.dart';
import 'package:training_flutter_dart/Layouts/wrap_demo.dart';
import 'package:training_flutter_dart/Lists/expansion_tile_demo.dart';
import 'package:training_flutter_dart/Lists/gird_View_demo.dart';
import 'package:training_flutter_dart/Lists/listView_demo.dart';
import 'package:training_flutter_dart/Lists/list_tile_demo.dart';
import 'package:training_flutter_dart/Lists/reorderable_list_demo.dart';
import 'package:training_flutter_dart/Lists/swipe_demo.dart';
import 'package:training_flutter_dart/widgets/button_demo.dart';
import 'package:training_flutter_dart/widgets/card_demo.dart';
import 'package:training_flutter_dart/widgets/dropDown_button_demo.dart';
import 'package:training_flutter_dart/widgets/gradient_demo.dart';
import 'package:training_flutter_dart/widgets/icon_demo.dart';
import 'package:training_flutter_dart/preview.dart';
import 'package:training_flutter_dart/widgets/image_demo.dart';
import 'package:training_flutter_dart/widgets/stateful_widgets_demo.dart';
import 'package:training_flutter_dart/widgets/text_demo.dart';
import 'package:training_flutter_dart/widgets/textfield_demo.dart';
import 'package:training_flutter_dart/widgets/textformfield_demo.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    Widget buildSubMenuItem(index,title,ui,path){
      return ListTile(
        hoverColor: Colors.transparent,//cursor ထောက်လိုက်ရင် အ‌ရောင်မပေါါအောင်လုပ် တာ
        title: Text(title),
        leading: Text(index),
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
              builder: (context)=> PreviewScreen(
                  title: title,
                  ui: ui,
                  path: path
            )
          )
        ),
      );
    }
    Widget buildMenuItem(icon,title,subMenuItems){
      return Card(
        child: ExpansionTile(//arrow လေးနဲ့ ဖီချတာ
          shape: Border.all(color: Colors.transparent),
          title: Text(title),
          children: subMenuItems,
        ),
      );
    }
    List<Widget> widgetItems = [
      buildSubMenuItem('1', 'Icon',const IconDemo(),'lib/widgets/icon_demo.dart'),
      buildSubMenuItem('2', 'Text',const TextDemo(),'lib/widgets/text_demo.dart'),
      buildSubMenuItem('3', 'TextField',const TextFieldDemo(),'lib/widgets/textfield_demo.dart'),
      buildSubMenuItem('4', 'TextFormField',const TextFormFieldDemo(),'lib/widgets/textformfield_demo.dart'),
      buildSubMenuItem('5', 'Image',const ImageDemo(),'lib/widgets/image_demo.dart'),
      buildSubMenuItem('6', 'Card,Inkwell',const CardDemo(),'lib/widgets/card_demo.dart'),
      buildSubMenuItem('7', 'Gradient',const GradientDemo(),'lib/widgets/gradient_demo.dart'),
      buildSubMenuItem('8', 'Button', const ButtonDemo(), 'lib/widgets/button_demo.dart'),
      buildSubMenuItem('9', 'Dropdown Button',const DropDownButtonDemo(),'lib/widgets/dropDown_button_demo.dart'),
      buildSubMenuItem('10', 'Other Stateful Widgets',const StateFulWidgetsDemo(),'lib/widgets/stateful_widgets_demo.dart')
    ];
    List<Widget> layoutItems = [
        buildSubMenuItem('1', 'Container', const ContainerDemo(), 'lib/Layouts/container_demo.dart'),
        buildSubMenuItem('2', 'Row & Column', const RowColumnDemo(), 'lib/Layouts/row_col_demo.dart'),
        buildSubMenuItem('3', 'Wrap', const WrapDemo(), 'lib/Layouts/wrap_demo.dart'),
        buildSubMenuItem('4', 'Fractionally Sized Box', const FractionallySizedBoxDemo(), 'lib/Layouts/fractionally_sized_box_demo.dart'),
        buildSubMenuItem('5', 'Expanded', const ExpandedDemo(), 'lib/Layouts/expanded_demo.dart'),
        buildSubMenuItem('6', 'Stack', const StackDemo(), 'lib/Layouts/stack_demo.dart'),
    ];
    List<Widget> listItems =[
       buildSubMenuItem('1', 'ListTile', const ListTileDemo(), 'lib/Lists/list_tile_demo.dart'),
       buildSubMenuItem('2', 'ListView', const ListViewDemo(), 'lib/Lists/listView_demo.dart'),
       buildSubMenuItem('3', 'GridView', const GirdViewDemo(), 'lib/Lists/grid_View_demo.dart'),
       buildSubMenuItem('4', 'ExpansionTile', const ExpansionTileDemo(), 'lib/Lists/expansion_tile_demo.dart'),
       buildSubMenuItem('5', 'Swipe to Dismiss', const SwipeDemo(), 'lib/Lists/swipe_demo.dart'),
       buildSubMenuItem('6', 'Reorderable List Demo', const ReorderableListDemo(), 'lib/Lists/reorderable_list_demo.dart'),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.yellow,
        title: const Text('Flutter Widgets Catalog'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(// scroll loate lo ya aung(warp with widget and then write singlechild..)
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              buildMenuItem(Icons.widgets, 'Widgets', widgetItems),
              buildMenuItem(Icons.dashboard, "Layouts", layoutItems),
              buildMenuItem(Icons.list, 'Lists', listItems),
           ],
          ),
        ),
      ),
    );
  }
}
