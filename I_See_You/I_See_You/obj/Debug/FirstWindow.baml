   M S B A M L   `   `   `  ����D  @I_See_You, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:I_See_You	I_See_You  5   	       I_See_You.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:I_See_You     5   	   V RMaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=nullX TMaterialDesignThemes.MahApps, Version=0.0.10.0, Culture=neutral, PublicKeyToken=nullHmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes   5   	   -   5          � Title$  FirstWindow��5	   	   $	��350��6   $	��400��6*    � WindowStyle$
 None=�66   ���	#FF2D2D30 � 
ResizeMode$ NoResize=�5
   !    � WindowStartupLocation$ CenterScreen=�67    � 	Resources 5         ComboBoxTest2 �� 
TargetType �� Property �� Value �� 
TargetType	 d� 	IsChecked
 �� Path �� Mode �� RelativeSource � ColumnDefinitions ��Name �� CornerRadius F�Name J� IsHitTestVisible �� SelectionBoxItem �� SelectionBoxItemTemplate ��Name �� 
IsReadOnly �� 
IsReadOnly �� IsDropDownOpen � AllowsTransparency J� SnapsToDevicePixels � ActualWidth �� MaxDropDownHeight K� IsItemsHost �� Triggers��%�  &	        �� 5   
   " ��6&   .�5      ��  � �� 5      �� 5      " ��6&   .R�5      � .+�5      d� $��2��6+   |�.  	 6M   �� $
 IsDropDownOpen�$ TwoWay=� �� *TemplatedParent+��5   "   �� 5   &   .R�5   *   �  5   .   �� 5   2   $��5* �6C   �� 5   2   $��* �6C   .+�5   .   �� $ Border��65   $��2��6F   $ 5��6Z   ���	#FF7AC1FF
���   �$��1q�6�   �� 5   .   $��0��65   $ 5,0,0,5��6E   $��1q�6]   ���	#FF333337
���   �$��0,0,1,0q�6�   F� 5   .   $ Arrow��63   $��1��6B   
��� ���$��Center=�6a   $��Center=�6~   "����        � 	=  	= � z     	6�   5   +   5   '   5!      �� 5"      $��ContentSite��6/    .  #��z 6\   #��z 6�   #��z��6�   $��3q�6  �� 5#      $ PART_EditableTextBox��6&   $y�Hidden=�6D   # z 6X   � 5$      $��Popup��6$   $��Bottom=�61   #��z 6D    . |�.  $��Slide=�6�   .��5%   "   � $��DropDown��6(    . #��z 6S   #��z 6|   .+�5&   &   �� $ DropDownBorder��6-   ���	#FF2525266E   �� 5'   &    . .��5(   *   ��  . 65   5)   '   5*   #   5+      5,      5-      5/       50      52      53      .��56      .��5<      �  � RowDefinitions 5=   
   �� 5>      $	��40* �6   �� 5?      $
��120* �6   �� 5@      $	��40* �6   �� 5A      $	��60* �6   .+�5F   
   � $��0��6   .+�5G      ��  �� Orientation$ 
Horizontal=�6   $��Right=�62   .+�5H      �� $��40��6   $��40��6$   
������ 
������ $	��Top=�6d   ��6|   �� *CloseButtonCommand+.��5I      '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=null]]    Kind$  Power=�6.   ���	#FFCCCCCD6T   5J      5K      5L      � 5N   
   $��1��6    5O      �� 5P      $	��49* �6    �� 5Q      $	��83* �6    .+�5T      � $��0��6   .+�5U      �� $
��auto��6   $
��auto��6*   $��Center=�67   $��Center=�6R   $��	I See You��6o   ���	#FF7AC1FF$
��Bold"�6�   $��Dutch801 XBd BT)�6�   $��16(�6�   $��Italic$�6�   5W      � 5X      $��1��6   .+�5Y      �� $��54��6   $	��300��6(   $��Center=�5Z      $��Center=�67   $����The application aims to process the photos and the image from the webcam. In the first step, select the camera that will be used. ��5[      ���	#FF7AC1FF$
��Bold"�6�   $��Book Antiqua)�6�   $
��Wrap=�5\      ! �� TextAlignment$! Center=�6/   5^      5`      � 5c   
   $��2��6   .+�5d      �� $	��210��6   $��24��6#   $	��Top=�5g      $��
95,12,95,3q�6/   ���	#FF333337#��[  5h      ���	#FFF1F1F1��5e      �� *VideoDevices+" �� SelectedItem" 5f      �� *CurrentDevice+# �� UpdateSourceTrigger$# PropertyChanged=�$ TwoWay=�5k      5l      � 5m   
   $��3��6   .+�5n      �� $��70��6   $��40��6    $	��Top=�5o      
������ 
������ $��Start��5p   /   $��15(�5q      ���	#FFF1F1F1��5r      �� *OpenSecondWindowButtonCommand+5t      5u      5w      5x      