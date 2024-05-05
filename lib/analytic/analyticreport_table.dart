import 'package:flutter/material.dart';
import 'package:project/model/constant.dart';

class AnalyticsReportTable extends StatefulWidget {
  final List<int> selectedRows;

  const AnalyticsReportTable({Key? key, required this.selectedRows}) : super(key: key);

  @override
  _AnalyticsReportTableState createState() => _AnalyticsReportTableState();
}

class _AnalyticsReportTableState extends State<AnalyticsReportTable> {
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
            DataColumn(label: Text('Date and Time', style: CustomStyle)),
            DataColumn(label: Text('Energy Meter (kWh)', style: CustomStyle)),
            DataColumn(label: Text('Total Energy Consumption (kWh)', style: CustomStyle)),
            DataColumn(label: Text('Total Voltage (V)', style: CustomStyle)),
            DataColumn(label: Text('Total Power (W)', style: CustomStyle)),
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
                DataCell(Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('2021-11-01'),
                    Text('04:00 PM'),
                  ],
                )),
                DataCell(Text('145.235')),
                DataCell(Text('225.70')),
                DataCell(Text('145.103')),
                DataCell(Text('90.50')),
                
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
                DataCell(Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('2021-11-01'),
                    Text('03:00 PM'),
                  ],
                )),
                DataCell(Text('144.574')),
                DataCell(Text('227.20')),
                DataCell(Text('0.52')),
                DataCell(Text('210.71')),
                
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
                DataCell(Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('2021-11-01'),
                    Text('02:00 PM'),
                  ],
                )),
                DataCell(Text('140.570')),
                DataCell(Text('237.20')),
                DataCell(Text('1.52')),
                DataCell(Text('320.71')),
                
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
                DataCell(Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('2021-11-01'),
                    Text('01:00 PM'),
                  ],
                )),
                DataCell(Text('180.34')),
                DataCell(Text('345.23')),
                DataCell(Text('0.67')),
                DataCell(Text('256.79')),
                
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
                DataCell(Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('2021-11-01'),
                    Text('12:00 PM'),
                  ],
                )),
                DataCell(Text('198.543')),
                DataCell(Text('209.89')),
                DataCell(Text('0.908')),
                DataCell(Text('278.89')),
                
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
                DataCell(Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('2021-11-01'),
                    Text('4:00 PM'),
                  ],
                )),
                DataCell(Text('123.456')),
                DataCell(Text('234.567')),
                DataCell(Text('0.345')),
                DataCell(Text('345.67')),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}
