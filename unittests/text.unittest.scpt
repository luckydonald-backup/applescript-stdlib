FasdUAS 1.101.10   ��   ��    k             x     �� ����    4   % )�� 
�� 
scpt  m   ' ( 	 	 � 
 
  T e s t T o o l s��        x    �� ����    2   ��
�� 
osax��        l     ��������  ��  ��        l          x    $�� ����    4   . 2�� 
�� 
scpt  m   0 1   �    T e x t��      the script being tested     �   0   t h e   s c r i p t   b e i n g   t e s t e d      l     ��������  ��  ��        l     ��������  ��  ��        h   $ +��  �� $0 suite_modifytext suite_ModifyText   k       ! !  " # " l      �� $ %��   $2,	to configure_skipTests()		return "checking suite skipping works" -- skip all tests in this suite		return {test_uppercase:"checking per-test skipping works", test_lowercase:missing value} -- skip 'test_uppercase only'		return missing value -- do all tests in this suite	end configure_skipTests	    % � & &X  	 t o   c o n f i g u r e _ s k i p T e s t s ( )  	 	 r e t u r n   " c h e c k i n g   s u i t e   s k i p p i n g   w o r k s "   - -   s k i p   a l l   t e s t s   i n   t h i s   s u i t e  	 	 r e t u r n   { t e s t _ u p p e r c a s e : " c h e c k i n g   p e r - t e s t   s k i p p i n g   w o r k s " ,   t e s t _ l o w e r c a s e : m i s s i n g   v a l u e }   - -   s k i p   ' t e s t _ u p p e r c a s e   o n l y '  	 	 r e t u r n   m i s s i n g   v a l u e   - -   d o   a l l   t e s t s   i n   t h i s   s u i t e  	 e n d   c o n f i g u r e _ s k i p T e s t s  	 #  ' ( ' i     ) * ) I      �������� 0 test_uppercase  ��  ��   * k     � + +  , - , I    ! .�� / . z�� 
�� .���:AsRenull��� ��� null��   / �� 0 1
�� 
Valu 0 l  	  2���� 2 I  	  3 4�� 3 z�� 
�� .Txt:UppTnull���     ctxt 4 b     5 6 5 m     7 7 � 8 8  f o �   b � r 6 1    ��
�� 
lnfd��  ��  ��   1 �� 9��
�� 
Equa 9 b     : ; : m     < < � = =  F O �   B � R ; 1    ��
�� 
lnfd��   -  > ? > I  " A @�� A @ z�� 
�� .���:AsRenull��� ��� null��   A �� B C
�� 
Valu B l  + 8 D���� D I  + 8 E F�� E z�� 
�� .Txt:UppTnull���     ctxt F m   2 3 G G @      ��  ��  ��   C �� H��
�� 
Equa H l  9 < I���� I c   9 < J K J m   9 : L L @       K m   : ;��
�� 
ctxt��  ��  ��   ?  M�� M X   B � N�� O N I  b � P�� Q P z�� 
�� .���:AsErnull��� ��� null��   Q �� R S
�� 
Args R n  o t T U T 1   p t��
�� 
pcnt U o   o p���� 0 aref aRef S �� V��
�� 
Equa V K   u } W W �� X���� 0 errornumber errorNumber X m   x {�����Y��  ��  �� 0 aref aRef O J   E R Y Y  Z [ Z K   E K \ \ �� ]���� 0 a   ] m   F I ^ ^ � _ _  f o o��   [  `�� ` J   K P a a  b�� b 1   K N��
�� 
ascr��  ��  ��   (  c d c l     ��������  ��  ��   d  e f e i    g h g I      �������� 0 test_lowercase  ��  ��   h k     [ i i  j k j I     l�� m l z�� 
�� .���:AsRenull��� ��� null��   m �� n o
�� 
Valu n l  	  p���� p I  	  q r�� q z�� 
�� .Txt:LowTnull���     ctxt r m     s s � t t  F O � B � R��  ��  ��   o �� u��
�� 
Equa u m     v v � w w  f o � b � r��   k  x�� x X    [ y�� z y I  6 V {�� | { z�� 
�� .���:AsErnull��� ��� null��   | �� } ~
�� 
Args } n  C H  �  1   D H��
�� 
pcnt � o   C D���� 0 aref aRef ~ �� ���
�� 
Equa � K   I Q � � �� ����� 0 errornumber errorNumber � m   L O�����Y��  ��  �� 0 aref aRef z J   ! * � �  � � � K   ! % � � �� ����� 0 a   � m   " # � � � � �  f o o��   �  ��� � J   % ( � �  ��� � 1   % &��
�� 
ascr��  ��  ��   f  � � � l     ��������  ��  ��   �  � � � i    � � � I      �������� 0 test_capitalize  ��  ��   � k     [ � �  � � � I     ��� � � z�� 
�� .���:AsRenull��� ��� null��   � �� � �
�� 
Valu � l  	  ����� � I  	  � ��� � z�� 
�� .Txt:CapTnull���     ctxt � m     � � � � �  F O � B � R��  ��  ��   � �� ���
�� 
Equa � m     � � � � �  F o � b � r��   �  ��� � X    [ ��� � � I  6 V ��� � � z�� 
�� .���:AsErnull��� ��� null��   � �� � �
�� 
Args � n  C H � � � 1   D H��
�� 
pcnt � o   C D���� 0 aref aRef � �� ���
�� 
Equa � K   I Q � � �� ����� 0 errornumber errorNumber � m   L O�����Y��  ��  �� 0 aref aRef � J   ! * � �  � � � K   ! % � � �� ����� 0 a   � m   " # � � � � �  f o o��   �  ��� � J   % ( � �  ��� � 1   % &��
�� 
ascr��  ��  ��   �  � � � l     ��~�}�  �~  �}   �  � � � i    � � � I      �| ��{�| 0 call_uppercase   �  ��z � o      �y�y 	0 param  �z  �{   � I     � ��x � z�w 
�w .Txt:UppTnull���     ctxt � o    �v�v 	0 param  �x   �  � � � l     �u�t�s�u  �t  �s   �  � � � i    � � � I      �r ��q�r 0 call_lowercase   �  ��p � o      �o�o 	0 param  �p  �q   � I     � ��n � z�m 
�m .Txt:LowTnull���     ctxt � o    �l�l 	0 param  �n   �  � � � l     �k�j�i�k  �j  �i   �  � � � i    � � � I      �h ��g�h 0 call_capitalize   �  ��f � o      �e�e 	0 param  �f  �g   � I     � ��d � z�c 
�c .Txt:CapTnull���     ctxt � o    �b�b 	0 param  �d   �  ��a � l     �`�_�^�`  �_  �^  �a     � � � l     �]�\�[�]  �\  �[   �  � � � l     �Z�Y�X�Z  �Y  �X   �  � � � h   , 3�W ��W $0 suite_searchtext suite_SearchText � k       � �  � � � l     �V�U�T�V  �U  �T   �  � � � l     �S � ��S   � | v TO DO: tests need to randomize Unicode normalization, considering/ignoring, TIDs to ensure those don't affect results    � � � � �   T O   D O :   t e s t s   n e e d   t o   r a n d o m i z e   U n i c o d e   n o r m a l i z a t i o n ,   c o n s i d e r i n g / i g n o r i n g ,   T I D s   t o   e n s u r e   t h o s e   d o n ' t   a f f e c t   r e s u l t s �  � � � l     �R�Q�P�R  �Q  �P   �  � � � i     � � � I      �O�N�M�O "0 test_searchtext test_searchText�N  �M   � k     � � �  � � � I    Y ��L � � z�K 
�K .���:AsRenull��� ��� null�L   � �J � �
�J 
Valu � l  	  ��I�H � I  	  � � � � z�G 
�G .Txt:Srchnull���     ctxt � m     � � � � �  a b c � �F � �
�F 
For_ � m     � � � � �  a b c � �E ��D
�E 
Retu � m     � � z�C 
�C RetEAllT�D  �I  �H   � �B �A
�B 
Equa  J    T  K    + �@
�@ 
pcls m     z�? 
�? 
TxtU �>	�> 0 
startindex 
startIndex m    �=�= 	 �<
�< 0 endindex endIndex
 m     !�;�;   �:�9�: 0 	foundtext 	foundText m   $ ' �  �9    K   + B �8
�8 
pcls m   , / z�7 
�7 
TxtM �6�6 0 
startindex 
startIndex m   0 1�5�5  �4�4 0 endindex endIndex m   2 3�3�3  �2�2 0 	foundtext 	foundText m   6 9 �  a b c �1�0�1 0 foundgroups foundGroups J   < >�/�/  �0   �. K   B R �- !
�- 
pcls  m   C D"" z�, 
�, 
TxtU! �+#$�+ 0 
startindex 
startIndex# m   E F�*�* $ �)%&�) 0 endindex endIndex% m   G H�(�( & �''�&�' 0 	foundtext 	foundText' m   K N(( �))  �&  �.  �A   � *+* l  Z Z�%�$�#�%  �$  �#  + ,�", I  Z �-�!.- z�  
�  .���:AsRenull��� ��� null�!  . �/0
� 
Valu/ l  e z1��1 I  e z2342 z� 
� .Txt:Srchnull���     ctxt3 m   n q55 �66  a b4 �7�
� 
For_7 m   r u88 �99  a b�  �  �  0 �:�
� 
Equa: J   { �;; <�< K   { �== �>?
� 
pcls> m   | @@ z� 
� 
TxtM? �AB� 0 
startindex 
startIndexA m   � ��� B �CD� 0 endindex endIndexC m   � ��� D �EF� 0 	foundtext 	foundTextE m   � �GG �HH  a bF �I�� 0 foundgroups foundGroupsI J   � ���  �  �  �  �"   � JKJ l     ���
�  �  �
  K LML i   NON I      �	���	 (0 test_searchpattern test_searchPattern�  �  O l     ����  �  �  M P�P l     ��� �  �  �   �   � QRQ l     ��������  ��  ��  R STS l     ��������  ��  ��  T UVU h   4 ;��W�� "0 suite_slicetext suite_SliceTextW k      XX YZY l     ��������  ��  ��  Z [\[ i    ]^] I      �������� 0 
test_slice  ��  ��  ^ I    !_��`_ z�� 
�� .���:AsRenull��� ��� null��  ` ��ab
�� 
Valua l  	 c����c I  	 defd z�� 
�� .Txt:SliTnull���     ctxte m    gg �hh  a b cf ��ij
�� 
FIdxi m    ������j ��k��
�� 
TIdxk m    ���� ��  ��  ��  b ��l��
�� 
Equal m    mm �nn  b c��  \ o��o l     ��������  ��  ��  ��  V pqp l     ��������  ��  ��  q rsr l     ��������  ��  ��  s tut h   < C��v�� $0 suite_formattext suite_FormatTextv k      ww xyx l     ��������  ��  ��  y z{z j     ��|�� 	0 _date  | m     ��
�� 
msng{ }~} j    ���� 0 	_testdata 	_testData m    ��
�� 
msng~ ��� l     ��������  ��  ��  � ��� i   	��� I      �������� "0 configure_setup configure_setUp��  ��  � k     @�� ��� r     ��� I    ������
�� .misccurdldt    ��� null��  ��  � o      ���� 	0 _date  � ���� r    @��� J    :�� ��� l 	  ������ J    �� ��� l   ������ m    �� @��������  ��  � ���� l   ������ c    ��� m    �� @������� m    ��
�� 
ctxt��  ��  ��  ��  ��  � ��� l 	  ������ J    �� ��� l   ������ m    �� ���  ��  ��  � ���� l   ������ m    �� ���  " "��  ��  ��  ��  ��  � ��� l 	  +������ J    +�� ��� l    ������ J     �� ��� m    �� ���  f o o� ��� m    ���� � ��� m    ��
�� boovtrue� ���� o    ���� 	0 _date  ��  ��  ��  � ���� l    )������ b     )��� b     '��� m     !�� ��� . { " f o o " ,   1 ,   t r u e ,   d a t e   "� o   ! &���� 	0 _date  � m   ' (�� ���  " }��  ��  ��  ��  ��  � ���� l 	 + 8������ l 
 + 8������ J   + 8�� ��� l  + 3������ K   + 3�� ������ 0 a  � m   , -��
�� 
msng� ����
�� 
pnam� m   . /��
�� 
alis� �����
�� 
pcls� m   0 1��
�� 
docu��  ��  ��  � ���� l  3 6������ m   3 6�� ��� Z { a : m i s s i n g   v a l u e ,   n a m e : a l i a s ,   c l a s s : d o c u m e n t }��  ��  ��  ��  ��  ��  ��  ��  � o      ���� 0 	_testdata 	_testData��  � ��� l     ��������  ��  ��  � ��� i  
 ��� I      �������� 80 test_literalrepresentation test_literalRepresentation��  ��  � X     I����� k    D�� ��� r    $��� o    ���� 0 aref aRef� J      �� ��� o      ���� 0 avalue aValue� ���� o      ����  0 expectedresult expectedResult��  � ���� I  % D����� z�� 
�� .���:AsRenull��� ��� null��  � ����
�� 
Valu� l  . =������ I  . =����� z�� 
�� .Txt:FLitnull��� ��� null��  � �����
�� 
For_� o   7 8���� 0 avalue aValue��  ��  ��  � �����
�� 
Equa� o   > ?����  0 expectedresult expectedResult��  ��  �� 0 aref aRef� o    ���� 0 	_testdata 	_testData� ���� l     ����~��  �  �~  ��  u ��� l     �}�|�{�}  �|  �{  � ��� l     �z�y�x�z  �y  �x  � ��� i   D G��� I     �w�v�u
�w .aevtoappnull  �   � ****�v  �u  � l    ���� I    �t��s
�t .sysoexecTEXT���     TEXT� b     ��� m     �� �    ~ / b i n / o s a t e s t  � n    
 1    
�r
�r 
strq n     1    �q
�q 
psxp l   �p�o I   �n�m
�n .earsffdralis        afdr  f    �m  �p  �o  �s  � [ U handy for running tests in Script Editor (assumes `osatest` is installed in `~/bin`)   � � �   h a n d y   f o r   r u n n i n g   t e s t s   i n   S c r i p t   E d i t o r   ( a s s u m e s   ` o s a t e s t `   i s   i n s t a l l e d   i n   ` ~ / b i n ` )� 	 l     �l�k�j�l  �k  �j  	 
�i
 l     �h�g�f�h  �g  �f  �i       �e�e   �d�c�b�a�`�_
�d 
pimr�c $0 suite_modifytext suite_ModifyText�b $0 suite_searchtext suite_SearchText�a "0 suite_slicetext suite_SliceText�` $0 suite_formattext suite_FormatText
�_ .aevtoappnull  �   � **** �^�^    �]�\
�] 
cobj    �[ 	
�[ 
scpt�\   �Z�Y
�Z 
cobj    �X
�X 
osax�Y   �W�V
�W 
cobj    �U 
�U 
scpt�V   �T    �T $0 suite_modifytext suite_ModifyText �S !"#�S   �R�Q�P�O�N�M�R 0 test_uppercase  �Q 0 test_lowercase  �P 0 test_capitalize  �O 0 call_uppercase  �N 0 call_lowercase  �M 0 call_capitalize   �L *�K�J$%�I�L 0 test_uppercase  �K  �J  $ �H�H 0 aref aRef% �G 	�F  7�E�D�C <�B�A 	  G�@�? ^�>�=�<�; 	�:�9�8�7�6
�G 
scpt
�F 
Valu
�E 
lnfd
�D .Txt:UppTnull���     ctxt
�C 
Equa�B 
�A .���:AsRenull��� ��� null
�@ 
ctxt�? 0 a  
�> 
ascr
�= 
kocl
�< 
cobj
�; .corecnte****       ****
�: 
Args
�9 
pcnt�8 0 errornumber errorNumber�7�Y
�6 .���:AsErnull��� ��� null�I �)��/ *�)��/ 	��%j U���%� 
UO)��/ *�)��/ �j U���&� 
UO D�a l_ kvlv[a a l kh  )�a / *a �a ,�a a l� U[OY�� �5 h�4�3&'�2�5 0 test_lowercase  �4  �3  & �1�1 0 aref aRef' �0 	�/  s�.�- v�,�+�* ��)�(�'�& 	�%�$�#�"�!
�0 
scpt
�/ 
Valu
�. .Txt:LowTnull���     ctxt
�- 
Equa�, 
�+ .���:AsRenull��� ��� null�* 0 a  
�) 
ascr
�( 
kocl
�' 
cobj
�& .corecnte****       ****
�% 
Args
�$ 
pcnt�# 0 errornumber errorNumber�"�Y
�! .���:AsErnull��� ��� null�2 \)��/ *�)��/ �j U��� 	UO <��l�kvlv[��l kh  )�a / *a �a ,�a a l� U[OY��  �  ���()��  0 test_capitalize  �  �  ( �� 0 aref aRef) � 	�  ��� ���� ����� 	�����
� 
scpt
� 
Valu
� .Txt:CapTnull���     ctxt
� 
Equa� 
� .���:AsRenull��� ��� null� 0 a  
� 
ascr
� 
kocl
� 
cobj
� .corecnte****       ****
� 
Args
� 
pcnt� 0 errornumber errorNumber��Y
� .���:AsErnull��� ��� null� \)��/ *�)��/ �j U��� 	UO <��l�kvlv[��l kh  )�a / *a �a ,�a a l� U[OY��! � ��
�	*+�� 0 call_uppercase  �
 �,� ,  �� 	0 param  �	  * �� 	0 param  + � �
� 
scpt
� .Txt:UppTnull���     ctxt� )��/ �j U" � ��� -.��� 0 call_lowercase  � ��/�� /  ���� 	0 param  �   - ���� 	0 param  . �� ��
�� 
scpt
�� .Txt:LowTnull���     ctxt�� )��/ �j U# �� �����01���� 0 call_capitalize  �� ��2�� 2  ���� 	0 param  ��  0 ���� 	0 param  1 �� ��
�� 
scpt
�� .Txt:CapTnull���     ctxt�� )��/ �j U �� �  3�� $0 suite_searchtext suite_SearchText3 ��456��  4 ������ "0 test_searchtext test_searchText�� (0 test_searchpattern test_searchPattern5 �� �����78���� "0 test_searchtext test_searchText��  ��  7  8 �� 	��  ��� �����������������������������(�� 	 58G
�� 
scpt
�� 
Valu
�� 
For_
�� 
Retu
�� RetEAllT�� 
�� .Txt:Srchnull���     ctxt
�� 
Equa
�� 
pcls
�� 
TxtU�� 0 
startindex 
startIndex�� 0 endindex endIndex�� 0 	foundtext 	foundText�� 
�� 
TxtM�� 0 foundgroups foundGroups�� 

�� .���:AsRenull��� ��� null�� �)��/ S*�)��/ ������ 
U����k�ja a a �a �k�ma a a jva �����ma a a mv� UO)�a / 7*�)�a / a �a l 
U��a �k�la a a jva kv� U6 ��O����9:���� (0 test_searchpattern test_searchPattern��  ��  9  :  �� h ��W  ;�� "0 suite_slicetext suite_SliceText; ��<=��  < ���� 0 
test_slice  = ��^����>?���� 0 
test_slice  ��  ��  >  ? �� 	�� g����������m��
�� 
scpt
�� 
Valu
�� 
FIdx
�� 
TIdx�� 
�� .Txt:SliTnull���     ctxt
�� 
Equa
�� .���:AsRenull��� ��� null�� ")��/ *�)��/ ��i�l� U��� U ��v  @�� $0 suite_formattext suite_FormatText@ ��A����BC��  A ���������� 	0 _date  �� 0 	_testdata 	_testData�� "0 configure_setup configure_setUp�� 80 test_literalrepresentation test_literalRepresentation
�� 
msng
�� 
msngB �������DE���� "0 configure_setup configure_setUp��  ��  D  E ���������������������������
�� .misccurdldt    ��� null
�� 
ctxt�� �� 0 a  
�� 
msng
�� 
pnam
�� 
alis
�� 
pcls
�� 
docu�� �� A*j  Ec   O���&lv��lv�keb   �v�b   %�%lv�������a lv�vEc  C �������FG���� 80 test_literalrepresentation test_literalRepresentation��  ��  F �������� 0 aref aRef�� 0 avalue aValue��  0 expectedresult expectedResultG �������� 	�� ����������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
scpt
�� 
Valu
�� 
For_
�� .Txt:FLitnull��� ��� null
�� 
Equa�� 
�� .���:AsRenull��� ��� null�� J Hb  [��l kh  �E[�k/E�Z[�l/E�ZO)��/ *�)��/ 	*�l U�� U[OY�� �������HI��
�� .aevtoappnull  �   � ****��  ��  H  I ���������
�� .earsffdralis        afdr
�� 
psxp
�� 
strq
�� .sysoexecTEXT���     TEXT�� �)j �,�,%j ascr  ��ޭ