JsOsaDAS1.001.00bplist00�Vscripto6� / * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
     C r e a t e s   a   s y s t e m   p o p - u p   w i t h   d a t e ,   t i m e   a n d   t i p 
     S a v e   a s   . s c p t   a n d   r u n   f r o m   c r o n : 
     8   1 0 - 1 7   *   *   *   o s a s c r i p t   / p a t h / t o / f i l e . s c p t 
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * / 
 c o n s t   a p p   =   A p p l i c a t i o n . c u r r e n t A p p l i c a t i o n ( ) 
 a p p . i n c l u d e S t a n d a r d A d d i t i o n s   =   t r u e 
           
 c o n s t   t i p T i t l e s   =   [ 
     " C a r e   A b o u t   Y o u r   C r a f t " , 
     " T h i n k !   A b o u t   Y o u r   W o r k " , 
     " Y o u   H a v e   A g e n c y " , 
     " P r o v i d e   O p t i o n s ,   D o n  t   M a k e   L a m e   E x c u s e s " , 
     " D o n  t   L i v e   w i t h   B r o k e n   W i n d o w s " , 
     " B e   a   C a t a l y s t   f o r   C h a n g e " , 
     " R e m e m b e r   t h e   B i g   P i c t u r e " , 
     " M a k e   Q u a l i t y   a   R e q u i r e m e n t s   I s s u e " , 
     " I n v e s t   R e g u l a r l y   i n   Y o u r   K n o w l e d g e   P o r t f o l i o " , 
     " C r i t i c a l l y   A n a l y z e   W h a t   Y o u   R e a d   a n d   H e a r " , 
     " E n g l i s h   i s   J u s t   A n o t h e r   P r o g r a m m i n g   L a n g u a g e " , 
     " I t  s   B o t h   W h a t   Y o u   S a y   a n d   t h e   W a y   Y o u   S a y   I t " , 
     " B u i l d   D o c u m e n t a t i o n   I n ,   D o n  t   B o l t   I t   O n " , 
     " G o o d   D e s i g n   I s   E a s i e r   t o   C h a n g e   T h a n   B a d   D e s i g n " , 
     " D R Y  D o n ' t   R e p e a t   Y o u r s e l f " , 
     " M a k e   I t   E a s y   t o   R e u s e " , 
     " E l i m i n a t e   E f f e c t s   B e t w e e n   U n r e l a t e d   T h i n g s " , 
     " T h e r e   A r e   N o   F i n a l   D e c i s i o n s " , 
     " F o r g o   F o l l o w i n g   F a d s " , 
     " U s e   T r a c e r   B u l l e t s   t o   F i n d   t h e   T a r g e t " , 
     " P r o t o t y p e   t o   L e a r n " , 
     " P r o g r a m   C l o s e   t o   t h e   P r o b l e m   D o m a i n " , 
     " E s t i m a t e   t o   A v o i d   S u r p r i s e s " , 
     " I t e r a t e   t h e   S c h e d u l e   w i t h   t h e   C o d e " , 
     " K e e p   K n o w l e d g e   i n   P l a i n   T e x t " , 
     " U s e   t h e   P o w e r   o f   C o m m a n d   S h e l l s " , 
     " A c h i e v e   E d i t o r   F l u e n c y " , 
     " A l w a y s   U s e   V e r s i o n   C o n t r o l " , 
     " F i x   t h e   P r o b l e m ,   N o t   t h e   B l a m e " , 
     " D o n  t   P a n i c " , 
     " F a i l i n g   T e s t   B e f o r e   F i x i n g   C o d e " , 
     " R e a d   t h e   D a m n   E r r o r   M e s s a g e " , 
     "  s e l e c t    I s n ' t   B r o k e n " , 
     " D o n  t   A s s u m e   I t  P r o v e   I t " , 
     " L e a r n   a   T e x t   M a n i p u l a t i o n   L a n g u a g e " , 
     " Y o u   C a n  t   W r i t e   P e r f e c t   S o f t w a r e " , 
     " D e s i g n   w i t h   C o n t r a c t s " , 
     " C r a s h   E a r l y " , 
     " U s e   A s s e r t i o n s   t o   P r e v e n t   t h e   I m p o s s i b l e " , 
     " F i n i s h   W h a t   Y o u   S t a r t " , 
     " A c t   L o c a l l y " , 
     " T a k e   S m a l l   S t e p s  A l w a y s " , 
     " A v o i d   F o r t u n e - T e l l i n g " , 
     " D e c o u p l e d   C o d e   I s   E a s i e r   t o   C h a n g e " , 
     " T e l l ,   D o n  t   A s k " , 
     " D o n  t   C h a i n   M e t h o d   C a l l s " , 
     " A v o i d   G l o b a l   D a t a " , 
     " I f   I t  s   I m p o r t a n t   E n o u g h   T o   B e   G l o b a l ,   W r a p   I t   i n   a n   A P I " , 
     " P r o g r a m m i n g   I s   A b o u t   C o d e ,   B u t   P r o g r a m s   A r e   A b o u t   D a t a " , 
     " D o n  t   H o a r d   S t a t e ;   P a s s   I t   A r o u n d " , 
     " D o n ' t   P a y   I n h e r i t a n c e   T a x " , 
     " P r e f e r   I n t e r f a c e s   t o   E x p r e s s   P o l y m o r p h i s m " , 
     " D e l e g a t e   t o   S e r v i c e s :   H a s - A   T r u m p s   I s - A " , 
     " U s e   M i x i n s   t o   S h a r e   F u n c t i o n a l i t y " , 
     " P a r a m e t e r i z e   Y o u r   A p p   U s i n g   E x t e r n a l   C o n f i g u r a t i o n " , 
     " A n a l y z e   W o r k f l o w   t o   I m p r o v e   C o n c u r r e n c y " , 
     " S h a r e d   S t a t e   I s   I n c o r r e c t   S t a t e " , 
     " R a n d o m   F a i l u r e s   A r e   O f t e n   C o n c u r r e n c y   I s s u e s " , 
     " U s e   A c t o r s   F o r   C o n c u r r e n c y   W i t h o u t   S h a r e d   S t a t e " , 
     " U s e   B l a c k b o a r d s   t o   C o o r d i n a t e   W o r k f l o w " , 
     " L i s t e n   t o   Y o u r   I n n e r   L i z a r d " , 
     " D o n  t   P r o g r a m   b y   C o i n c i d e n c e " , 
     " E s t i m a t e   t h e   O r d e r   o f   Y o u r   A l g o r i t h m s " , 
     " T e s t   Y o u r   E s t i m a t e s " , 
     " R e f a c t o r   E a r l y ,   R e f a c t o r   O f t e n " , 
     " T e s t i n g   I s   N o t   A b o u t   F i n d i n g   B u g s " , 
     " A   T e s t   I s   t h e   F i r s t   U s e r   o f   Y o u r   C o d e " , 
     " B u i l d   E n d - T o - E n d ,   N o t   T o p - D o w n   o r   B o t t o m   U p " , 
     " D e s i g n   t o   T e s t " , 
     " T e s t   Y o u r   S o f t w a r e ,   o r   Y o u r   U s e r s   W i l l " , 
     " U s e   P r o p e r t y - B a s e d   T e s t s   t o   V a l i d a t e   Y o u r   A s s u m p t i o n s " , 
     " K e e p   I t   S i m p l e   a n d   M i n i m i z e   A t t a c k   S u r f a c e s " , 
     " A p p l y   S e c u r i t y   P a t c h e s   Q u i c k l y " , 
     " N a m e   W e l l ;   R e n a m e   W h e n   N e e d e d " , 
     " N o   O n e   K n o w s   E x a c t l y   W h a t   T h e y   W a n t " , 
     " P r o g r a m m e r s   H e l p   P e o p l e   U n d e r s t a n d   W h a t   T h e y   W a n t " , 
     " R e q u i r e m e n t s   A r e   L e a r n e d   i n   a   F e e d b a c k   L o o p " , 
     " W o r k   w i t h   a   U s e r   t o   T h i n k   L i k e   a   U s e r " , 
     " P o l i c y   I s   M e t a d a t a " , 
     " U s e   a   P r o j e c t   G l o s s a r y " , 
     " D o n  t   T h i n k   O u t s i d e   t h e   B o x  F i n d   t h e   B o x " , 
     " D o n ' t   G o   i n t o   t h e   C o d e   A l o n e " , 
     " A g i l e   I s   N o t   a   N o u n ;   A g i l e   I s   H o w   Y o u   D o   T h i n g s " , 
     " M a i n t a i n   S m a l l   S t a b l e   T e a m s " , 
     " S c h e d u l e   I t   t o   M a k e   I t   H a p p e n " , 
     " O r g a n i z e   F u l l y   F u n c t i o n a l   T e a m s " , 
     " D o   W h a t   W o r k s ,   N o t   W h a t  s   F a s h i o n a b l e " , 
     " D e l i v e r   W h e n   U s e r s   N e e d   I t " , 
     " U s e   V e r s i o n   C o n t r o l   t o   D r i v e   B u i l d s ,   T e s t s ,   a n d   R e l e a s e s " , 
     " T e s t   E a r l y ,   T e s t   O f t e n ,   T e s t   A u t o m a t i c a l l y " , 
     " C o d i n g   A i n  t   D o n e    T i l   A l l   t h e   T e s t s   R u n " , 
     " U s e   S a b o t e u r s   t o   T e s t   Y o u r   T e s t i n g " , 
     " T e s t   S t a t e   C o v e r a g e ,   N o t   C o d e   C o v e r a g e " , 
     " F i n d   B u g s   O n c e " , 
     " D o n ' t   U s e   M a n u a l   P r o c e d u r e s " , 
     " D e l i g h t   U s e r s ,   D o n  t   J u s t   D e l i v e r   C o d e " , 
     " S i g n   Y o u r   W o r k " , 
     " F i r s t ,   D o   N o   H a r m " , 
     " D o n  t   E n a b l e   S c u m b a g s " , 
     " I t  s   Y o u r   L i f e .   S h a r e   i t .   C e l e b r a t e   i t .   B u i l d   i t .   A N D   H A V E   F U N ! " 
 ] ; 
 
 c o n s t   t i p B o d i e s   =   [ 
     " W h y   s p e n d   y o u r   l i f e   d e v e l o p i n g   s o f t w a r e   u n l e s s   y o u   c a r e   a b o u t   d o i n g   i t   w e l l ? " , 
     " T u r n   o f f   t h e   a u t o p i l o t   a n d   t a k e   c o n t r o l .   C o n s t a n t l y   c r i t i q u e   a n d   a p p r a i s e   y o u r   w o r k . " , 
     " I t  s   y o u r   l i f e .   G r a b   h o l d   o f   i t   a n d   m a k e   i t   w h a t   y o u   w a n t . " , 
     " I n s t e a d   o f   e x c u s e s ,   p r o v i d e   o p t i o n s .   D o n  t   s a y   i t   c a n  t   b e   d o n e ;   e x p l a i n   w h a t   c a n   b e   d o n e . " , 
     " F i x   b a d   d e s i g n s ,   w r o n g   d e c i s i o n s ,   a n d   p o o r   c o d e   w h e n   y o u   s e e   t h e m . " , 
     " Y o u   c a n  t   f o r c e   c h a n g e   o n   p e o p l e .   I n s t e a d ,   s h o w   t h e m   h o w   t h e   f u t u r e   m i g h t   b e   a n d   h e l p   t h e m   p a r t i c i p a t e   i n   c r e a t i n g   i t . " , 
     " D o n  t   g e t   s o   e n g r o s s e d   i n   t h e   d e t a i l s   t h a t   y o u   f o r g e t   t o   c h e c k   w h a t  s   h a p p e n i n g   a r o u n d   y o u . " , 
     " I n v o l v e   y o u r   u s e r s   i n   d e t e r m i n i n g   t h e   p r o j e c t  s   r e a l   q u a l i t y   r e q u i r e m e n t s . " , 
     " M a k e   l e a r n i n g   a   h a b i t . " , 
     " D o n  t   b e   s w a y e d   b y   v e n d o r s ,   m e d i a   h y p e ,   o r   d o g m a .   A n a l y z e   i n f o r m a t i o n   i n   t e r m s   o f   y o u   a n d   y o u r   p r o j e c t . " , 
     " T r e a t   E n g l i s h   a s   J u s t   A n o t h e r   P r o g r a m m i n g   L a n g u a g e .   W r i t e   d o c u m e n t s   a s   y o u   w o u l d   w r i t e   c o d e :   h o n o r   t h e   D R Y   p r i n c i p l e ,   E T C ,   a u t o m a t i o n ,   a n d   s o   o n . " , 
     " T h e r e  s   n o   p o i n t   i n   h a v i n g   g r e a t   i d e a s   i f   y o u   d o n  t   c o m m u n i c a t e   t h e m   e f f e c t i v e l y . " , 
     " D o c u m e n t a t i o n   c r e a t e d   s e p a r a t e l y   f r o m   c o d e   i s   l e s s   l i k e l y   t o   b e   c o r r e c t   a n d   u p   t o   d a t e . " , 
     " A   t h i n g   i s   w e l l   d e s i g n e d   i f   i t   a d a p t s   t o   t h e   p e o p l e   w h o   u s e   i t .   F o r   c o d e ,   t h a t   m e a n s   i t   m u s t   a d a p t   b y   c h a n g i n g . " , 
     " E v e r y   p i e c e   o f   k n o w l e d g e   m u s t   h a v e   a   s i n g l e ,   u n a m b i g u o u s ,   a u t h o r i t a t i v e   r e p r e s e n t a t i o n   w i t h i n   a   s y s t e m . " , 
     " I f   i t  s   e a s y   t o   r e u s e ,   p e o p l e   w i l l .   C r e a t e   a n   e n v i r o n m e n t   t h a t   s u p p o r t s   r e u s e . " , 
     " D e s i g n   c o m p o n e n t s   t h a t   a r e   s e l f - c o n t a i n e d ,   i n d e p e n d e n t ,   a n d   h a v e   a   s i n g l e ,   w e l l - d e f i n e d   p u r p o s e . " , 
     " N o   d e c i s i o n   i s   c a s t   i n   s t o n e .   I n s t e a d ,   c o n s i d e r   e a c h   a s   b e i n g   w r i t t e n   i n   t h e   s a n d   a t   t h e   b e a c h ,   a n d   p l a n   f o r   c h a n g e . " , 
     " N e a l   F o r d   s a y s ,    Y e s t e r d a y  s   B e s t   P r a c t i c e   B e c o m e s   T o m o r r o w  s   A n t i p a t t e r n .    C h o o s e   a r c h i t e c t u r e s   b a s e d   o n   f u n d a m e n t a l s ,   n o t   f a s h i o n . " , 
     " T r a c e r   b u l l e t s   l e t   y o u   h o m e   i n   o n   y o u r   t a r g e t   b y   t r y i n g   t h i n g s   a n d   s e e i n g   h o w   c l o s e   t h e y   l a n d . " , 
     " P r o t o t y p i n g   i s   a   l e a r n i n g   e x p e r i e n c e .   I t s   v a l u e   l i e s   n o t   i n   t h e   c o d e   y o u   p r o d u c e ,   b u t   i n   t h e   l e s s o n s   y o u   l e a r n . " , 
     " D e s i g n   a n d   c o d e   i n   t h e   l a n g u a g e   o f   t h e   p r o b l e m   d o m a i n . " , 
     " E s t i m a t e   b e f o r e   y o u   s t a r t .   Y o u  l l   s p o t   p o t e n t i a l   p r o b l e m s   u p   f r o n t . " , 
     " U s e   e x p e r i e n c e   y o u   g a i n   a s   y o u   i m p l e m e n t   t o   r e f i n e   t h e   p r o j e c t   t i m e   s c a l e s . " , 
     " P l a i n   t e x t   w o n  t   b e c o m e   o b s o l e t e .   I t   h e l p s   l e v e r a g e   y o u r   w o r k   a n d   s i m p l i f i e s   d e b u g g i n g   a n d   t e s t i n g . " , 
     " U s e   t h e   s h e l l   w h e n   g r a p h i c a l   u s e r   i n t e r f a c e s   d o n  t   c u t   i t . " , 
     " A n   e d i t o r   i s   y o u r   m o s t   i m p o r t a n t   t o o l .   K n o w   h o w   t o   m a k e   i t   d o   w h a t   y o u   n e e d ,   q u i c k l y   a n d   a c c u r a t e l y . " , 
     " V e r s i o n   c o n t r o l   i s   a   t i m e   m a c h i n e   f o r   y o u r   w o r k ;   y o u   c a n   g o   b a c k . " , 
     " I t   d o e s n  t   r e a l l y   m a t t e r   w h e t h e r   t h e   b u g   i s   y o u r   f a u l t   o r   s o m e o n e   e l s e  s  i t   i s   s t i l l   y o u r   p r o b l e m ,   a n d   i t   s t i l l   n e e d s   t o   b e   f i x e d . " , 
     " T h i s   i s   t r u e   f o r   g a l a c t i c   h i t c h h i k e r s   a n d   f o r   d e v e l o p e r s . " , 
     " C r e a t e   a   f o c u s s e d   t e s t   t h a t   r e v e a l s   t h e   b u g   b e f o r e   y o u   t r y   f i x i n g   i t . " , 
     " M o s t   e x c e p t i o n s   t e l l   b o t h   w h a t   f a i l e d   a n d   w h e r e   i t   f a i l e d .   I f   y o u  r e   l u c k y   y o u   m i g h t   e v e n   g e t   p a r a m e t e r   v a l u e s . " , 
     " I t   i s   r a r e   t o   f i n d   a   b u g   i n   t h e   O S   o r   t h e   c o m p i l e r ,   o r   e v e n   a   t h i r d - p a r t y   p r o d u c t   o r   l i b r a r y .   T h e   b u g   i s   m o s t   l i k e l y   i n   t h e   a p p l i c a t i o n . " , 
     " P r o v e   y o u r   a s s u m p t i o n s   i n   t h e   a c t u a l   e n v i r o n m e n t  w i t h   r e a l   d a t a   a n d   b o u n d a r y   c o n d i t i o n s . " , 
     " Y o u   s p e n d   a   l a r g e   p a r t   o f   e a c h   d a y   w o r k i n g   w i t h   t e x t .   W h y   n o t   h a v e   t h e   c o m p u t e r   d o   s o m e   o f   i t   f o r   y o u ? " , 
     " S o f t w a r e   c a n  t   b e   p e r f e c t .   P r o t e c t   y o u r   c o d e   a n d   u s e r s   f r o m   t h e   i n e v i t a b l e   e r r o r s . " , 
     " U s e   c o n t r a c t s   t o   d o c u m e n t   a n d   v e r i f y   t h a t   c o d e   d o e s   n o   m o r e   a n d   n o   l e s s   t h a n   i t   c l a i m s   t o   d o . " , 
     " A   d e a d   p r o g r a m   n o r m a l l y   d o e s   a   l o t   l e s s   d a m a g e   t h a n   a   c r i p p l e d   o n e . " , 
     " I f   i t   c a n  t   h a p p e n ,   u s e   a s s e r t i o n s   t o   e n s u r e   t h a t   i t   w o n  t .   A s s e r t i o n s   v a l i d a t e   y o u r   a s s u m p t i o n s .   U s e   t h e m   t o   p r o t e c t   y o u r   c o d e   f r o m   a n   u n c e r t a i n   w o r l d . " , 
     " W h e r e   p o s s i b l e ,   t h e   f u n c t i o n   o r   o b j e c t   t h a t   a l l o c a t e s   a   r e s o u r c e   s h o u l d   b e   r e s p o n s i b l e   f o r   d e a l l o c a t i n g   i t . " , 
     " K e e p   t h e   s c o p e   o f   m u t a b l e   v a r i a b l e s   a n d   o p e n   r e s o u r c e s   s h o r t   a n d   e a s i l y   v i s i b l e . " , 
     " S m a l l   s t e p s   a l w a y s ;   c h e c k   t h e   f e e d b a c k ;   a n d   a d j u s t   b e f o r e   p r o c e e d i n g . " , 
     " O n l y   l o o k   a h e a d   a s   f a r   a s   y o u   c a n   s e e . " , 
     " C o u p l i n g   t i e s   t h i n g s   t o g e t h e r ,   s o   t h a t   i t  s   h a r d e r   t o   c h a n g e   j u s t   o n e   t h i n g . " , 
     " D o n  t   g e t   v a l u e s   f r o m   a n   o b j e c t ,   t r a n s f o r m   t h e m ,   a n d   t h e n   s t i c k   t h e m   b a c k .   M a k e   t h e   o b j e c t   d o   t h e   w o r k . " , 
     " T r y   n o t   t o   h a v e   m o r e   t h a n   o n e   d o t   w h e n   y o u   a c c e s s   s o m e t h i n g . " , 
     " I t  s   l i k e   a d d i n g   a n   e x t r a   p a r a m e t e r   t o   e v e r y   m e t h o d . " , 
     " & b u t   o n l y   i f   y o u   r e a l l y ,   r e a l l y   w a n t   i t   t o   b e   g l o b a l . " , 
     " A l l   p r o g r a m s   t r a n s f o r m   d a t a ,   c o n v e r t i n g   a n   i n p u t   i n t o   a n   o u t p u t .   S t a r t   d e s i g n i n g   u s i n g   t r a n s f o r m a t i o n s . " , 
     " D o n  t   h a n g   o n   t o   d a t a   w i t h i n   a   f u n c t i o n   o r   m o d u l e .   T a k e   o n e   d o w n   a n d   p a s s   i t   a r o u n d . " , 
     " C o n s i d e r   a l t e r n a t i v e s   t h a t   b e t t e r   f i t   y o u r   n e e d s ,   s u c h   a s   i n t e r f a c e s ,   d e l e g a t i o n ,   o r   m i x i n s " , 
     " I n t e r f a c e s   m a k e   p o l y m o r p h i s m   e x p l i c i t   w i t h o u t   t h e   c o u p l i n g   i n t r o d u c e d   b y   i n h e r i t a n c e . " , 
     " D o n  t   i n h e r i t   f r o m   s e r v i c e s :   c o n t a i n   t h e m . " , 
     " M i x i n s   a d d   f u n c t i o n a l i t y   t o   c l a s s e s   w i t h o u t   t h e   i n h e r i t a n c e   t a x .   C o m b i n e   w i t h   i n t e r f a c e s   f o r   p a i n l e s s   p o l y m o r p h i s m . " , 
     " W h e n   c o d e   r e l i e s   o n   v a l u e s   t h a t   m a y   c h a n g e   a f t e r   t h e   a p p l i c a t i o n   h a s   g o n e   l i v e ,   k e e p   t h o s e   v a l u e s   e x t e r n a l   t o   t h e   a p p .   W h e n   y o u   a p p l i c a t i o n   w i l l   r u n   i n   d i f f e r e n t   e n v i r o n m e n t s ,   a n d   p o t e n t i a l l y   f o r   d i f f e r e n t   c u s t o m e r s ,   k e e p   t h e   e n v i r o n m e n t   a n d   c u s t o m e r   s p e c i f i c   v a l u e s   o u t s i d e   t h e   a p p . " , 
     " E x p l o i t   c o n c u r r e n c y   i n   y o u r   u s e r  s   w o r k f l o w . " , 
     " S h a r e d   s t a t e   o p e n s   a   l a r g e   c a n   o f   w o r m s   t h a t   c a n   o f t e n   o n l y   b e   f i x e d   b y   r e b o o t i n g . " , 
     " V a r i a t i o n s   i n   t i m i n g   a n d   c o n t e x t   c a n   e x p o s e   c o n c u r r e n c y   b u g s ,   b u t   i n   i n c o n s i s t e n t   a n d   i r r e p r o d u c i b l e   w a y s . " , 
     " U s e   A c t o r s   t o   m a n a g e   c o n c u r r e n t   s t a t e   w i t h o u t   e x p l i c i t   s y n c h r o n i z a t i o n . " , 
     " U s e   b l a c k b o a r d s   t o   c o o r d i n a t e   d i s p a r a t e   f a c t s   a n d   a g e n t s ,   w h i l e   m a i n t a i n i n g   i n d e p e n d e n c e   a n d   i s o l a t i o n   a m o n g   p a r t i c i p a n t s . " , 
     " W h e n   i t   f e e l s   l i k e   y o u r   c o d e   i s   p u s h i n g   b a c k ,   i t  s   r e a l l y   y o u r   s u b c o n s c i o u s   t r y i n g   t o   t e l l   y o u   s o m e t h i n g  s   w r o n g . " , 
     " R e l y   o n l y   o n   r e l i a b l e   t h i n g s .   B e w a r e   o f   a c c i d e n t a l   c o m p l e x i t y ,   a n d   d o n  t   c o n f u s e   a   h a p p y   c o i n c i d e n c e   w i t h   a   p u r p o s e f u l   p l a n . " , 
     " G e t   a   f e e l   f o r   h o w   l o n g   t h i n g s   a r e   l i k e l y   t o   t a k e   b e f o r e   y o u   w r i t e   c o d e . " , 
     " M a t h e m a t i c a l   a n a l y s i s   o f   a l g o r i t h m s   d o e s n  t   t e l l   y o u   e v e r y t h i n g .   T r y   t i m i n g   y o u r   c o d e   i n   i t s   t a r g e t   e n v i r o n m e n t . " , 
     " J u s t   a s   y o u   m i g h t   w e e d   a n d   r e a r r a n g e   a   g a r d e n ,   r e w r i t e ,   r e w o r k ,   a n d   r e - a r c h i t e c t   c o d e   w h e n   i t   n e e d s   i t .   F i x   t h e   r o o t   o f   t h e   p r o b l e m . " , 
     " A   t e s t   i s   a   p e r s p e c t i v e   i n t o   y o u r   c o d e ,   a n d   g i v e s   y o u   f e e d b a c k   a b o u t   i t s   d e s i g n ,   a p i ,   a n d   c o u p l i n g . " , 
     " U s e   i t s   f e e d b a c k   t o   g u i d e   w h a t   y o u   d o . " , 
     " B u i l d   s m a l l   p i e c e s   o f   e n d - t o - e n d   f u n c t i o n a l i t y ,   l e a r n i n g   a b o u t   t h e   p r o b l e m   a s   y o u   g o . " , 
     " S t a r t   t h i n k i n g   a b o u t   t e s t i n g   b e f o r e   y o u   w r i t e   a   l i n e   o f   c o d e . " , 
     " T e s t   r u t h l e s s l y .   D o n  t   m a k e   y o u r   u s e r s   f i n d   b u g s   f o r   y o u . " , 
     " P r o p e r t y - b a s e d   t e s t s   w i l l   t r y   t h i n g s   y o u   n e v e r   t h o u g h t   t o   t r y ,   a n d   e x e r c i s e   y o u r   c o d e   i n   w a y s   i s   w a s n  t   m e a n t   t o   b e   u s e d . " , 
     " C o m p l e x   c o d e   c r e a t e s   a   b r e e d i n g   g r o u n d   f o r   b u g s   a n d   o p p o r t u n i t i e s   f o r   a t t a c k e r s   t o   e x p l o i t . " , 
     " A t t a c k e r s   d e p l o y   e x p l o i t s   a s   q u i c k   a s   t h e y   c a n ,   y o u   h a v e   t o   b e   q u i c k e r . " , 
     " N a m e   t o   e x p r e s s   y o u r   i n t e n t   t o   r e a d e r s ,   a n d   r e n a m e   a s   s o o n   a s   t h a t   i n t e n t   s h i f t s . " , 
     " T h e y   m i g h t   k n o w   a   g e n e r a l   d i r e c t i o n ,   b u t   t h e y   w o n  t   k n o w   t h e   t w i s t s   a n d   t u r n s . " , 
     " S o f t w a r e   d e v e l o p m e n t   i s   a n   a c t   o f   c o - c r e a t i o n   b e t w e e n   u s e r s   a n d   p r o g r a m m e r s . " , 
     " U n d e r s t a n d i n g   r e q u i r e m e n t s   r e q u i r e s   e x p l o r a t i o n   a n d   f e e d b a c k ,   s o   t h e   c o n s e q u e n c e s   o f   d e c i s i o n s   c a n   b e   u s e d   t o   r e f i n e   t h e   i n i t i a l   i d e a s . " , 
     " I t  s   t h e   b e s t   w a y   t o   g a i n   i n s i g h t   i n t o   h o w   t h e   s y s t e m   w i l l   r e a l l y   b e   u s e d . " , 
     " D o n  t   h a r d c o d e   p o l i c y   i n t o   a   s y s t e m ;   i n s t e a d   e x p r e s s   i t   a s   m e t a d a t a   u s e d   b y   t h e   s y s t e m . " , 
     " C r e a t e   a n d   m a i n t a i n   a   s i n g l e   s o u r c e   o f   a l l   t h e   s p e c i f i c   t e r m s   a n d   v o c a b u l a r y   f o r   a   p r o j e c t . " , 
     " W h e n   f a c e d   w i t h   a n   i m p o s s i b l e   p r o b l e m ,   i d e n t i f y   t h e   r e a l   c o n s t r a i n t s .   A s k   y o u r s e l f :    D o e s   i t   h a v e   t o   b e   d o n e   t h i s   w a y ?   D o e s   i t   h a v e   t o   b e   d o n e   a t   a l l ?  " , 
     " P r o g r a m m i n g   c a n   b e   d i f f i c u l t   a n d   d e m a n d i n g .   T a k e   a   f r i e n d   w i t h   y o u . " , 
     " A g i l e   i s   a n   a d j e c t i v e :   i t  s   h o w   y o u   d o   s o m e t h i n g . " , 
     " T e a m s   s h o u l d   b e   s m a l l   a n d   s t a b l e ,   w h e r e   e v e r y o n e   t r u s t s   e a c h   o t h e r   a n d   d e p e n d s   o n   e a c h   o t h e r . " , 
     " I f   y o u   d o n  t   s c h e d u l e   i t ,   i t  s   n o t   g o i n g   t o   h a p p e n .   S c h e d u l e   r e f l e c t i o n ,   e x p e r i m e n t a t i o n ,   l e a r n i n g   a n d   s k i l l s   i m p r o v e m e n t . " , 
     " O r g a n i z e   A r o u n d   F u n c t i o n a l i t y ,   N o t   J o b   F u n c t i o n s .   D o n  t   s e p a r a t e   U I / U X   d e s i g n e r s   f r o m   c o d e r s ,   f r o n t e n d   f r o m   b a c k e n d ,   t e s t e r s   f r o m   d a t a   m o d e l e r s ,   d e s i g n   f r o m   d e p l o y m e n t .   B u i l d   t e a m s   s o   y o u   c a n   b u i l d   c o d e   e n d - t o - e n d ,   i n c r e m e n t a l l y   a n d   i t e r a t i v e l y . " , 
     " D o n  t   a d o p t   a   d e v e l o p m e n t   m e t h o d   o r   t e c h n i q u e   j u s t   b e c a u s e   o t h e r   c o m p a n i e s   a r e   d o i n g   i t .   A d o p t   w h a t   w o r k s   f o r   y o u r   t e a m ,   i n   y o u r   c o n t e x t . " , 
     " D o n  t   w a i t   w e e k s   o r   m o n t h s   t o   d e l i v e r   j u s t   b e c a u s e   y o u r   p r o c e s s   d e m a n d s   i t . " , 
     " U s e   c o m m i t s   o r   p u s h e s   t o   t r i g g e r   b u i l d s ,   t e s t s ,   r e l e a s e s .   U s e   a   v e r s i o n   c o n t r o l   t a g   t o   d e p l o y   t o   p r o d u c t i o n . " , 
     " T e s t s   t h a t   r u n   w i t h   e v e r y   b u i l d   a r e   m u c h   m o r e   e f f e c t i v e   t h a n   t e s t   p l a n s   t h a t   s i t   o n   a   s h e l f . " , 
     "  N u f f   s a i d . " , 
     " I n t r o d u c e   b u g s   o n   p u r p o s e   i n   a   s e p a r a t e   c o p y   o f   t h e   s o u r c e   t o   v e r i f y   t h a t   t e s t i n g   w i l l   c a t c h   t h e m . " , 
     " I d e n t i f y   a n d   t e s t   s i g n i f i c a n t   p r o g r a m   s t a t e s .   T e s t i n g   j u s t   l i n e s   o f   c o d e   i s n  t   e n o u g h . " , 
     " O n c e   a   h u m a n   t e s t e r   f i n d s   a   b u g ,   i t   s h o u l d   b e   t h e   l a s t   t i m e   a   h u m a n   t e s t e r   f i n d s   t h a t   b u g .   A u t o m a t i c   t e s t s   s h o u l d   c h e c k   f o r   i t   f r o m   t h e n   o n . " , 
     " A   c o m p u t e r   w i l l   e x e c u t e   t h e   s a m e   i n s t r u c t i o n s ,   i n   t h e   s a m e   o r d e r ,   t i m e   a f t e r   t i m e . " , 
     " D e v e l o p   s o l u t i o n s   t h a t   p r o d u c e   b u s i n e s s   v a l u e   f o r   y o u r   u s e r s   a n d   d e l i g h t   t h e m   e v e r y   d a y . " , 
     " A r t i s a n s   o f   a n   e a r l i e r   a g e   w e r e   p r o u d   t o   s i g n   t h e i r   w o r k .   Y o u   s h o u l d   b e ,   t o o . " , 
     " F a i l u r e   i s   i n e v i t a b l e .   M a k e   s u r e   n o   o n e   w i l l   s u f f e r   b e c a u s e   o f   i t . " , 
     " B e c a u s e   y o u   r i s k   b e c o m i n g   o n e ,   t o o . " , 
     " E n j o y   t h i s   a m a z i n g   l i f e   w e   h a v e ,   a n d   d o   g r e a t   t h i n g s . " 
 ] ; 
 
 l e t   t i p N u m b e r   =   M a t h . f l o o r ( M a t h . r a n d o m ( )   *   ( 9 9   -   0   +   1 ) )   +   0 ; 
 
 l e t   d i a l o g T e x t   =   ` $ { ( a p p . c u r r e n t D a t e ( ) ) } 
 \ n - - - - - - - - - - - - - - - - - - - - - - - - - - 
 \ n $ { t i p T i t l e s [ t i p N u m b e r ] } 
 \ n $ { t i p B o d i e s [ t i p N u m b e r ] } ` ; 
 a p p . d i s p l a y D i a l o g ( d i a l o g T e x t ) 
 / /   R e s u l t :   { " b u t t o n R e t u r n e d " : " O K " }                              n
jscr  ��ޭ