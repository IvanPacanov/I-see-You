   M S B A M L   `   `   `  ����D  @I_See_You, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:I_See_You	I_See_You  5   	       I_See_You.ThirdWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:I_See_You     5   	   V RMaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=nullX TMaterialDesignThemes.MahApps, Version=0.0.10.0, Culture=neutral, PublicKeyToken=nullHmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes   5      -   5        ���	#FF2D2D30  � 
ResizeMode$  NoResize=�5	   #    � WindowStartupLocation$ CenterScreen=�69    � WindowStyle$
 None=�6�   .��5      .��5      �  � ColumnDefinitions 5   
   �� 5      $
��155* �6   �� 5      $	��43* �6    � RowDefinitions 5   
   �� 5      $	��39* �6   �� 5      $
��293* �6   �� 5      $
��110* �6   .+�5   
   � $��1��6   $��0��6   .+�5      ��  �� Orientation$ 
Horizontal=�6   $��Right=�62   .+�5      �� $��40��6   $��40��6$   
������ 
������ $	��Top=�6d   ��6|   �� *CloseButtonCommand+.��5       '  !MaterialDesignThemes.Wpf.PackIcon  �  �ControlzEx.PackIconBase`1[[MaterialDesignThemes.Wpf.PackIconKind, MaterialDesignThemes.Wpf, Version=2.5.1.1345, Culture=neutral, PublicKeyToken=null]]   Kind$ Power=�6.   ���	#FFCCCCCD6T   5!      5"      5#      � 5%   
   $��0��6   $��1��6   .+�5&      �� -   5         ��Name$ 
LayoutRoot��5'      $��Center=�5(      $
��auto��5)      $
��auto��5*      ��5&      �� *Image+5*      5,      � 5/   
   $��1��6   $��1��6    50      �� 51      $	��21* �6#   �� 52      $	��37* �6#    54      �� 55      $	��50* �6    �� 56      $	��50* �6    �� 57      $	��50* �6    �� 58      $	��50* �6    �� 59      $	��50* �6    �� 5:      $	��50* �6    .+�5>      � $��0��6   $��2��6    .+�5?      �� $��50��6   $	��Top=�5@      
������ 
������ $��Start Camera��5A   /   $��15(�5B      ���	#FFF1F1F1��5C      �� *StartCameraButton+6?   5E      � 5F      $��1��6   $��1��6!   .+�5G      �� $��50��6   $	��Top=�5H      
������ 
������ $��Binary��5I   /   $��15(�5J      ���	#FFF1F1F1��5K      �� *BinaryButton+68   5M      � 5O      $��1��6   $��0��6!   .+�5P      �� $��
Threshold:��6   $��0,0,0,16q�5Q   $   $
��Left=�5R   $   ���	#FF7AC1FF$��12(�5T   $   $��63��5U   $   �� 5W      -   5         ��Name$ tex_BinaryThreshold��5W      $
��auto��5Y   "   
���   �)  #MaterialDesignThemes.Wpf.HintAssist	   Hint$	 	Threshold��5[   "   
   
IsFloating
 . $��0,20,0,0q�5]   "   ��5X   "   ��  �� Path$ 	Threshold� �� UpdateSourceTrigger$ PropertyChanged=� �� Mode$ TwoWay=�5]   "   5_      � 5`      $��2��6   $��2��6    .+�5a      �� $��50��6   $	��Top=�5b      
������ 
������ $��15(�5d      $��
Gray Scale��5f      ���	#FFF1F1F1��5e      �� *GrayScaleButton+5g      5i      � 5j      $��3��6   $��2��6    .+�5k      �� $��50��6   $	��Top=�5l      
������ 
������ $��15(�5n      $��Invert Image��5p      ���	#FFF1F1F1��5o      �� *InvertImageButton+5q      5s      � 5u      $��4��6   $��1��6!   .+�5v      �� $��50��6   $	��Top=�5w      
������ 
������ $��Contrast��5x   2   $��15(�5y      ���	#FFF1F1F1��5z      �� *ContrastButton+6;   5|      � 5~      $��4��6   $��0��6!   .+�5      �� $��	Contrast:��6   $��0,0,0,16q�5�   $   $
��Left=�5�   $   ���	#FF7AC1FF$��12(�5�   $   $��63��5�   $   �� 5�      -   5        $ tex_Contrast��5�      $
��auto��5�   "   $
��auto��5�   "   
���   �$	 	Threshold��5�   "   
 . $��0,20,0,0q�5�   "   ��5�   "   �� $ Factor�$ PropertyChanged=�$ TwoWay=�5�   "   5�      � 5�      $��2��6   $��5��6'   .+�5�      �� $��49��6   $	��Top=�5�      
������ 
������ $��15(�5�      ���	#FFF1F1F1��5�      �� *LastImageButton+5�        5�      $
 Undo=�6*   $��1q�5�   2   $��47��5�   2   $��76��5�   2   
�������$��	46,0,0,-4q�5�   E   5�      5�      � 5�   
   $��1��6   $��2��6   .+�5�      �� $
��auto��6   $
��auto��5�      $��Stop Camera��5�      
������ 
������ $��15(�5�      ���	#FFF1F1F1��5�      �� *StopCameraButton+5�      5�      5�      5�      