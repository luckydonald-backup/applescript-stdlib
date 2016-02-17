FasdUAS 1.101.10   ��   ��    k             l      ��  ��    . ( Objects -- additional data structures

     � 	 	 P   O b j e c t s   - -   a d d i t i o n a l   d a t a   s t r u c t u r e s 
 
   
  
 l     ��������  ��  ��        l     ��������  ��  ��        l     ��  ��    J D--------------------------------------------------------------------     �   � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -      l     ��  ��      support     �      s u p p o r t      l     ��������  ��  ��        l          j     �� �� 0 _support    N          4     �� !
�� 
scpt ! m     " " � # #  T y p e S u p p o r t  "  used for parameter checking     � $ $ 8   u s e d   f o r   p a r a m e t e r   c h e c k i n g   % & % l     ��������  ��  ��   &  ' ( ' i   
 ) * ) I      �� +���� 
0 _error   +  , - , o      ���� 0 handlername handlerName -  . / . o      ���� 0 etext eText /  0 1 0 o      ���� 0 enumber eNumber 1  2 3 2 o      ���� 0 efrom eFrom 3  4�� 4 o      ���� 
0 eto eTo��  ��   * n     5 6 5 I    �� 7���� &0 throwcommanderror throwCommandError 7  8 9 8 m     : : � ; ;  O b j e c t s 9  < = < o    ���� 0 handlername handlerName =  > ? > o    ���� 0 etext eText ?  @ A @ o    	���� 0 enumber eNumber A  B C B o   	 
���� 0 efrom eFrom C  D�� D o   
 ���� 
0 eto eTo��  ��   6 o     ���� 0 _support   (  E F E l     ��������  ��  ��   F  G H G l     ��������  ��  ��   H  I J I l     �� K L��   K J D--------------------------------------------------------------------    L � M M � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - J  N O N l     �� P Q��   P   collections    Q � R R    c o l l e c t i o n s O  S T S l     ��������  ��  ��   T  U V U i    W X W I      �� Y����  0 _makeemptylist _makeEmptyList Y  Z�� Z o      ���� 0 n  ��  ��   X l    ! [ \ ] [ k     ! ^ ^  _ ` _ r      a b a J      c c  d�� d m     ��
�� 
msng��   b o      ���� 0 l   `  e f e V     g h g k     i i  j k j r     l m l b     n o n o    ���� 0 l   o o    ���� 0 l   m o      ���� 0 l   k  p�� p r     q r q _     s t s o    ���� 0 n   t m    ����  r o      ���� 0 n  ��   h ?   
  u v u o   
 ���� 0 n   v m    ����  f  w�� w L    ! x x o     ���� 0 l  ��   \ � � make a list of size n where n is a power of two, e.g. _makeBucketList(1024) returns a 1024 (2^10) item list (other values of n are rounded down automatically, e.g. n=1000 gives a 512-item list)    ] � y y�   m a k e   a   l i s t   o f   s i z e   n   w h e r e   n   i s   a   p o w e r   o f   t w o ,   e . g .   _ m a k e B u c k e t L i s t ( 1 0 2 4 )   r e t u r n s   a   1 0 2 4   ( 2 ^ 1 0 )   i t e m   l i s t   ( o t h e r   v a l u e s   o f   n   a r e   r o u n d e d   d o w n   a u t o m a t i c a l l y ,   e . g .   n = 1 0 0 0   g i v e s   a   5 1 2 - i t e m   l i s t ) V  z { z l     ��������  ��  ��   {  | } | l     ��������  ��  ��   }  ~  ~ l     �� � ���   �  -----    � � � � 
 - - - - -   � � � l     ��������  ��  ��   �  � � � i    � � � I     ������
�� .Typ:DicOnull��� ��� null��  ��   � l     � � � � k      � �  � � � l      �� � ���   �}w
		Create a basic hashmap, analogous to Cocoa's NSDictionary class. Uses NSString to generate key hashes from text-based keys (non-text keys will be coerced to text). Items are stored in a fixed-sized bucket list where each bucket contains either `missing value` or a linked list composed of AS records.

		Note: While Cocoa's NSMutableDictionary class may be used via AppleScript-ObjC, it is really only suitable for storing simple AppleScript values such as text and numbers; other values such as `missing value`, records, references, and script objects cannot reliably cross the ASOC bridge without being corrupted (e.g. references lose their target application information) or crashing (e.g. ASOC can't handle large numbers of script objects). For general-purpose use, it is safest to use a mostly-native AppleScript implementation, using Cocoa APIs only to speed up key hashing.		
	    � � � �� 
 	 	 C r e a t e   a   b a s i c   h a s h m a p ,   a n a l o g o u s   t o   C o c o a ' s   N S D i c t i o n a r y   c l a s s .   U s e s   N S S t r i n g   t o   g e n e r a t e   k e y   h a s h e s   f r o m   t e x t - b a s e d   k e y s   ( n o n - t e x t   k e y s   w i l l   b e   c o e r c e d   t o   t e x t ) .   I t e m s   a r e   s t o r e d   i n   a   f i x e d - s i z e d   b u c k e t   l i s t   w h e r e   e a c h   b u c k e t   c o n t a i n s   e i t h e r   ` m i s s i n g   v a l u e `   o r   a   l i n k e d   l i s t   c o m p o s e d   o f   A S   r e c o r d s . 
 
 	 	 N o t e :   W h i l e   C o c o a ' s   N S M u t a b l e D i c t i o n a r y   c l a s s   m a y   b e   u s e d   v i a   A p p l e S c r i p t - O b j C ,   i t   i s   r e a l l y   o n l y   s u i t a b l e   f o r   s t o r i n g   s i m p l e   A p p l e S c r i p t   v a l u e s   s u c h   a s   t e x t   a n d   n u m b e r s ;   o t h e r   v a l u e s   s u c h   a s   ` m i s s i n g   v a l u e ` ,   r e c o r d s ,   r e f e r e n c e s ,   a n d   s c r i p t   o b j e c t s   c a n n o t   r e l i a b l y   c r o s s   t h e   A S O C   b r i d g e   w i t h o u t   b e i n g   c o r r u p t e d   ( e . g .   r e f e r e n c e s   l o s e   t h e i r   t a r g e t   a p p l i c a t i o n   i n f o r m a t i o n )   o r   c r a s h i n g   ( e . g .   A S O C   c a n ' t   h a n d l e   l a r g e   n u m b e r s   o f   s c r i p t   o b j e c t s ) .   F o r   g e n e r a l - p u r p o s e   u s e ,   i t   i s   s a f e s t   t o   u s e   a   m o s t l y - n a t i v e   A p p l e S c r i p t   i m p l e m e n t a t i o n ,   u s i n g   C o c o a   A P I s   o n l y   t o   s p e e d   u p   k e y   h a s h i n g . 	 	 
 	 �  ��� � h     �� ��� ,0 dictionarycollection DictionaryCollection � k       � �  � � � x     �� �����   � 4    �� �
