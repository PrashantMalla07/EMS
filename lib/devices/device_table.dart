import 'package:flutter/material.dart';
import 'package:project/model/constant.dart';

class DeviceTable extends StatefulWidget {
  final List<int> selectedRows;

  const DeviceTable({Key? key, required this.selectedRows}) : super(key: key);

  @override
  _DeviceTableState createState() => _DeviceTableState();
}

class _DeviceTableState extends State<DeviceTable> {
  Set<int> _selectedIndices = {}; 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white, 
          borderRadius: BorderRadius.circular(10), 
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 5, 
              spreadRadius: 2, 
              offset: Offset(2, 2),
            ),
          ],
        ),
        child: DataTable(
          columns: [
            DataColumn(label: Row(children:[ Text('Device Name',style: CustomStyle,),Icon(Icons.arrow_downward)],)),
              DataColumn(label: Row(children:[ Text('Device Type',style: CustomStyle,),Icon(Icons.arrow_downward)],)),
              DataColumn(label: Row(children:[ Text('Signal Strength',style: CustomStyle,),Icon(Icons.arrow_downward)],)),
              DataColumn(label: Row(children:[ Text('Connection Date',style: CustomStyle,),Icon(Icons.arrow_downward)],)),
              DataColumn(label: Row(children:[ Text('Status ',style: CustomStyle,),Icon(Icons.arrow_downward)],)),
              DataColumn(label: Row(children:[ Text('Action',style: CustomStyle,),Icon(Icons.arrow_downward)],)),
          ],
          rows: [
            DataRow(
              selected: _selectedIndices.contains(0),
              onSelectChanged: (bool? selected) {
                if (selected != null) {
                  setState(() {
                    if (selected) {
                      _selectedIndices.add(0);
                    } else {
                      _selectedIndices.remove(0);
                    }
                  });
                }
              },
              cells: [
                   DataCell(Text('PAC2200 Meter')),
                  DataCell(Text('Power meters')),
                  DataCell(Text('Good ')),
                  DataCell(Text('2021-11-08')),
                  DataCell(Text('Active')),
                  DataCell(Text(':')),
                
              ],
            ),
            DataRow(
              selected: _selectedIndices.contains(1),
              onSelectChanged: (bool? selected) {
                if (selected != null) {
                  setState(() {
                    if (selected) {
                      _selectedIndices.add(1);
                    } else {
                      _selectedIndices.remove(1);
                    }
                  });
                }
              },
              cells: [
                 DataCell(Text('PAC3100 Meter')),
                  DataCell(Text('Power meters')),
                  DataCell(Text('Good')),
                  DataCell(Text('2021-11-01')),
                  DataCell(Text('Active')),
                  DataCell(Text(':')),
                
              ],
            ),
            DataRow(
              selected: _selectedIndices.contains(1),
              onSelectChanged: (bool? selected) {
                if (selected != null) {
                  setState(() {
                    if (selected) {
                      _selectedIndices.add(1);
                    } else {
                      _selectedIndices.remove(1);
                    }
                  });
                }
              },
              cells: [
                 DataCell(Text('PAC4200 Meter')),
                  DataCell(Text('Power quality meters')),
                  DataCell(Text('Weak ')),
                  DataCell(Text('2021-11-03')),
                  DataCell(Text('Active')),
                  DataCell(Text(':')),
              ],
            ),
            DataRow(
              selected: _selectedIndices.contains(1),
              onSelectChanged: (bool? selected) {
                if (selected != null) {
                  setState(() {
                    if (selected) {
                      _selectedIndices.add(1);
                    } else {
                      _selectedIndices.remove(1);
                    }
                  });
                }
              },
              cells: [
                DataCell(Text('PAC9410 Meter')),
                  DataCell(Text('Power quality meters')),
                  DataCell(Text('Good ')),
                  DataCell(Text('2021-11-04')),
                  DataCell(Text('Inactive')),
                  DataCell(Text(':')),
                
              ],
            ),
            DataRow(
              selected: _selectedIndices.contains(1),
              onSelectChanged: (bool? selected) {
                if (selected != null) {
                  setState(() {
                    if (selected) {
                      _selectedIndices.add(1);
                    } else {
                      _selectedIndices.remove(1);
                    }
                  });
                }
              },
              cells: [
               DataCell(Text('PAC9810 Meter')),
                  DataCell(Text('Power quality meters')),
                  DataCell(Text('weak')),
                  DataCell(Text('2021-11-05')),
                  DataCell(Text('Inactive')),
                  DataCell(Text(':')),
              ],
            ),
            DataRow(
              selected: _selectedIndices.contains(1),
              onSelectChanged: (bool? selected) {
                if (selected != null) {
                  setState(() {
                    if (selected) {
                      _selectedIndices.add(1);
                    } else {
                      _selectedIndices.remove(1);
                    }
                  });
                }
              },
              cells: [
                DataCell(Text('PAC9810 Meter')),
                  DataCell(Text('Power quality meters')),
                  DataCell(Text('weak')),
                  DataCell(Text('2021-11-05')),
                  DataCell(Text('Inactive')),
                  DataCell(Text(':')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
