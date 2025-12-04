;; 1. Створення списку
CL-USER> (defvar my-list)
MY-LIST
CL-USER> (setq my-list (list 'A 10 (cons 1 (list 2)) nil 5))
(A 10 (1 2) NIL 5)

;; 2. Отримання голови списку
CL-USER> (car my-list)
A

;; 3. Отримання хвоста списку
CL-USER> (cdr my-list)
(10 (1 2) NIL 5)

;; 4. Отримання третього елемента списку
CL-USER> (third my-list)
(1 2)

;; 5. Отримання останнього елемента списку
CL-USER> (car (last my-list))
5

;; 6. Використання предикатів ATOM та LISTP
CL-USER> (atom (car my-list))    
T
CL-USER> (atom (third my-list))   
NIL

CL-USER> (listp (third my-list))  
T
CL-USER> (listp (car (last my-list))) 
NIL

;; 7. Використання інших предикатів (NUMBERP, NULL)
CL-USER> (numberp (car (last my-list))) 
T
CL-USER> (numberp (car my-list))        
NIL

CL-USER> (null (cdr (last my-list)))    
T
CL-USER> (null (car my-list))           
NIL

;; 8. Об'єднання списку з одним із його підсписків
CL-USER> (append my-list (third my-list))
(A 10 (1 2) NIL 5 1 2)





;; Створення списку для завдання за варіантом 2
CL-USER> (defvar my-list2)
MY-LIST2

;; Реалізація структури за варіантом 2
CL-USER> (setq my-list2
               (let ((x (list 2 1)))
                 (list (cons 'A x) 'B x 'C)))
((A 2 1) B (2 1) C)
