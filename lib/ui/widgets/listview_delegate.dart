// Copyright (c) 2013, Google Inc. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/**
 * This class is the list of callbacks methods needed for `ListView`.
 */

library spark.ui.widgets.listview_delegate;

import 'dart:html';

import 'listview.dart';
import 'listview_cell.dart';

abstract class ListViewDelegate {

  /**
   * The implementation of this method should return the number of items in the
   * list. `view` is the list the callback is called from.
   */
  int listViewNumberOfRows(ListView view);

  /**
   * The implementation of this method should return a cell to display the item
   * at the given row `rowIndex`. See [ListViewCell].
   * `view` is the list the callback is called from.
   */
  ListViewCell listViewCellForRow(ListView view, int rowIndex);

  /**
   * The implementation of this method should return the height in pixels
   * of the cell at the given row `rowIndex`.
   * `view` is the list the callback is called from.
   */
  int listViewHeightForRow(ListView view, int rowIndex);

  /**
   * The implementation of this method will be run when the cell at the given
   * index `rowIndex` is clicked.
   * `view` is the list the callback is called from.
   */
  void listViewSelectedChanged(ListView view,
                               List<int> rowIndexes,
                               Event event);

  /**
   * The implementation of this method will be run when the cell at the given
   * index `rowIndex` is double-clicked.
   * `view` is the list the callback is called from.
   */
  void listViewDoubleClicked(ListView view, List<int> rowIndexes, Event event);

  /**
   * This method is called on dragenter.
   * Return 'copy', 'move', 'link' or 'none'.
   * It will adjust the visual of the mouse cursor when the item is
   * dragged over the treeview.
   */
  String listViewDropEffect(ListView view);

  /**
   * This method is called when the user confirmed dropped an item on the list.
   * rowIndex is the location where it's been dropped. The value is -1
   * if it's not been dropped on a specific cell.
   */
  void listViewDrop(ListView view, int rowIndex, DataTransfer dataTransfer);

  /**
   * This method is called regularly when the user is dragging an item over
   * the list.
   */
  void listViewDragOver(ListView view, MouseEvent event);

  /**
   * This method is called when the mouse cursor enters the list visual area
   * while the user is dragging an item.
   */
  void listViewDragEnter(ListView view);

  /**
   * This method is called when the mouse cursor leaves the list visual area
   * while the user is dragging an item.
   */
  void listViewDragLeave(ListView view);
}
