import 'package:flutter/material.dart';
import 'package:project/model/constant.dart';

class BuildingTable extends StatefulWidget {
  final List<int> selectedRows;

  const BuildingTable({Key? key, required this.selectedRows}) : super(key: key);

  @override
  _BuildingTableState createState() => _BuildingTableState();
}

class _BuildingTableState extends State<BuildingTable> {
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
            DataColumn(label: Row(children:[ Text('BUilding Name',style: CustomStyle,),Icon(Icons.arrow_downward)],)),
              DataColumn(label: Row(children:[ Text('Street Address',style: CustomStyle,),Icon(Icons.arrow_downward)],)),
              DataColumn(label: Row(children:[ Text('City',style: CustomStyle,),Icon(Icons.arrow_downward)],)),
              DataColumn(label: Row(children:[ Text('Create Date',style: CustomStyle,),Icon(Icons.arrow_downward)],)),
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
                   DataCell(Text('Building No1')),
                  DataCell(Text('Main Street 1')),
                  DataCell(Text('London')),
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
                 DataCell(Text('Building No2')),
                  DataCell(Text('Main Street 2')),
                  DataCell(Text('London')),
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
                 DataCell(Text('Building No3')),
                  DataCell(Text('Main Street 3')),
                  DataCell(Text('London')),
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
                DataCell(Text('Building No4')),
                  DataCell(Text('Main Street 4')),
                  DataCell(Text('London')),
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
               DataCell(Text('Building No5')),
                  DataCell(Text('Main Street 5')),
                  DataCell(Text('London')),
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
                DataCell(Text('Building No6')),
                  DataCell(Text('Main Street 6')),
                  DataCell(Text('London')),
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