�� 
frmk � m     � � � � �  F o u n d a t i o n��   �  � � � l     ��������  ��  ��   �  � � � l      � � � � j    �� ��� 0 _buckets   � I    �� �����  0 _makeemptylist _makeEmptyList �  ��� � m    ���� ��  ��   � v p DictionaryCollections currently use a fixed-size bucket list (2^10=1024 items seems to be a reasonable default)    � � � � �   D i c t i o n a r y C o l l e c t i o n s   c u r r e n t l y   u s e   a   f i x e d - s i z e   b u c k e t   l i s t   ( 2 ^ 1 0 = 1 0 2 4   i t e m s   s e e m s   t o   b e   a   r e a s o n a b l e   d e f a u l t ) �  � � � j    �� ��� 	0 _size   � n     � � � 1    ��
�� 
leng � n    � � � o    ���� 0 _buckets   �  f     �  � � � j    �� ��� 
0 _count   � m    ����   �  � � � l     ��������  ��  ��   �  � � � i   ! � � � I      �� ����� 
0 _error   �  � � � o      ���� 0 handlername handlerName �  � � � o      ���� 0 etext eText �  � � � o      ���� 0 enumber eNumber �  � � � o      ���� 0 efrom eFrom �  ��� � o      ���� 
0 eto eTo��  ��   � n     � � � I    �� ����� $0 throwmethoderror throwMethodError �  � � � m     � � � � �  O b j e c t s �  � � � m     � � � � � ( D i c t i o n a r y C o l l e c t i o n �  � � � o    ���� 0 handlername handlerName �  � � � o    	���� 0 etext eText �  � � � o   	 
���� 0 enumber eNumber �  � � � o   
 ���� 0 efrom eFrom �  ��� � o    ���� 
0 eto eTo��  ��   � o     ���� 0 _support   �  � � � l     ��������  ��  ��   �  � � � i  " % � � � I      �� ����� 0 	_keyindex 	_keyIndex �  ��� � o      ���� 0 thekey theKey��  ��   � Q     � � � � k    � � �  � � � l   K � � � � Z   K � ����� � G    > � � � G    . � � � G     � � � >     � � � l    ����� � I   �� � �
�� .corecnte****       **** � J     � �  �� � o    �~�~ 0 thekey theKey�   � �} ��|
�} 
kocl � m    �{
�{ 
obj �|  ��  ��   � m    �z�z   � >     � � � l    ��y�x � I   �w � �
�w .corecnte****       **** � J     � �  ��v � o    �u�u 0 thekey theKey�v   � �t ��s
�t 
kocl � m    �r
�r 
list�s  �y  �x   � m    �q�q   � >   ! , � � � l  ! * ��p�o � I  ! *�n 
�n .corecnte****       ****  J   ! $ �m o   ! "�l�l 0 thekey theKey�m   �k�j
�k 
kocl m   % &�i
�i 
reco�j  �p  �o   � m   * +�h�h   � >   1 < l  1 :�g�f I  1 :�e	
�e .corecnte****       **** J   1 4

 �d o   1 2�c�c 0 thekey theKey�d  	 �b�a
�b 
kocl m   5 6�`
�` 
scpt�a  �g  �f   m   : ;�_�_   � R   A G�^�]
�^ .ascrerr ****      � ****�]   �\�[
�\ 
errn m   C D�Z�Z�\�[  ��  ��   � "  explicitly disallowed types    � � 8   e x p l i c i t l y   d i s a l l o w e d   t y p e s �  Z   L ��Y E  L W J   L Q  m   L M�X
�X 
type  m   M N�W
�W 
pcls �V m   N O�U
�U 
enum�V   J   Q V �T n  Q T  m   R T�S
�S 
pcls  o   Q R�R�R 0 thekey theKey�T   l  Z j!"#! r   Z j$%$ n  Z h&'& I   d h�Q�P�O�Q 0 typecodevalue typeCodeValue�P  �O  ' n  Z d()( I   _ d�N*�M�N 0 
asnsobject 
asNSObject* +�L+ o   _ `�K�K 0 thekey theKey�L  �M  ) o   Z _�J�J 0 _support  % o      �I�I 0 hashnum hashNum" caution: coercing a type class or constant symbol to text is problematic, as the resulting string may contain either its literal name or its raw four-char code depending on the terminology available at the time (furthermore, terminology conflicts and synonyms may cause its literal name to change); to avoid these problems, it's better to send the value over the ASOC to convert it to an NSAppleEventDescriptor, from which its raw four-char code can be obtained as an Int32 which can be safely used as its hashNum   # �,,   c a u t i o n :   c o e r c i n g   a   t y p e   c l a s s   o r   c o n s t a n t   s y m b o l   t o   t e x t   i s   p r o b l e m a t i c ,   a s   t h e   r e s u l t i n g   s t r i n g   m a y   c o n t a i n   e i t h e r   i t s   l i t e r a l   n a m e   o r   i t s   r a w   f o u r - c h a r   c o d e   d e p e n d i n g   o n   t h e   t e r m i n o l o g y   a v a i l a b l e   a t   t h e   t i m e   ( f u r t h e r m o r e ,   t e r m i n o l o g y   c o n f l i c t s   a n d   s y n o n y m s   m a y   c a u s e   i t s   l i t e r a l   n a m e   t o   c h a n g e ) ;   t o   a v o i d   t h e s e   p r o b l e m s ,   i t ' s   b e t t e r   t o   s e n d   t h e   v a l u e   o v e r   t h e   A S O C   t o   c o n v e r t   i t   t o   a n   N S A p p l e E v e n t D e s c r i p t o r ,   f r o m   w h i c h   i t s   r a w   f o u r - c h a r   c o d e   c a n   b e   o b t a i n e d   a s   a n   I n t 3 2   w h i c h   c a n   b e   s a f e l y   u s e d   a s   i t s   h a s h N u m�Y   l  m �-./- k   m �00 121 Z   m �34�H53 E  m w676 J   m q88 9:9 m   m n�G
�G 
long: ;�F; m   n o�E
�E 
doub�F  7 J   q v<< =�D= n  q t>?> m   r t�C
�C 
pcls? o   q r�B�B 0 thekey theKey�D  4 l  z �@AB@ k   z �CC DED l  z z�AFG�A  F � � TO DO: need a decent number hashing algorithm that neither overflows not habitually returns 0 (ironically enough, NSNumber's hash fails on doubles outside of �2^63)   G �HHJ   T O   D O :   n e e d   a   d e c e n t   n u m b e r   h a s h i n g   a l g o r i t h m   t h a t   n e i t h e r   o v e r f l o w s   n o t   h a b i t u a l l y   r e t u r n s   0   ( i r o n i c a l l y   e n o u g h ,   N S N u m b e r ' s   h a s h   f a i l s   o n   d o u b l e s   o u t s i d e   o f   � 2 ^ 6 3 )E IJI r   z }KLK o   z {�@�@ 0 thekey theKeyL o      �?�? 0 hashnum hashNumJ MNM r   ~ �OPO `   ~ �QRQ o   ~ �>�> 0 thekey theKeyR m    ��=�= P o      �<�< 0 divnum divNumN STS Z  � �UV�;�:U >   � �WXW o   � ��9�9 0 divnum divNumX m   � ��8�8  V r   � �YZY \   � �[\[ o   � ��7�7 0 hashnum hashNum\ ^   � �]^] m   � ��6�6 ^ o   � ��5�5 0 divnum divNumZ o      �4�4 0 hashnum hashNum�;  �:  T _`_ Z  � �ab�3�2a A   � �cdc o   � ��1�1 0 hashnum hashNumd m   � ��0�0  b r   � �efe d   � �gg o   � ��/�/ 0 hashnum hashNumf o      �.�. 0 hashnum hashNum�3  �2  ` h�-h Z  � �ij�,�+i A   � �klk o   � ��*�* 0 hashnum hashNuml m   � �mm it���bZj r   � �non ]   � �pqp o   � ��)�) 0 hashnum hashNumq m   � ��(�(  J�o o      �'�' 0 hashnum hashNum�,  �+  �-  A � � note: integers and reals that are numerically equalmust always produce same hash, since the linked list lookup compares integer and real keys for numeric equality (e.g. 1 = 1.0)    B �rrf   n o t e :   i n t e g e r s   a n d   r e a l s   t h a t   a r e   n u m e r i c a l l y   e q u a l m u s t   a l w a y s   p r o d u c e   s a m e   h a s h ,   s i n c e   t h e   l i n k e d   l i s t   l o o k u p   c o m p a r e s   i n t e g e r   a n d   r e a l   k e y s   f o r   n u m e r i c   e q u a l i t y   ( e . g .   1   =   1 . 0 )  �H  5 r   � �sts n  � �uvu I   � ��&�%�$�& 0 hash  �%  �$  v n  � �wxw I   � ��#y�"�# ,0 asnormalizednsstring asNormalizedNSStringy z�!z c   � �{|{ o   � �� �  0 thekey theKey| m   � ��
� 
ctxt�!  �"  x o   � ��� 0 _support  t o      �� 0 hashnum hashNum2 }~} l  � ����   � � `-[NSString hash]` returns UInt64 which ASOC unpacks as Double, so discard least significant bits when precision is lost due to rounding   � ���   ` - [ N S S t r i n g   h a s h ] `   r e t u r n s   U I n t 6 4   w h i c h   A S O C   u n p a c k s   a s   D o u b l e ,   s o   d i s c a r d   l e a s t   s i g n i f i c a n t   b i t s   w h e n   p r e c i s i o n   i s   l o s t   d u e   t o   r o u n d i n g~ ��� Z  � ������ ?   � ���� o   � ��� 0 hashnum hashNum� m   � ��� C������� r   � ���� _   � ���� o   � ��� 0 hashnum hashNum� m   � ��� � o      �� 0 hashnum hashNum�  �  �  .f` TO DO: what AS types are safe to use as keys? currently, all keys except those already explicitly disallowed or specially processed are coerced to text for hashing, rejecting any values that cause coercion errors if/when they occur, but to guarantee reliability it may be best to whitelist only AS types that are guaranteed to be safe for use as keys    / ����   T O   D O :   w h a t   A S   t y p e s   a r e   s a f e   t o   u s e   a s   k e y s ?   c u r r e n t l y ,   a l l   k e y s   e x c e p t   t h o s e   a l r e a d y   e x p l i c i t l y   d i s a l l o w e d   o r   s p e c i a l l y   p r o c e s s e d   a r e   c o e r c e d   t o   t e x t   f o r   h a s h i n g ,   r e j e c t i n g   a n y   v a l u e s   t h a t   c a u s e   c o e r c i o n   e r r o r s   i f / w h e n   t h e y   o c c u r ,   b u t   t o   g u a r a n t e e   r e l i a b i l i t y   i t   m a y   b e   b e s t   t o   w h i t e l i s t   o n l y   A S   t y p e s   t h a t   a r e   g u a r a n t e e d   t o   b e   s a f e   f o r   u s e   a s   k e y s   ��� L   � ��� [   � ���� `   � ���� o   � ��� 0 hashnum hashNum� o   � ��� 	0 _size  � m   � ��� �   � R      ���
� .ascrerr ****      � ****�  � ���
� 
errn� d      �� m      ����   � R   ����
� .ascrerr ****      � ****� m   �� ��� " I n v a l i d   k e y   t y p e .� �
��
�
 
errn� m   � ��	�	�\� ���
� 
erob� o   � ��� 0 thekey theKey�   � ��� l     ����  �  �  � ��� l     ��� �  �  �   � ��� l     ��������  ��  ��  � ��� i  & )��� I      �������� 0 
countitems 
countItems��  ��  � L     �� o     ���� 
0 _count  � ��� l     ��������  ��  ��  � ��� i  * -��� I      ������� 0 additem addItem� ��� o      ���� 0 thekey theKey� ���� o      ���� 0 thevalue theValue��  ��  � Q     ����� k    ��� ��� r    ��� I    	������� 0 	_keyindex 	_keyIndex� ���� o    ���� 0 thekey theKey��  ��  � o      ���� 0 keyindex keyIndex� ��� l   ���� s    ��� o    ���� 0 thekey theKey� o      ���� 0 thekey theKey�-' while dates can be used as keys, it's essential that keys stored in linked lists are never mutated so they must be copied first (this is a no-op for text, numbers, and other immutable types, while other types for which copying is problematic, e.g. script objects, are already forbidden as keys)   � ���N   w h i l e   d a t e s   c a n   b e   u s e d   a s   k e y s ,   i t ' s   e s s e n t i a l   t h a t   k e y s   s t o r e d   i n   l i n k e d   l i s t s   a r e   n e v e r   m u t a t e d   s o   t h e y   m u s t   b e   c o p i e d   f i r s t   ( t h i s   i s   a   n o - o p   f o r   t e x t ,   n u m b e r s ,   a n d   o t h e r   i m m u t a b l e   t y p e s ,   w h i l e   o t h e r   t y p e s   f o r   w h i c h   c o p y i n g   i s   p r o b l e m a t i c ,   e . g .   s c r i p t   o b j e c t s ,   a r e   a l r e a d y   f o r b i d d e n   a s   k e y s )� ��� r    ��� n    ��� 4    ���
�� 
cobj� o    ���� 0 keyindex keyIndex� n   ��� o    ���� 0 _buckets  �  f    � o      ���� 0 	founditem 	foundItem� ��� Z    G������� =   ��� o    ���� 0 	founditem 	foundItem� m    ��
�� 
msng� k     C�� ��� r     /��� K     (�� ������ 0 k  � o   ! "���� 0 thekey theKey� ������ 0 v  � o   # $���� 0 thevalue theValue� ������� 0 nextitem nextItem� m   % &��
�� 
msng��  � n      ��� 4   + .���
�� 
cobj� o   , -���� 0 keyindex keyIndex� n  ( +��� o   ) +���� 0 _buckets  �  f   ( )� ��� r   0 =��� [   0 7��� o   0 5���� 
0 _count  � m   5 6���� � o      ���� 
0 _count  � ���� l  > C���� L   > C�� J   > B�� ��� m   > ?��
�� boovfals� ���� m   ? @��
�� 
msng��  �   inserted new item   � ��� $   i n s e r t e d   n e w   i t e m��  ��  ��  � ���� P   H ����� T   M ��� k   R ��� ��� Z   R o������� =  R W��� n   R U� � o   S U���� 0 k    o   R S���� 0 	founditem 	foundItem� o   U V���� 0 thekey theKey� k   Z k  r   Z _ n   Z ] o   [ ]���� 0 v   o   Z [���� 0 	founditem 	foundItem o      ���� 0 oldvalue oldValue 	 r   ` e

 o   ` a���� 0 thevalue theValue n       o   b d���� 0 v   o   a b���� 0 	founditem 	foundItem	 �� l  f k L   f k J   f j  m   f g��
�� boovtrue �� o   g h���� 0 oldvalue oldValue��     replaced existing item    � .   r e p l a c e d   e x i s t i n g   i t e m��  ��  ��  �  Z   p ����� =  p u n   p s o   q s���� 0 nextitem nextItem o   p q���� 0 	founditem 	foundItem m   s t��
�� 
msng k   x �   !"! r   x �#$# K   x �%% ��&'�� 0 k  & o   y z���� 0 thekey theKey' ��()�� 0 v  ( o   { |���� 0 thevalue theValue) ��*���� 0 nextitem nextItem* m   } ~��
�� 
msng��  $ n      +,+ o   � ����� 0 nextitem nextItem, o   � ����� 0 	founditem 	foundItem" -.- r   � �/0/ [   � �121 o   � ����� 
0 _count  2 m   � ����� 0 o      ���� 
0 _count  . 3��3 l  � �4564 L   � �77 J   � �88 9:9 m   � ���
�� boovfals: ;��; m   � ���
�� 
msng��  5   inserted new item   6 �<< $   i n s e r t e d   n e w   i t e m��  ��  ��   =��= r   � �>?> n   � �@A@ o   � ����� 0 nextitem nextItemA o   � ����� 0 	founditem 	foundItem? o      ���� 0 	founditem 	foundItem��  � ��B
�� conscaseB ��C
�� consdiacC ��D
�� conshyphD ��E
�� conspuncE ����
�� conswhit��  � ����
�� consnume��  ��  � R      ��FG
�� .ascrerr ****      � ****F o      ���� 0 etext eTextG ��HI
�� 
errnH o      ���� 0 enumber eNumberI ��JK
�� 
erobJ o      ���� 0 efrom eFromK ��L��
�� 
errtL o      ���� 
0 eto eTo��  � I   � ���M���� 
0 _error  M NON m   � �PP �QQ  a d d I t e mO RSR o   � ����� 0 etext eTextS TUT o   � ����� 0 enumber eNumberU VWV o   � ����� 0 efrom eFromW X��X o   � ����� 
0 eto eTo��  ��  � YZY l     ��������  ��  ��  Z [\[ i  . 1]^] I      ��_���� 0 
removeitem 
removeItem_ `��` o      ���� 0 thekey theKey��  ��  ^ Q     �abca k    �dd efe r    ghg I    	��i���� 0 	_keyindex 	_keyIndexi j��j o    ���� 0 thekey theKey��  ��  h o      ���� 0 keyindex keyIndexf klk r    mnm n    opo 4    ��q
�� 
cobjq o    ���� 0 keyindex keyIndexp n   rsr o    ���� 0 _buckets  s  f    n o      ���� 0 	founditem 	foundIteml tut P    wvwxv k    vyy z{z r    |}| m    �
� 
msng} o      �~�~ 0 previtem prevItem{ ~�}~ V    v� k   & q�� ��� r   & +��� n   & )��� o   ' )�|�| 0 k  � o   & '�{�{ 0 	founditem 	foundItem� o      �z�z 0 foundkey foundKey� ��� Z   , g���y�x� =  , /��� o   , -�w�w 0 foundkey foundKey� o   - .�v�v 0 thekey theKey� k   2 c�� ��� r   2 7��� n   2 5��� o   3 5�u�u 0 v  � o   2 3�t�t 0 	founditem 	foundItem� o      �s�s 0 thevalue theValue� ��� Z   8 R���r�� =  8 ;��� o   8 9�q�q 0 previtem prevItem� m   9 :�p
�p 
msng� r   > H��� n   > A��� o   ? A�o�o 0 nextitem nextItem� o   > ?�n�n 0 	founditem 	foundItem� n      ��� 4   D G�m�
�m 
cobj� o   E F�l�l 0 keyindex keyIndex� n  A D��� o   B D�k�k 0 _buckets  �  f   A B�r  � r   K R��� n   K N��� o   L N�j�j 0 nextitem nextItem� o   K L�i�i 0 	founditem 	foundItem� n      ��� o   O Q�h�h 0 nextitem nextItem� o   N O�g�g 0 previtem prevItem� ��� r   S `��� \   S Z��� o   S X�f�f 
0 _count  � m   X Y�e�e � o      �d�d 
0 _count  � ��c� l  a c���� L   a c�� o   a b�b�b 0 thevalue theValue�   return the removed value   � ��� 2   r e t u r n   t h e   r e m o v e d   v a l u e�c  �y  �x  � ��� r   h k��� o   h i�a�a 0 	founditem 	foundItem� o      �`�` 0 previtem prevItem� ��_� r   l q��� n   l o��� o   m o�^�^ 0 nextitem nextItem� o   l m�]�] 0 	founditem 	foundItem� o      �\�\ 0 	founditem 	foundItem�_  � >  " %��� o   " #�[�[ 0 	founditem 	foundItem� m   # $�Z
�Z 
msng�}  w �Y�
�Y conscase� �X�
�X consdiac� �W�
�W conshyph� �V�
�V conspunc� �U�T
�U conswhit�T  x �S�R
�S consnume�R  u ��Q� R   x ��P��
�P .ascrerr ****      � ****� m   ~ �� ���  I t e m   n o t   f o u n d .� �O��
�O 
errn� m   z {�N�N�@� �M��L
�M 
erob� o   | }�K�K 0 thekey theKey�L  �Q  b R      �J��
�J .ascrerr ****      � ****� o      �I�I 0 etext eText� �H��
�H 
errn� o      �G�G 0 enumber eNumber� �F��
�F 
erob� o      �E�E 0 efrom eFrom� �D��C
�D 
errt� o      �B�B 
0 eto eTo�C  c I   � ��A��@�A 
0 _error  � ��� m   � ��� ���  r e m o v e I t e m� ��� o   � ��?�? 0 etext eText� ��� o   � ��>�> 0 enumber eNumber� ��� o   � ��=�= 0 efrom eFrom� ��<� o   � ��;�; 
0 eto eTo�<  �@  \ ��� l     �:�9�8�:  �9  �8  � ��� i  2 5��� I      �7�6�5�7  0 deleteallitems deleteAllItems�6  �5  � k     !�� ��� r     
��� I     �4��3�4  0 _makeemptylist _makeEmptyList� ��2� m    �1�1 �2  �3  � n     ��� o    	�0�0 0 _buckets  �  f    � ��� r    ��� n    ��� 1    �/
�/ 
leng� n   ��� o    �.�. 0 _buckets  �  f    � o      �-�- 	0 _size  � ��� r    ��� m    �,�,  � o      �+�+ 
0 _count  � ��*� L    !�)�)  �*  � ��� l     �(�'�&�(  �'  �&  � � � i  6 9 I      �%�$�% 0 getitem getItem �# o      �"�" 0 thekey theKey�#  �$   Q     Z k    D 	
	 P    ; k    :  r     n     4    �!
�! 
cobj I    � ��  0 	_keyindex 	_keyIndex � o    �� 0 thekey theKey�  �   n    o   	 �� 0 _buckets    f    	 o      �� 0 	founditem 	foundItem � V    : k    5  Z   / !��  =   #"#" n    !$%$ o    !�� 0 k  % o    �� 0 	founditem 	foundItem# o   ! "�� 0 thekey theKey! L   & +&& n   & *'(' o   ' )�� 0 v  ( o   & '�� 0 	founditem 	foundItem�  �   )�) r   0 5*+* n   0 3,-, o   1 3�� 0 nextitem nextItem- o   0 1�� 0 	founditem 	foundItem+ o      �� 0 	founditem 	foundItem�   >   ./. o    �� 0 	founditem 	foundItem/ m    �
� 
msng�   �0
� conscase0 �1
� consdiac1 �
2
�
 conshyph2 �	3
�	 conspunc3 ��
� conswhit�   ��
� consnume�  
 4�4 R   < D�56
� .ascrerr ****      � ****5 m   B C77 �88  I t e m   n o t   f o u n d .6 �9:
� 
errn9 m   > ?���@: � ;��
�  
erob; o   @ A���� 0 thekey theKey��  �   R      ��<=
�� .ascrerr ****      � ****< o      ���� 0 etext eText= ��>?
�� 
errn> o      ���� 0 enumber eNumber? ��@A
�� 
erob@ o      ���� 0 efrom eFromA ��B��
�� 
errtB o      ���� 
0 eto eTo��   I   L Z��C���� 
0 _error  C DED m   M PFF �GG  g e t I t e mE HIH o   P Q���� 0 etext eTextI JKJ o   Q R���� 0 enumber eNumberK LML o   R S���� 0 efrom eFromM N��N o   S T���� 
0 eto eTo��  ��    OPO l     ��������  ��  ��  P QRQ i  : =STS I      ��U���� 0 containsitem containsItemU V��V o      ���� 0 thekey theKey��  ��  T Q     WXYW k    ZZ [\[ I    	��]���� 0 getitem getItem] ^��^ o    ���� 0 thekey theKey��  ��  \ _��_ L   
 `` m   
 ��
�� boovtrue��  X R      ����a
�� .ascrerr ****      � ****��  a ��b��
�� 
errnb d      cc m      �������  Y L    dd m    ��
�� boovfalsR efe l     ��������  ��  ��  f ghg l     ��������  ��  ��  h iji l     ��������  ��  ��  j klk i  > Amnm I      �������� &0 objectdescription objectDescription��  ��  n L     
oo b     	pqp b     rsr m     tt �uu 0 � d i c t i o n a r y   c o l l e c t i o n   (s o    ���� 
0 _count  q m    vv �ww    i t e m s ) �l xyx l     ��������  ��  ��  y z{z i  B E|}| I      �������� 0 
copyobject 
copyObject��  ��  } Q     �~�~ k    ��� ��� r    
��� I   ������
�� .Typ:DicOnull��� ��� null��  ��  � o      ���� 0 	newobject 	newObject� ��� Z    �������� ?    ��� o    ���� 
0 _count  � m    ����  � k    ��� ��� l   +���� Z   +������� >     ��� n    ��� 1    ��
�� 
leng� n   ��� o    ���� 0 _buckets  �  f    � n    ��� 1    ��
�� 
leng� n   ��� o    ���� 0 _buckets  � o    ���� 0 	newobject 	newObject� R   # '�����
�� .ascrerr ****      � ****� m   % &�� ��� 0 M i s m a t c h e d   b u c k e t   l i s t s .��  ��  ��  � � � sanity check as this copyObject() implementation requires all bucket lists to be same length, and will need revised if growable bucket lists are supported in future   � ���J   s a n i t y   c h e c k   a s   t h i s   c o p y O b j e c t ( )   i m p l e m e n t a t i o n   r e q u i r e s   a l l   b u c k e t   l i s t s   t o   b e   s a m e   l e n g t h ,   a n d   w i l l   n e e d   r e v i s e d   i f   g r o w a b l e   b u c k e t   l i s t s   a r e   s u p p o r t e d   i n   f u t u r e� ���� Y   , ��������� k   ; ��� ��� r   ; C��� n   ; A��� 4   > A���
�� 
cobj� o   ? @���� 0 i  � n  ; >��� o   < >���� 0 _buckets  �  f   ; <� o      ���� 0 	oldbucket 	oldBucket� ���� Z   D �������� >  D G��� o   D E���� 0 	oldbucket 	oldBucket� m   E F��
�� 
msng� l  J ����� k   J ��� ��� r   J X��� K   J V�� ������ 0 k  � n  K N��� o   L N���� 0 k  � o   K L���� 0 	oldbucket 	oldBucket� ������ 0 v  � n  O R��� o   P R���� 0 v  � o   O P���� 0 	oldbucket 	oldBucket� ������� 0 nextitem nextItem� m   S T��
�� 
msng��  � o      ���� 0 	newbucket 	newBucket� ��� r   Y a��� o   Y Z���� 0 	newbucket 	newBucket� n      ��� 4   ] `���
�� 
cobj� o   ^ _���� 0 i  � n  Z ]��� o   [ ]���� 0 _buckets  � o   Z [���� 0 	newobject 	newObject� ���� V   b ���� k   l ��� ��� r   l q��� n   l o��� o   m o���� 0 nextitem nextItem� o   l m���� 0 	oldbucket 	oldBucket� o      ���� 0 	oldbucket 	oldBucket� ��� r   r ���� K   r ~�� ������ 0 k  � n  s v��� o   t v���� 0 k  � o   s t���� 0 	oldbucket 	oldBucket� ������ 0 v  � n  w z��� o   x z���� 0 v  � o   w x���� 0 	oldbucket 	oldBucket� ������� 0 nextitem nextItem� m   { |��
�� 
msng��  � o      ���� 0 tmp  � ��� r   � ���� o   � ����� 0 tmp  � n     ��� o   � ����� 0 nextitem nextItem� o   � ����� 0 	newbucket 	newBucket� ���� r   � ���� o   � ����� 0 tmp  � o      ���� 0 	newbucket 	newBucket��  � >  f k��� n   f i��� o   g i���� 0 nextitem nextItem� o   f g���� 0 	oldbucket 	oldBucket� m   i j��
�� 
msng��  � _ Y shallow copy the linked list and add it new newObject's bucket list at the same position   � ��� �   s h a l l o w   c o p y   t h e   l i n k e d   l i s t   a n d   a d d   i t   n e w   n e w O b j e c t ' s   b u c k e t   l i s t   a t   t h e   s a m e   p o s i t i o n��  ��  ��  �� 0 i  � m   / 0���� � n   0 6��� 1   3 5��
�� 
leng� n  0 3��� o   1 3���� 0 _buckets  �  f   0 1��  ��  ��  ��  � ���� L   � ��� o   � ����� 0 	newobject 	newObject��   R      ���
� .ascrerr ****      � ****� o      �~�~ 0 etext eText� �}��
�} 
errn� o      �|�| 0 enumber eNumber� �{ 
�{ 
erob  o      �z�z 0 efrom eFrom �y�x
�y 
errt o      �w�w 
0 eto eTo�x  � I   � ��v�u�v 
0 _error    m   � � �  c o p y O b j e c t 	 o   � ��t�t 0 etext eText	 

 o   � ��s�s 0 enumber eNumber  o   � ��r�r 0 efrom eFrom �q o   � ��p�p 
0 eto eTo�q  �u  {  l     �o�n�m�o  �n  �m    l     �l�k�j�l  �k  �j    l     �i�h�g�i  �h  �g    i  F I I      �f�e�f 0 adddictionary addDictionary �d o      �c�c $0 dictionaryobject dictionaryObject�d  �e   Q    . k      Z   !"�b�a! ?    
#$# n   %&% I    �`�_�^�` 0 
countitems 
countItems�_  �^  & o    �]�] $0 dictionaryobject dictionaryObject$ m    	�\�\  " k   '' ()( l   #*+,* Z   #-.�[�Z- >    /0/ n    121 1    �Y
�Y 
leng2 n   343 o    �X�X 0 _buckets  4  f    0 n    565 1    �W
�W 
leng6 n   787 o    �V�V 0 _buckets  8 o    �U�U $0 dictionaryobject dictionaryObject. R    �T9�S
�T .ascrerr ****      � ****9 m    :: �;; 0 M i s m a t c h e d   b u c k e t   l i s t s .�S  �[  �Z  +   sanity check, as above   , �<< .   s a n i t y   c h e c k ,   a s   a b o v e) =�R= P   $>?@> Y   )A�QBC�PA k   8DD EFE r   8 @GHG n   8 >IJI 4   ; >�OK
�O 
cobjK o   < =�N�N 0 i  J n  8 ;LML o   9 ;�M�M 0 _buckets  M o   8 9�L�L $0 dictionaryobject dictionaryObjectH o      �K�K 0 otherbucket otherBucketF N�JN Z   AOP�I�HO >  A DQRQ o   A B�G�G 0 otherbucket otherBucketR m   B C�F
�F 
msngP l  GSTUS k   GVV WXW r   G OYZY n   G M[\[ 4   J M�E]
�E 
cobj] o   K L�D�D 0 i  \ n  G J^_^ o   H J�C�C 0 _buckets  _  f   G HZ o      �B�B 0 mybucket myBucketX `�A` Z   Pab�@ca =  P Sded o   P Q�?�? 0 mybucket myBuckete m   Q R�>
�> 
msngb l  V �fghf k   V �ii jkj r   V dlml K   V bnn �=op�= 0 k  o n  W Zqrq o   X Z�<�< 0 k  r o   W X�;�; 0 otherbucket otherBucketp �:st�: 0 v  s n  [ ^uvu o   \ ^�9�9 0 v  v o   [ \�8�8 0 otherbucket otherBuckett �7w�6�7 0 nextitem nextItemw m   _ `�5
�5 
msng�6  m o      �4�4 0 mybucket myBucketk xyx r   e mz{z o   e f�3�3 0 mybucket myBucket{ n      |}| 4   i l�2~
�2 
cobj~ o   j k�1�1 0 i  } n  f i� o   g i�0�0 0 _buckets  �  f   f gy ��/� V   n ���� k   x ��� ��� r   x }��� n   x {��� o   y {�.�. 0 nextitem nextItem� o   x y�-�- 0 otherbucket otherBucket� o      �,�, 0 otherbucket otherBucket� ��� r   ~ ���� K   ~ ��� �+���+ 0 k  � n   ���� o   � ��*�* 0 k  � o    ��)�) 0 otherbucket otherBucket� �(���( 0 v  � n  � ���� o   � ��'�' 0 v  � o   � ��&�& 0 otherbucket otherBucket� �%��$�% 0 nextitem nextItem� m   � ��#
�# 
msng�$  � o      �"�" 0 tmp  � ��� r   � ���� o   � ��!�! 0 tmp  � n     ��� o   � �� �  0 nextitem nextItem� o   � ��� 0 mybucket myBucket� ��� r   � ���� o   � ��� 0 tmp  � o      �� 0 mybucket myBucket�  � >  r w��� n   r u��� o   s u�� 0 nextitem nextItem� o   r s�� 0 otherbucket otherBucket� m   u v�
� 
msng�/  g   �by shallow copy   h ��� "   & b y   s h a l l o w   c o p y�@  c l  ����� V   ���� k   ��� ��� r   � ���� o   � ��� 0 mybucket myBucket� o      �� 0 tmp  � ��� T   � �� k   � ��� ��� Z   � ������ =  � ���� n  � ���� o   � ��� 0 k  � o   � ��� 0 tmp  � n  � ���� o   � ��� 0 k  � o   � ��� 0 otherbucket otherBucket� l  � ����� k   � ��� ��� r   � ���� n  � ���� J   � ��� ��� o   � ��� 0 k  � ��� o   � ��� 0 v  �  � o   � ��� 0 otherbucket otherBucket� n     ��� J   � ��� ��� o   � ��� 0 k  � ��� o   � ��� 0 v  �  � o   � ��
�
 0 tmp  � ��	�  S   � ��	  �   replace   � ���    r e p l a c e� ��� =  � ���� n  � ���� o   � ��� 0 nextitem nextItem� o   � ��� 0 tmp  � m   � ��
� 
msng� ��� l  � ����� k   � ��� ��� r   � ���� K   � ��� ���� 0 k  � n  � ���� o   � ��� 0 k  � o   � ��� 0 otherbucket otherBucket� ���� 0 v  � n  � ���� o   � �� �  0 v  � o   � ����� 0 otherbucket otherBucket� ������� 0 nextitem nextItem� m   � ���
�� 
msng��  � n     ��� o   � ����� 0 nextitem nextItem� o   � ����� 0 tmp  � ����  S   � ���  �   append   � ���    a p p e n d�  �  � ���� r   � ���� n  � ���� o   � ����� 0 nextitem nextItem� o   � ����� 0 tmp  � o      ���� 0 tmp  ��  � ���� r  ��� n  ��� o  ���� 0 nextitem nextItem� o  ���� 0 otherbucket otherBucket� o      ���� 0 otherbucket otherBucket��  � >  � ���� o   � ����� 0 otherbucket otherBucket� m   � ���
�� 
msng� 9 3 �by merging into this dictionary's existing bucket   � ��� f   & b y   m e r g i n g   i n t o   t h i s   d i c t i o n a r y ' s   e x i s t i n g   b u c k e t�A  T * $ transfer other dictionary's bucket�   U �   H   t r a n s f e r   o t h e r   d i c t i o n a r y ' s   b u c k e t &�I  �H  �J  �Q 0 i  B m   , -���� C n   - 3 1   0 2��
�� 
leng n  - 0 o   . 0���� 0 _buckets   o   - .���� $0 dictionaryobject dictionaryObject�P  ? ��
�� conscase ��
�� consdiac ��
�� conshyph ��
�� conspunc ����
�� conswhit��  @ ����
�� consnume��  �R  �b  �a    	��	 L  ����  ��   R      ��

�� .ascrerr ****      � ****
 o      ���� 0 etext eText ��
�� 
errn o      ���� 0 enumber eNumber ��
�� 
erob o      ���� 0 efrom eFrom ����
�� 
errt o      ���� 
0 eto eTo��   I  $.������ 
0 _error    m  %& �  a d d D i c t i o n a r y  o  &'���� 0 etext eText  o  '(���� 0 enumber eNumber  o  ()���� 0 efrom eFrom �� o  )*���� 
0 eto eTo��  ��    l     ��������  ��  ��     l     ��������  ��  ��    !"! l     ��������  ��  ��  " #$# i  J M%&% I      ��'���� $0 addkeysandvalues addKeysAndValues' (��( o      ���� 0 keyvaluelist keyValueList��  ��  & l    �)*+) Q     �,-., k    �// 010 Z   23����2 =    454 l   6����6 I   ��78
�� .corecnte****       ****7 J    99 :��: o    ���� 0 keyvaluelist keyValueList��  8 ��;��
�� 
kocl; m    ��
�� 
list��  ��  ��  5 m    ����  3 R    ��<=
�� .ascrerr ****      � ****< m    >> �?? 6 N o t   a   v a l i d   k e y - v a l u e   l i s t .= ��@A
�� 
errn@ m    �����\A ��B��
�� 
erobB o    ���� 0 keyvaluelist keyValueList��  ��  ��  1 CDC h    %��E�� 0 
listobject 
listObjectE j     ��F�� 
0 _list_  F o     ���� 0 keyvaluelist keyValueListD GHG X   & �I��JI k   8 �KK LML r   8 =NON n  8 ;PQP 1   9 ;��
�� 
pcntQ o   8 9���� 0 aref aRefO o      ���� 0 keyvalue keyValueM R��R Q   > �STUS k   A qVV WXW Z  A cYZ����Y G   A V[\[ =   A L]^] l  A J_����_ I  A J��`a
�� .corecnte****       ****` J   A Dbb c��c o   A B���� 0 keyvalue keyValue��  a ��d��
�� 
kocld m   E F��
�� 
list��  ��  ��  ^ m   J K����  \ >   O Tefe n  O Rghg 1   P R��
�� 
lengh o   O P���� 0 keyvalue keyValuef m   R S���� Z R   Y _����i
�� .ascrerr ****      � ****��  i ��j��
�� 
errnj m   [ \�����\��  ��  ��  X k��k I   d q��l���� 0 additem addIteml mnm n  e iopo 4   f i��q
�� 
cobjq m   g h���� p o   e f���� 0 keyvalue keyValuen r��r n  i msts 4   j m��u
�� 
cobju m   k l���� t o   i j���� 0 keyvalue keyValue��  ��  ��  T R      ����v
�� .ascrerr ****      � ****��  v ��w��
�� 
errnw o      ���� 0 n  ��  U R   y ���xy
�� .ascrerr ****      � ****x m    �zz �{{ 6 N o t   a   v a l i d   k e y - v a l u e   p a i r .y ��|}
�� 
errn| o   { |���� 0 n  } ��~��
�� 
erob~ o   } ~���� 0 aref aRef��  ��  �� 0 aref aRefJ n  ) ,� o   * ,���� 
0 _list_  � o   ) *���� 0 
listobject 
listObjectH ���� L   � ���  ��  - R      �~��
�~ .ascrerr ****      � ****� o      �}�} 0 etext eText� �|��
�| 
errn� o      �{�{ 0 enumber eNumber� �z��
�z 
erob� o      �y�y 0 efrom eFrom� �x��w
�x 
errt� o      �v�v 
0 eto eTo�w  . I   � ��u��t�u 
0 _error  � ��� m   � ��� ���   a d d K e y s A n d V a l u e s� ��� o   � ��s�s 0 etext eText� ��� o   � ��r�r 0 enumber eNumber� ��� o   � ��q�q 0 efrom eFrom� ��p� o   � ��o�o 
0 eto eTo�p  �t  * %  list of form {{KEY,VALUE},...}   + ��� >   l i s t   o f   f o r m   { { K E Y , V A L U E } , . . . }$ ��� l     �n�m�l�n  �m  �l  � ��� i  N Q��� I      �k�j�i�k $0 getkeysandvalues getKeysAndValues�j  �i  � k     K�� ��� h     �h��h 0 
listobject 
listObject� j     �g��g 
0 _list_  � J     �f�f  � ��� X    E��e�� k    @�� ��� r    ��� n   ��� 1    �d
�d 
pcnt� o    �c�c 0 	bucketref 	bucketRef� o      �b�b 0 mybucket myBucket� ��a� V     @��� k   ( ;�� ��� r   ( 5��� J   ( 0�� ��� n  ( +��� o   ) +�`�` 0 k  � o   ( )�_�_ 0 mybucket myBucket� ��^� n  + .��� o   , .�]�] 0 v  � o   + ,�\�\ 0 mybucket myBucket�^  � n      ���  ;   3 4� n  0 3��� o   1 3�[�[ 
0 _list_  � o   0 1�Z�Z 0 
listobject 
listObject� ��Y� r   6 ;��� n  6 9��� o   7 9�X�X 0 nextitem nextItem� o   6 7�W�W 0 mybucket myBucket� o      �V�V 0 mybucket myBucket�Y  � >  $ '��� o   $ %�U�U 0 mybucket myBucket� m   % &�T
�T 
msng�a  �e 0 	bucketref 	bucketRef� n   ��� o    �S�S 0 _buckets  �  f    � ��R� L   F K�� n  F J��� o   G I�Q�Q 
0 _list_  � o   F G�P�P 0 
listobject 
listObject�R  � ��� l     �O�N�M�O  �N  �M  � ��� i  R U��� I      �L�K�J�L 0 getkeys getKeys�K  �J  � k     F�� ��� h     �I��I 0 
listobject 
listObject� j     �H��H 
0 _list_  � J     �G�G  � ��� X    @��F�� k    ;�� ��� r    ��� n   ��� 1    �E
�E 
pcnt� o    �D�D 0 	bucketref 	bucketRef� o      �C�C 0 mybucket myBucket� ��B� V     ;��� k   ( 6�� ��� r   ( 0��� n  ( +��� o   ) +�A�A 0 k  � o   ( )�@�@ 0 mybucket myBucket� n      ���  ;   . /� n  + .��� o   , .�?�? 
0 _list_  � o   + ,�>�> 0 
listobject 
listObject� ��=� r   1 6��� n  1 4��� o   2 4�<�< 0 nextitem nextItem� o   1 2�;�; 0 mybucket myBucket� o      �:�: 0 mybucket myBucket�=  � >  $ '��� o   $ %�9�9 0 mybucket myBucket� m   % &�8
�8 
msng�B  �F 0 	bucketref 	bucketRef� n   ��� o    �7�7 0 _buckets  �  f    � ��6� L   A F�� n  A E��� o   B D�5�5 
0 _list_  � o   A B�4�4 0 
listobject 
listObject�6  � ��� l     �3�2�1�3  �2  �1  �    i  V Y I      �0�/�.�0 0 	getvalues 	getValues�/  �.   k     F  h     �-�- 0 
listobject 
listObject j     �,�, 
0 _list_   J     �+�+   	
	 X    @�* k    ;  r     n    1    �)
�) 
pcnt o    �(�( 0 	bucketref 	bucketRef o      �'�' 0 mybucket myBucket �& V     ; k   ( 6  r   ( 0 n  ( + o   ) +�%�% 0 v   o   ( )�$�$ 0 mybucket myBucket n        ;   . / n  + . !  o   , .�#�# 
0 _list_  ! o   + ,�"�" 0 
listobject 
listObject "�!" r   1 6#$# n  1 4%&% o   2 4� �  0 nextitem nextItem& o   1 2�� 0 mybucket myBucket$ o      �� 0 mybucket myBucket�!   >  $ ''(' o   $ %�� 0 mybucket myBucket( m   % &�
� 
msng�&  �* 0 	bucketref 	bucketRef n   )*) o    �� 0 _buckets  *  f    
 +�+ L   A F,, n  A E-.- o   B D�� 
0 _list_  . o   A B�� 0 
listobject 
listObject�   /�/ l     ����  �  �  �  ��   � � { key-value collection, analogous to NSMutableDictionary (note: keys must be text, or objects that reliably coerce to text)	    � �00 �   k e y - v a l u e   c o l l e c t i o n ,   a n a l o g o u s   t o   N S M u t a b l e D i c t i o n a r y   ( n o t e :   k e y s   m u s t   b e   t e x t ,   o r   o b j e c t s   t h a t   r e l i a b l y   c o e r c e   t o   t e x t ) 	 � 121 l     ����  �  �  2 343 l     ����  �  �  4 565 i   787 I     ���
� .Typ:StaOnull��� ��� null�  �  8 l    9:;9 h     �
<�
 "0 stackcollection StackCollection< k      == >?> l     �	���	  �  �  ? @A@ j     �B� 	0 _head  B m     �
� 
msngA CDC j    �E� 
0 _count  E m    ��  D FGF l     ��� �  �  �   G HIH i   	JKJ I      ��L���� 
0 _error  L MNM o      ���� 0 handlername handlerNameN OPO o      ���� 0 etext eTextP QRQ o      ���� 0 enumber eNumberR STS o      ���� 0 efrom eFromT U��U o      ���� 
0 eto eTo��  ��  K n    VWV I    ��X���� $0 throwmethoderror throwMethodErrorX YZY m    [[ �\\  O b j e c t sZ ]^] m    __ �``  S t a c k C o l l e c t i o n^ aba o    ���� 0 handlername handlerNameb cdc o    	���� 0 etext eTextd efe o   	 
���� 0 enumber eNumberf ghg o   
 ���� 0 efrom eFromh i��i o    ���� 
0 eto eTo��  ��  W o     ���� 0 _support  I jkj l     ��������  ��  ��  k lml i  
 non I      �������� 0 
countitems 
countItems��  ��  o L     pp o     ���� 
0 _count  m qrq l     ��������  ��  ��  r sts i   uvu I      ��w���� 0 additem addItemw x��x o      ���� 0 thevalue theValue��  ��  v k     !yy z{z l     ��|}��  | . ( add a new value to the top of the stack   } �~~ P   a d d   a   n e w   v a l u e   t o   t h e   t o p   o f   t h e   s t a c k{ � r     ��� K     
�� ������ 0 v  � o    ���� 0 thevalue theValue� ������� 0 nextitem nextItem� o    ���� 	0 _head  ��  � o      ���� 	0 _head  � ��� r    ��� [    ��� o    ���� 
0 _count  � m    ���� � o      ���� 
0 _count  � ���� L    !����  ��  t ��� l     ��������  ��  ��  � ��� i   ��� I      �������� 0 
removeitem 
removeItem��  ��  � l    R���� Q     R���� k    @�� ��� Z   ������� =   
��� o    ���� 	0 _head  � m    	��
�� 
msng� R    ����
�� .ascrerr ****      � ****� m    �� ���  S t a c k   i s   e m p t y .� �����
�� 
errn� m    �����@��  ��  ��  � ��� r    !��� n    ��� o    ���� 0 v  � o    ���� 	0 _head  � o      ���� 0 thevalue theValue� ��� r   " /��� n   " )��� o   ' )���� 0 nextitem nextItem� o   " '���� 	0 _head  � o      ���� 	0 _head  � ��� r   0 =��� \   0 7��� o   0 5���� 
0 _count  � m   5 6���� � o      ���� 
0 _count  � ���� L   > @�� o   > ?���� 0 thevalue theValue��  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 etext eText� ����
�� 
errn� o      ���� 0 enumber eNumber� ����
�� 
erob� o      ���� 0 efrom eFrom� �����
�� 
errt� o      ���� 
0 eto eTo��  � I   H R������� 
0 _error  � ��� m   I J�� ���  r e m o v e I t e m� ��� o   J K���� 0 etext eText� ��� o   K L���� 0 enumber eNumber� ��� o   L M���� 0 efrom eFrom� ���� o   M N���� 
0 eto eTo��  ��  � * $ remove and return the topmost value   � ��� H   r e m o v e   a n d   r e t u r n   t h e   t o p m o s t   v a l u e� ��� l     ��������  ��  ��  � ��� i   ��� I      ��������  0 deleteallitems deleteAllItems��  ��  � k     �� ��� r     ��� m     ��
�� 
msng� o      ���� 	0 _head  � ��� r    ��� m    	����  � o      ���� 
0 _count  � ���� L    ����  ��  � ��� l     ��������  ��  ��  � ��� i   ��� I      �������� 0 getitem getItem��  ��  � l    3���� Q     3���� k    !�� ��� Z   ������� =   
��� o    ���� 	0 _head  � m    	��
�� 
msng� R    ����
�� .ascrerr ****      � ****� m    �� ���  S t a c k   i s   e m p t y .� �����
�� 
errn� m    �����@��  ��  ��  � ���� L    !�� n     ��� o    ���� 0 v  � o    ���� 	0 _head  ��  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 etext eText� ����
�� 
errn� o      ���� 0 enumber eNumber� ����
�� 
erob� o      ���� 0 efrom eFrom� �� ��
�� 
errt  o      ���� 
0 eto eTo��  � I   ) 3������ 
0 _error    m   * + �  g e t I t e m  o   + ,���� 0 etext eText 	 o   , -���� 0 enumber eNumber	 

 o   - .���� 0 efrom eFrom �� o   . /�� 
0 eto eTo��  ��  � 3 - return the topmost value without removing it   � � Z   r e t u r n   t h e   t o p m o s t   v a l u e   w i t h o u t   r e m o v i n g   i t�  l     �~�}�|�~  �}  �|    i   ! I      �{�z�y�{ &0 objectdescription objectDescription�z  �y   L     
 b     	 b      m      � & � s t a c k   c o l l e c t i o n   ( o    �x�x 
0 _count   m     �    i t e m s ) �  l     �w�v�u�w  �v  �u     i  " %!"! I      �t�s�r�t 0 
copyobject 
copyObject�s  �r  " k     i## $%$ r     &'& I    �q�p�o
�q .Typ:StaOnull��� ��� null�p  �o  ' o      �n�n 0 	newobject 	newObject% ()( Z    f*+�m�l* ?    ,-, o    �k�k 
0 _count  - m    �j�j  + k    b.. /0/ r    121 o    �i�i 
0 _count  2 n     343 o    �h�h 
0 _count  4 o    �g�g 0 	newobject 	newObject0 565 r    *787 K    (99 �f:;�f 0 v  : n   $<=< o   " $�e�e 0 v  = o    "�d�d 	0 _head  ; �c>�b�c 0 nextitem nextItem> m   % &�a
�a 
msng�b  8 o      �`�` 0 newhead newHead6 ?@? r   + 0ABA o   + ,�_�_ 0 newhead newHeadB n     CDC o   - /�^�^ 	0 _head  D o   , -�]�] 0 	newobject 	newObject@ EFE r   1 :GHG n  1 8IJI o   6 8�\�\ 0 nextitem nextItemJ o   1 6�[�[ 	0 _head  H o      �Z�Z 0 oldhead oldHeadF K�YK V   ; bLML k   C ]NN OPO r   C MQRQ K   C KSS �XTU�X 0 v  T n  D GVWV o   E G�W�W 0 v  W o   D E�V�V 0 oldhead oldHeadU �UX�T�U 0 nextitem nextItemX m   H I�S
�S 
msng�T  R o      �R�R 0 tmp  P YZY r   N S[\[ o   N O�Q�Q 0 tmp  \ n     ]^] o   P R�P�P 0 nextitem nextItem^ o   O P�O�O 0 newhead newHeadZ _`_ r   T Waba o   T U�N�N 0 tmp  b o      �M�M 0 newhead newHead` c�Lc r   X ]ded n  X [fgf o   Y [�K�K 0 nextitem nextItemg o   X Y�J�J 0 oldhead oldHeade o      �I�I 0 oldhead oldHead�L  M >  ? Bhih o   ? @�H�H 0 oldhead oldHeadi m   @ A�G
�G 
msng�Y  �m  �l  ) j�Fj L   g ikk o   g h�E�E 0 	newobject 	newObject�F    l�Dl l     �C�B�A�C  �B  �A  �D  : !  Last-In-First-Out sequence   ; �mm 6   L a s t - I n - F i r s t - O u t   s e q u e n c e6 non l     �@�?�>�@  �?  �>  o pqp l     �=�<�;�=  �<  �;  q rsr i   tut I     �:�9�8
�: .Typ:QueOnull��� ��� null�9  �8  u l    vwxv h     �7y�7 "0 queuecollection QueueCollectiony k      zz {|{ l     �6�5�4�6  �5  �4  | }~} j     �3�3 	0 _back   m     �2
�2 
msng~ ��� j    �1��1 
0 _front  � m    �0
�0 
msng� ��� j    �/��/ 
0 _count  � m    �.�.  � ��� l     �-�,�+�-  �,  �+  � ��� i  	 ��� I      �*��)�* 
0 _error  � ��� o      �(�( 0 handlername handlerName� ��� o      �'�' 0 etext eText� ��� o      �&�& 0 enumber eNumber� ��� o      �%�% 0 efrom eFrom� ��$� o      �#�# 
0 eto eTo�$  �)  � n    ��� I    �"��!�" $0 throwmethoderror throwMethodError� ��� m    �� ���  O b j e c t s� ��� m    �� ���  Q u e u e C o l l e c t i o n� ��� o    � �  0 handlername handlerName� ��� o    	�� 0 etext eText� ��� o   	 
�� 0 enumber eNumber� ��� o   
 �� 0 efrom eFrom� ��� o    �� 
0 eto eTo�  �!  � o     �� 0 _support  � ��� l     ����  �  �  � ��� i   ��� I      ���� 0 
countitems 
countItems�  �  � L     �� o     �� 
0 _count  � ��� l     ����  �  �  � ��� i   ��� I      ���� 0 additem addItem� ��� o      �� 0 thevalue theValue�  �  � k     S�� ��� l     ����  � / ) add a new value to the back of the queue   � ��� R   a d d   a   n e w   v a l u e   t o   t h e   b a c k   o f   t h e   q u e u e� ��� r     ��� K     �� �
���
 0 v  � o    �	�	 0 thevalue theValue� ���� 0 nextitem nextItem� m    �
� 
msng�  � o      �� 0 nextitem nextItem� ��� Z  	  ����� >  	 ��� o   	 �� 	0 _back  � m    �
� 
msng� r    ��� o    � �  0 nextitem nextItem� n      ��� o    ���� 0 nextitem nextItem� o    ���� 	0 _back  �  �  � ��� r   ! (��� o   ! "���� 0 nextitem nextItem� o      ���� 	0 _back  � ��� Z  ) B������� =  ) 0��� o   ) .���� 
0 _front  � m   . /��
�� 
msng� r   3 >��� o   3 8���� 	0 _back  � o      ���� 
0 _front  ��  ��  � ��� r   C P��� [   C J��� o   C H���� 
0 _count  � m   H I���� � o      ���� 
0 _count  � ���� L   Q S����  ��  � ��� l     ��������  ��  ��  � ��� i   ��� I      �������� 0 
removeitem 
removeItem��  ��  � l    h���� Q     h���� k    V�� ��� Z   ������� =   
��� o    ���� 
0 _front  � m    	��
�� 
msng� R    ����
�� .ascrerr ****      � ****� m    �� ���  Q u e u e   i s   e m p t y .� �����
�� 
errn� m    �����@��  ��  ��  � ��� r    !��� n       o    ���� 0 v   o    ���� 
0 _front  � o      ���� 0 thevalue theValue�  r   " / n   " ) o   ' )���� 0 nextitem nextItem o   " '���� 
0 _front   o      ���� 
0 _front   	 Z  0 E
����
 =  0 7 o   0 5���� 
0 _front   m   5 6��
�� 
msng r   : A m   : ;��
�� 
msng o      ���� 	0 _back  ��  ��  	  r   F S \   F M o   F K���� 
0 _count   m   K L����  o      ���� 
0 _count   �� L   T V o   T U���� 0 thevalue theValue��  � R      ��
�� .ascrerr ****      � **** o      ���� 0 etext eText ��
�� 
errn o      ���� 0 enumber eNumber ��
�� 
erob o      ���� 0 efrom eFrom ����
�� 
errt o      ���� 
0 eto eTo��  � I   ^ h������ 
0 _error    !  m   _ `"" �##  r e m o v e I t e m! $%$ o   ` a���� 0 etext eText% &'& o   a b���� 0 enumber eNumber' ()( o   b c���� 0 efrom eFrom) *��* o   c d���� 
0 eto eTo��  ��  � < 6 remove and return the value at the front of the queue   � �++ l   r e m o v e   a n d   r e t u r n   t h e   v a l u e   a t   t h e   f r o n t   o f   t h e   q u e u e� ,-, l     ��������  ��  ��  - ./. i   010 I      ��������  0 deleteallitems deleteAllItems��  ��  1 k     22 343 r     565 m     ��
�� 
msng6 o      ���� 	0 _back  4 787 r    9:9 m    	��
�� 
msng: o      ���� 
0 _front  8 ;<; r    =>= m    ����  > o      ���� 
0 _count  < ?��? L    ����  ��  / @A@ l     ��������  ��  ��  A BCB i    DED I      �������� 0 getitem getItem��  ��  E l    3FGHF Q     3IJKI k    !LL MNM Z   OP����O =   
QRQ o    ���� 
0 _front  R m    	��
�� 
msngP R    ��ST
�� .ascrerr ****      � ****S m    UU �VV  Q u e u e   i s   e m p t y .T ��W��
�� 
errnW m    �����@��  ��  ��  N X��X L    !YY n     Z[Z o    ���� 0 v  [ o    ���� 
0 _front  ��  J R      ��\]
�� .ascrerr ****      � ****\ o      ���� 0 etext eText] ��^_
�� 
errn^ o      ���� 0 enumber eNumber_ ��`a
�� 
erob` o      ���� 0 efrom eFroma ��b��
�� 
errtb o      ���� 
0 eto eTo��  K I   ) 3��c���� 
0 _error  c ded m   * +ff �gg  g e t I t e me hih o   + ,���� 0 etext eTexti jkj o   , -���� 0 enumber eNumberk lml o   - .���� 0 efrom eFromm n��n o   . /���� 
0 eto eTo��  ��  G E ? return the value at the front of the queue without removing it   H �oo ~   r e t u r n   t h e   v a l u e   a t   t h e   f r o n t   o f   t h e   q u e u e   w i t h o u t   r e m o v i n g   i tC pqp l     ��������  ��  ��  q rsr i  ! $tut I      �������� &0 objectdescription objectDescription��  ��  u L     
vv b     	wxw b     yzy m     {{ �|| & � q u e u e   c o l l e c t i o n   (z o    ���� 
0 _count  x m    }} �~~    i t e m s ) �s � l     ��������  ��  ��  � ��� i  % (��� I      �������� 0 
copyobject 
copyObject��  ��  � k     o�� ��� r     ��� I    ������
�� .Typ:QueOnull��� ��� null��  ��  � o      ���� 0 	newobject 	newObject� ��� Z    l������� ?    ��� o    �� 
0 _count  � m    �~�~  � k    h�� ��� r    ��� o    �}�} 
0 _count  � n     ��� o    �|�| 
0 _count  � o    �{�{ 0 	newobject 	newObject� ��� r    *��� K    (�� �z���z 0 v  � n   $��� o   " $�y�y 0 v  � o    "�x�x 
0 _front  � �w��v�w 0 nextitem nextItem� m   % &�u
�u 
msng�v  � o      �t�t 0 newfront newFront� ��� r   + 0��� o   + ,�s�s 0 newfront newFront� n     ��� o   - /�r�r 
0 _front  � o   , -�q�q 0 	newobject 	newObject� ��� r   1 :��� n  1 8��� o   6 8�p�p 0 nextitem nextItem� o   1 6�o�o 
0 _front  � o      �n�n 0 oldfront oldFront� ��� V   ; b��� k   C ]�� ��� r   C M��� K   C K�� �m���m 0 v  � n  D G��� o   E G�l�l 0 v  � o   D E�k�k 0 oldfront oldFront� �j��i�j 0 nextitem nextItem� m   H I�h
�h 
msng�i  � o      �g�g 0 tmp  � ��� r   N S��� o   N O�f�f 0 tmp  � n     ��� o   P R�e�e 0 nextitem nextItem� o   O P�d�d 0 newfront newFront� ��� r   T W��� o   T U�c�c 0 tmp  � o      �b�b 0 newfront newFront� ��a� r   X ]��� n  X [��� o   Y [�`�` 0 nextitem nextItem� o   X Y�_�_ 0 oldfront oldFront� o      �^�^ 0 oldfront oldFront�a  � >  ? B��� o   ? @�]�] 0 oldfront oldFront� m   @ A�\
�\ 
msng� ��[� r   c h��� o   c d�Z�Z 0 newfront newFront� n     ��� o   e g�Y�Y 	0 _back  � o   d e�X�X 0 	newobject 	newObject�[  ��  ��  � ��W� L   m o�� o   m n�V�V 0 	newobject 	newObject�W  � ��U� l     �T�S�R�T  �S  �R  �U  w "  First-In-First-Out sequence   x ��� 8   F i r s t - I n - F i r s t - O u t   s e q u e n c es ��� l     �Q�P�O�Q  �P  �O  � ��� l     �N�M�L�N  �M  �L  � ��K� l     �J�I�H�J  �I  �H  �K       �G��������G  � �F�E�D�C�B�A�F 0 _support  �E 
0 _error  �D  0 _makeemptylist _makeEmptyList
�C .Typ:DicOnull��� ��� null
�B .Typ:StaOnull��� ��� null
�A .Typ:QueOnull��� ��� null� ��   �@ "
�@ 
scpt� �? *�>�=���<�? 
0 _error  �> �;��; �  �:�9�8�7�6�: 0 handlername handlerName�9 0 etext eText�8 0 enumber eNumber�7 0 efrom eFrom�6 
0 eto eTo�=  � �5�4�3�2�1�5 0 handlername handlerName�4 0 etext eText�3 0 enumber eNumber�2 0 efrom eFrom�1 
0 eto eTo�  :�0�/�0 �/ &0 throwcommanderror throwCommandError�< b   ࠡ����+ � �. X�-�,���+�.  0 _makeemptylist _makeEmptyList�- �*��* �  �)�) 0 n  �,  � �(�'�( 0 n  �' 0 l  � �&
�& 
msng�+ "�kvE�O h�k��%E�O�l"E�[OY��O�� �% ��$�#���"
�% .Typ:DicOnull��� ��� null�$  �#  � �!�! ,0 dictionarycollection DictionaryCollection� �  ���  ,0 dictionarycollection DictionaryCollection� �������
� .ascrinit****      � ****� k     Y��  ���  ���  ���  ���  ���  ��� ��� ��� [�� ��� ��� Q�� k�� z�� �� #�� �	 	  �		  ��  �  �  � �����������������
�	�
� 
pimr� 0 _buckets  � 	0 _size  � 
0 _count  � 
0 _error  � 0 	_keyindex 	_keyIndex� 0 
countitems 
countItems� 0 additem addItem� 0 
removeitem 
removeItem�  0 deleteallitems deleteAllItems� 0 getitem getItem� 0 containsitem containsItem� &0 objectdescription objectDescription� 0 
copyobject 
copyObject� 0 adddictionary addDictionary� $0 addkeysandvalues addKeysAndValues�
 $0 getkeysandvalues getKeysAndValues�	 0 getkeys getKeys� 0 	getvalues 	getValues� �� ������� 										
						
� 
cobj
� 
frmk� �  0 _makeemptylist _makeEmptyList� 0 _buckets  
� 
leng� 	0 _size  �  
0 _count  	 �� �����		���� 
0 _error  �� ��	�� 	  ������������ 0 handlername handlerName�� 0 etext eText�� 0 enumber eNumber�� 0 efrom eFrom�� 
0 eto eTo��  	 ������������ 0 handlername handlerName�� 0 etext eText�� 0 enumber eNumber�� 0 efrom eFrom�� 
0 eto eTo	  � ������� �� $0 throwmethoderror throwMethodError�� b   �ᠡ����+ 	 �� �����		���� 0 	_keyindex 	_keyIndex�� ��	�� 	  ���� 0 thekey theKey��  	 �������� 0 thekey theKey�� 0 hashnum hashNum�� 0 divnum divNum	 ��������������������������������m�������������	�����
�� 
kocl
�� 
obj 
�� .corecnte****       ****
�� 
list
�� 
bool
�� 
reco
�� 
scpt
�� 
errn���\
�� 
type
�� 
pcls
�� 
enum�� 0 
asnsobject 
asNSObject�� 0 typecodevalue typeCodeValue
�� 
long
�� 
doub��  J�
�� 
ctxt�� ,0 asnormalizednsstring asNormalizedNSString�� 0 hash  �� ��  	 ������
�� 
errn���\��  
�� 
erob�� �� �kv��l j
 �kv��l j�&
 �kv��l j�&
 �kv��l j�& )��lhY hO���mv��,kv b   �k+ j+ E�Y x��lv��,kv C�E�O�k#E�O�j �k�!E�Y hO�j 	�'E�Y hO�a  �a  E�Y hY b   �a &k+ j+ E�O�a  �a "E�Y hO�b  #kW X  )��a �a a 	 �������		���� 0 
countitems 
countItems��  ��  	  	  �� b  	 �������		���� 0 additem addItem�� ��	�� 	  ������ 0 thekey theKey�� 0 thevalue theValue��  	 	�������������������� 0 thekey theKey�� 0 thevalue theValue�� 0 keyindex keyIndex�� 0 	founditem 	foundItem�� 0 oldvalue oldValue�� 0 etext eText�� 0 enumber eNumber�� 0 efrom eFrom�� 
0 eto eTo	 ��������������������	P������ 0 	_keyindex 	_keyIndex�� 0 _buckets  
�� 
cobj
�� 
msng�� 0 k  �� 0 v  �� 0 nextitem nextItem�� �� 0 etext eText	 ����	
�� 
errn�� 0 enumber eNumber	 ����	
�� 
erob�� 0 efrom eFrom	 ������
�� 
errt�� 
0 eto eTo��  �� �� 
0 _error  �� � �*�k+  E�O�EQ�O)�,�/E�O��  (�����)�,�/FOb  kEc  Of�lvY hO�� ] YhZ��,�  ��,E�O���,FOe�lvY hO��,�  %�������,FOb  kEc  Of�lvY hO��,E�[OY��VW X 
 *쥦���+ 	 ��^����	 	!���� 0 
removeitem 
removeItem�� ��	"�� 	"  ���� 0 thekey theKey��  	  
���������������������� 0 thekey theKey�� 0 keyindex keyIndex�� 0 	founditem 	foundItem�� 0 previtem prevItem�� 0 foundkey foundKey�� 0 thevalue theValue�� 0 etext eText�� 0 enumber eNumber�� 0 efrom eFrom�� 
0 eto eTo	! ������wx�������������������	#������� 0 	_keyindex 	_keyIndex�� 0 _buckets  
�� 
cobj
�� 
msng�� 0 k  �� 0 v  �� 0 nextitem nextItem
�� 
errn���@
�� 
erob�� �� 0 etext eText	# ����	$
�� 
errn�� 0 enumber eNumber	$ ����	%
�� 
erob�� 0 efrom eFrom	% ������
�� 
errt�� 
0 eto eTo��  �� �� 
0 _error  �� � �*�k+  E�O)�,�/E�O�� _�E�O Wh����,E�O��  6��,E�O��  ��,)�,�/FY 	��,��,FOb  kEc  O�Y hO�E�O��,E�[OY��VO)�����W X  *a ����a + 	 ���~�}	&	'�|�  0 deleteallitems deleteAllItems�~  �}  	&  	' �{�z�y�x�{ �z  0 _makeemptylist _makeEmptyList�y 0 _buckets  
�x 
leng�| "*�k+ )�,FO)�,�,Ec  OjEc  Oh	 �w�v�u	(	)�t�w 0 getitem getItem�v �s	*�s 	*  �r�r 0 thekey theKey�u  	( �q�p�o�n�m�l�q 0 thekey theKey�p 0 	founditem 	foundItem�o 0 etext eText�n 0 enumber eNumber�m 0 efrom eFrom�l 
0 eto eTo	) �k�j�i�h�g�f�e�d�c�b�a7�`	+F�_�^�k 0 _buckets  
�j 
cobj�i 0 	_keyindex 	_keyIndex
�h 
msng�g 0 k  �f 0 v  �e 0 nextitem nextItem
�d 
errn�c�@
�b 
erob�a �` 0 etext eText	+ �]�\	,
�] 
errn�\ 0 enumber eNumber	, �[�Z	-
�[ 
erob�Z 0 efrom eFrom	- �Y�X�W
�Y 
errt�X 
0 eto eTo�W  �_ �^ 
0 _error  �t [ F�� 5)�,�*�k+ /E�O #h����,�  
��,EY hO��,E�[OY��VO)�����W X  *a ����a + 		 �VT�U�T	.	/�S�V 0 containsitem containsItem�U �R	0�R 	0  �Q�Q 0 thekey theKey�T  	. �P�P 0 thekey theKey	/ �O�N	1�O 0 getitem getItem�N  	1 �M�L�K
�M 
errn�L�@�K  �S  *�k+  OeW 	X  f	
 �Jn�I�H	2	3�G�J &0 objectdescription objectDescription�I  �H  	2  	3 tv�G �b  %�%	 �F}�E�D	4	5�C�F 0 
copyobject 
copyObject�E  �D  	4 	�B�A�@�?�>�=�<�;�:�B 0 	newobject 	newObject�A 0 i  �@ 0 	oldbucket 	oldBucket�? 0 	newbucket 	newBucket�> 0 tmp  �= 0 etext eText�< 0 enumber eNumber�; 0 efrom eFrom�: 
0 eto eTo	5 �9�8�7��6�5�4�3�2�1�0	6�/�.
�9 .Typ:DicOnull��� ��� null�8 0 _buckets  
�7 
leng
�6 
cobj
�5 
msng�4 0 k  �3 0 v  �2 0 nextitem nextItem�1 �0 0 etext eText	6 �-�,	7
�- 
errn�, 0 enumber eNumber	7 �+�*	8
�+ 
erob�* 0 efrom eFrom	8 �)�(�'
�) 
errt�( 
0 eto eTo�'  �/ �. 
0 _error  �C � �*j  E�Ob  j �)�,�,��,�, 	)j�Y hO kk)�,�,Ekh )�,�/E�O�� J��,��,���E�O���,�/FO ,h��,���,E�O��,��,���E�O���,FO�E�[OY��Y h[OY��Y hO�W X 
 *쥦���+ 	 �&�%�$	9	:�#�& 0 adddictionary addDictionary�% �"	;�" 	;  �!�! $0 dictionaryobject dictionaryObject�$  	9 	� ���������  $0 dictionaryobject dictionaryObject� 0 i  � 0 otherbucket otherBucket� 0 mybucket myBucket� 0 tmp  � 0 etext eText� 0 enumber eNumber� 0 efrom eFrom� 
0 eto eTo	: ���:?@�������	<��� 0 
countitems 
countItems� 0 _buckets  
� 
leng
� 
cobj
� 
msng� 0 k  � 0 v  � 0 nextitem nextItem� � 0 etext eText	< ��
	=
� 
errn�
 0 enumber eNumber	= �	�	>
�	 
erob� 0 efrom eFrom	> ���
� 
errt� 
0 eto eTo�  � � 
0 _error  �#/�j+  j)�,�,��,�, 	)j�Y hO�� � �k��,�,Ekh ��,�/E�O�� �)�,�/E�O��  J��,��,���E�O�)�,�/FO ,h��,���,E�O��,��,���E�O���,FO�E�[OY��Y o lh���E�O UhZ��,��,   �[�,\[�,\Zlv�[�,\[�,\ZlvFOY  ��,�  ��,��,�����,FOY hO��,E�[OY��O��,E�[OY��Y h[OY�#VY hOhW X  *���+ 	 �&��	?	@�� $0 addkeysandvalues addKeysAndValues� � 	A�  	A  ���� 0 keyvaluelist keyValueList�  	? 	�������������������� 0 keyvaluelist keyValueList�� 0 
listobject 
listObject�� 0 aref aRef�� 0 keyvalue keyValue�� 0 n  �� 0 etext eText�� 0 enumber eNumber�� 0 efrom eFrom�� 
0 eto eTo	@ ��������������>��E	B��������������	Cz��	D�����
�� 
kocl
�� 
list
�� .corecnte****       ****
�� 
errn���\
�� 
erob�� �� 0 
listobject 
listObject	B ��	E����	F	G��
�� .ascrinit****      � ****	E k     	H	H E����  ��  ��  	F ���� 
0 _list_  	G ���� 
0 _list_  �� b   ��� 
0 _list_  
�� 
cobj
�� 
pcnt
�� 
leng
�� 
bool�� 0 additem addItem��  	C ������
�� 
errn�� 0 n  ��  �� 0 etext eText	D ����	I
�� 
errn�� 0 enumber eNumber	I ����	J
�� 
erob�� 0 efrom eFrom	J ������
�� 
errt�� 
0 eto eTo��  �� �� 
0 _error  � � ��kv��l j  )�����Y hO��K 
S�O a��,[��l kh ��,E�O 5�kv��l j 
 	��,l�& )��lhY hO*��k/��l/l+ W X  )���a [OY��OhW X  *a ����a + 	 �������	K	L���� $0 getkeysandvalues getKeysAndValues��  ��  	K �������� 0 
listobject 
listObject�� 0 	bucketref 	bucketRef�� 0 mybucket myBucket	L ���	M���������������������� 0 
listobject 
listObject	M ��	N����	O	P��
�� .ascrinit****      � ****	N k     	Q	Q �����  ��  ��  	O ���� 
0 _list_  	P ���� 
0 _list_  �� jv��� 0 _buckets  
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pcnt
�� 
msng�� 0 k  �� 0 v  �� 
0 _list_  �� 0 nextitem nextItem�� L��K S�O <)�,[��l kh ��,E�O h����,��,lv��,6FO��,E�[OY��[OY��O��,E	 �������	R	S���� 0 getkeys getKeys��  ��  	R �������� 0 
listobject 
listObject�� 0 	bucketref 	bucketRef�� 0 mybucket myBucket	S ���	T�������������������� 0 
listobject 
listObject	T ��	U����	V	W��
�� .ascrinit****      � ****	U k     	X	X �����  ��  ��  	V ���� 
0 _list_  	W ���� 
0 _list_  �� jv��� 0 _buckets  
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pcnt
�� 
msng�� 0 k  �� 
0 _list_  �� 0 nextitem nextItem�� G��K S�O 7)�,[��l kh ��,E�O h����,��,6FO��,E�[OY��[OY��O��,E	 ������	Y	Z���� 0 	getvalues 	getValues��  ��  	Y �������� 0 
listobject 
listObject�� 0 	bucketref 	bucketRef�� 0 mybucket myBucket	Z ��	[�������������������� 0 
listobject 
listObject	[ ��	\����	]	^��
�� .ascrinit****      � ****	\ k     	_	_ ����  ��  ��  	] ���� 
0 _list_  	^ ���� 
0 _list_  �� jv��� 0 _buckets  
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pcnt
�� 
msng�� 0 v  �� 
0 _list_  �� 0 nextitem nextItem�� G��K S�O 7)�,[��l kh ��,E�O h����,��,6FO��,E�[OY��[OY��O��,E� Z�*��/lkv�*�k+ �O)�,�,E�Oj�OL 	OL 
OL OL OL OL OL OL OL OL OL OL OL OL OL �" ��K S�� ��8����	`	a��
�� .Typ:StaOnull��� ��� null��  ��  	` ���� "0 stackcollection StackCollection	a ��<	b�� "0 stackcollection StackCollection	b ��	c����	d	e��
�� .ascrinit****      � ****	c k     %	f	f @	g	g C	h	h H	i	i l	j	j s	k	k �	l	l �	m	m �	n	n 	o	o ��  ��  ��  	d 
�~�}�|�{�z�y�x�w�v�u�~ 	0 _head  �} 
0 _count  �| 
0 _error  �{ 0 
countitems 
countItems�z 0 additem addItem�y 0 
removeitem 
removeItem�x  0 deleteallitems deleteAllItems�w 0 getitem getItem�v &0 objectdescription objectDescription�u 0 
copyobject 
copyObject	e �t�s�r	p	q	r	s	t	u	v	w
�t 
msng�s 	0 _head  �r 
0 _count  	p �qK�p�o	x	y�n�q 
0 _error  �p �m	z�m 	z  �l�k�j�i�h�l 0 handlername handlerName�k 0 etext eText�j 0 enumber eNumber�i 0 efrom eFrom�h 
0 eto eTo�o  	x �g�f�e�d�c�g 0 handlername handlerName�f 0 etext eText�e 0 enumber eNumber�d 0 efrom eFrom�c 
0 eto eTo	y [_�b�a�b �a $0 throwmethoderror throwMethodError�n b   �ᠡ����+ 	q �`o�_�^	{	|�]�` 0 
countitems 
countItems�_  �^  	{  	|  �] b  	r �\v�[�Z	}	~�Y�\ 0 additem addItem�[ �X	�X 	  �W�W 0 thevalue theValue�Z  	} �V�V 0 thevalue theValue	~ �U�T�S�U 0 v  �T 0 nextitem nextItem�S �Y "��b   �Ec   Ob  kEc  Oh	s �R��Q�P	�	��O�R 0 
removeitem 
removeItem�Q  �P  	� �N�M�L�K�J�N 0 thevalue theValue�M 0 etext eText�L 0 enumber eNumber�K 0 efrom eFrom�J 
0 eto eTo	� �I�H�G��F�E�D	���C�B
�I 
msng
�H 
errn�G�@�F 0 v  �E 0 nextitem nextItem�D 0 etext eText	� �A�@	�
�A 
errn�@ 0 enumber eNumber	� �?�>	�
�? 
erob�> 0 efrom eFrom	� �=�<�;
�= 
errt�< 
0 eto eTo�;  �C �B 
0 _error  �O S Bb   �  )��l�Y hOb   �,E�Ob   �,Ec   Ob  kEc  O�W X  *衢���+ 
	t �:��9�8	�	��7�:  0 deleteallitems deleteAllItems�9  �8  	�  	� �6
�6 
msng�7 �Ec   OjEc  Oh	u �5��4�3	�	��2�5 0 getitem getItem�4  �3  	� �1�0�/�.�1 0 etext eText�0 0 enumber eNumber�/ 0 efrom eFrom�. 
0 eto eTo	� 
�-�,�+��*�)	��(�'
�- 
msng
�, 
errn�+�@�* 0 v  �) 0 etext eText	� �&�%	�
�& 
errn�% 0 enumber eNumber	� �$�#	�
�$ 
erob�# 0 efrom eFrom	� �"�!� 
�" 
errt�! 
0 eto eTo�   �( �' 
0 _error  �2 4 #b   �  )��l�Y hOb   �,EW X  *砡���+ 		v ���	�	��� &0 objectdescription objectDescription�  �  	�  	� � �b  %�%	w �"��	�	��� 0 
copyobject 
copyObject�  �  	� ����� 0 	newobject 	newObject� 0 newhead newHead� 0 oldhead oldHead� 0 tmp  	� �������
� .Typ:StaOnull��� ��� null� 
0 _count  � 0 v  � 0 nextitem nextItem
� 
msng� � 	0 _head  � j*j  E�Ob  j Ub  ��,FO�b   �,���E�O���,FOb   �,E�O &h����,���E�O���,FO�E�O��,E�[OY��Y hO��� &�Oj�OL OL OL OL OL OL OL 	OL 
�� ��K S�� �u��
	�	��	
� .Typ:QueOnull��� ��� null�  �
  	� �� "0 queuecollection QueueCollection	� �y	�� "0 queuecollection QueueCollection	� �	���	�	��
� .ascrinit****      � ****	� k     (	�	� }	�	� �	�	� �	�	� �	�	� �	�	� �	�	� �	�	� .	�	� B	�	� r	�	� ���  �  �  	� �� ������������������� 	0 _back  �  
0 _front  �� 
0 _count  �� 
0 _error  �� 0 
countitems 
countItems�� 0 additem addItem�� 0 
removeitem 
removeItem��  0 deleteallitems deleteAllItems�� 0 getitem getItem�� &0 objectdescription objectDescription�� 0 
copyobject 
copyObject	� ��������	�	�	�	�	�	�	�	�
�� 
msng�� 	0 _back  �� 
0 _front  �� 
0 _count  	� �������	�	����� 
0 _error  �� ��	��� 	�  ������������ 0 handlername handlerName�� 0 etext eText�� 0 enumber eNumber�� 0 efrom eFrom�� 
0 eto eTo��  	� ������������ 0 handlername handlerName�� 0 etext eText�� 0 enumber eNumber�� 0 efrom eFrom�� 
0 eto eTo	� �������� �� $0 throwmethoderror throwMethodError�� b   �ᠡ����+ 	� �������	�	����� 0 
countitems 
countItems��  ��  	�  	�  �� b  	� �������	�	����� 0 additem addItem�� ��	��� 	�  ���� 0 thevalue theValue��  	� ������ 0 thevalue theValue�� 0 nextitem nextItem	� ���������� 0 v  �� 0 nextitem nextItem
�� 
msng�� �� T����E�Ob   � �b   �,FY hO�Ec   Ob  �  b   Ec  Y hOb  kEc  Oh	� �������	�	����� 0 
removeitem 
removeItem��  ��  	� ������������ 0 thevalue theValue�� 0 etext eText�� 0 enumber eNumber�� 0 efrom eFrom�� 
0 eto eTo	� �������������	�"����
�� 
msng
�� 
errn���@�� 0 v  �� 0 nextitem nextItem�� 0 etext eText	� ����	�
�� 
errn�� 0 enumber eNumber	� ����	�
�� 
erob�� 0 efrom eFrom	� ������
�� 
errt�� 
0 eto eTo��  �� �� 
0 _error  �� i Xb  �  )��l�Y hOb  �,E�Ob  �,Ec  Ob  �  �Ec   Y hOb  kEc  O�W X  *衢���+ 
	� ��1����	�	�����  0 deleteallitems deleteAllItems��  ��  	�  	� ��
�� 
msng�� �Ec   O�Ec  OjEc  Oh	� ��E����	�	����� 0 getitem getItem��  ��  	� ���������� 0 etext eText�� 0 enumber eNumber�� 0 efrom eFrom�� 
0 eto eTo	� 
������U����	�f����
�� 
msng
�� 
errn���@�� 0 v  �� 0 etext eText	� ����	�
�� 
errn�� 0 enumber eNumber	� ����	�
�� 
erob�� 0 efrom eFrom	� ������
�� 
errt�� 
0 eto eTo��  �� �� 
0 _error  �� 4 #b  �  )��l�Y hOb  �,EW X  *砡���+ 		� ��u����	�	����� &0 objectdescription objectDescription��  ��  	�  	� {}�� �b  %�%	� �������	�	����� 0 
copyobject 
copyObject��  ��  	� ���������� 0 	newobject 	newObject�� 0 newfront newFront�� 0 oldfront oldFront�� 0 tmp  	� ����������������
�� .Typ:QueOnull��� ��� null�� 
0 _count  �� 0 v  �� 0 nextitem nextItem
�� 
msng�� �� 
0 _front  �� 	0 _back  �� p*j  E�Ob  j [b  ��,FO�b  �,���E�O���,FOb  �,E�O &h����,���E�O���,FO�E�O��,E�[OY��O���,FY hO�� )�O�Oj�OL OL OL OL OL OL 	OL 
OL �	 ��K S� ascr  ��ޭ