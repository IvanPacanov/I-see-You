   M S B A M L   `   `   `  ����D  @I_See_You, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:I_See_You	I_See_You  5   	       I_See_You.SecondWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   V RMaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=nullX TMaterialDesignThemes.MahApps, Version=0.0.10.0, Culture=neutral, PublicKeyToken=nullHmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes   5   	   %localclr-namespace:I_See_You   5   	   -   5          � Title$  SecondWindow��5	   	   $	��450��6   $	��800��6+    � WindowStyle$
 None=�67   ���	#FF2D2D30 � 
ResizeMode$ NoResize=�5
   %    � WindowStartupLocation$ CenterScreen=�6;   .��5      .��5      �  � ColumnDefinitions 5   
   �� 5      $
��155* �6   �� 5      $	��43* �6    � RowDefinitions 5   
   �� 5      $	��39* �6   �� 5      $
��293* �6   �� 5      $
��110* �6   .+�5   
   � $��1��6   $��0��6   .+�5      ��  �� Orientation$ 
Horizontal=�6   $��Right=�62   .+�5       �� $��40��6   $��40��6$   
������ 
������ $	��Top=�6d   ��6|   �� *CloseButtonCommand+.��5!      '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=null]]   Kind$ Power=�6.   ���	#FFCCCCCD6T   5"      5#      5$      � 5&   
   $��0��6   $��1��6   .+�5'      �� -   5         ��Name$ 
LayoutRoot��5(      $��Center=�5)      $
��auto��5*      $
��auto��5+      ��5'      �� *Image+5+      5-      � 50   
   $��1��6   $��1��6    51      �� 52      $	��21* �6#   �� 53      $	��37* �6#    55      �� 56      $	��50* �6    �� 57      $	��50* �6    �� 58      $	��50* �6    �� 59      $	��50* �6    �� 5:      $	��50* �6    �� 5;      $	��50* �6    .+�5?      � $��0��6   $��2��6    .+�5@      �� $��50��6   $	��Top=�5A      
������ 
������ $��
Load Image��5B   /   $��15(�5C      ���	#FFF1F1F1��5D      �� *TakeImageButton+6=   5F      � 5G      $��1��6   $��1��6!   .+�5H      �� $��50��6   $	��Top=�5I      
������ 
������ $��Binary��5J   /   $��15(�5K      ���	#FFF1F1F1��5L      �� *BinaryButton+68   5N      � 5P      $��1��6   $��0��6!   .+�5Q      �� $��
Threshold:��6   $��0,0,0,16q�5R   $   $
��Left=�5S   $   ���	#FF7AC1FF$��12(�5U   $   $��63��5V   $   �� 5X      -   5        	 ��Name$	 tex_BinaryThreshold��5X      $
��auto��5Z   "   
���   �)  #MaterialDesignThemes.Wpf.HintAssist
   Hint$
 	Threshold��5\   "      
IsFloating . $��0,20,0,0q�5^   "   ��5Y   "   ��  �� Path$ 	Threshold� �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ TwoWay=�5^   "   5`      � 5a      $��2��6   $��2��6    .+�5b      �� $��50��6   $	��Top=�5c      
������ 
������ $��15(�5e      $��
Gray Scale��5g      ���	#FFF1F1F1��5f      �� *GrayScaleButton+5h      5j      � 5k      $��3��6   $��2��6    .+�5l      �� $��50��6   $	��Top=�5m      
������ 
������ $��15(�5o      $��Invert Image��5q      ���	#FFF1F1F1��5p      �� *InvertImageButton+5r      5t      � 5v      $��4��6   $��1��6!   .+�5w      �� $��50��6   $	��Top=�5x      
������ 
������ $��Contrast��5y   2   $��15(�5z      ���	#FFF1F1F1��5{      �� *ContrastButton+6;   5}      � 5      $��4��6   $��0��6!   .+�5�      �� $��	Contrast:��6   $��0,0,0,16q�5�   $   $
��Left=�5�   $   ���	#FF7AC1FF$��12(�5�   $   $��63��5�   $   �� 5�      -   5        $	 tex_Contrast��5�      $
��auto��5�   "   $
��auto��5�   "   
���   �$
 	Threshold��5�   "    . $��0,20,0,0q�5�   "   ��5�   "   �� $ Factor�$ PropertyChanged=�$ TwoWay=�5�   "   5�      � 5�      $��2��6   $��5��6'   .+�5�      �� $��49��6   $	��Top=�5�      
������ 
������ $��15(�5�      ���	#FFF1F1F1��5�      �� *LastImageButton+5�        5�      $
 Undo=�6*   $��1q�5�   2   $��47��5�   2   $��76��5�   2   
�������$��	46,0,0,-4q�5�   E   5�      5�      � 5�   
   $��1��6   $��2��6   .+�5�      �� $
��auto��6   $
��auto��5�      $��WebCam��5�      
������ 
������ $��15(�5�      ���	#FFF1F1F1��5�      �� *CamWebButton+5�      5�      5�      5�      