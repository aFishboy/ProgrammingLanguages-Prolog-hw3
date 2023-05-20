/* All novels published during the year 1953 or 1996*/
year_1953_1996_novels(Book) :-
    novel(Book, 1953); 
    novel(Book, 1996).

/* List of all novels published during the period 1800 to 1900*/
period_1800_1900_novels(Book) :-
    novel(Book, Year), 
    (Year >= 1800, Year =< 1900).

/* Characters who are fans of LOTR */
lotr_fans(Fan) :-
    fan(Fan, BookList), 
    member(the_lord_of_the_rings, BookList).

/* Authors of the novels owned by Chandler */
author_names(Author) :-
    fan(chandler, BookList), 
    member(OneBook, BookList), 
    author(Author, ABooks), 
    member(OneBook, ABooks).

/* Characters who are fans of Brandon Sanderson's novels */
fans_names(Fan) :-
    fan(Fan, BookList), 
    author(brandon_sanderson, ABooks), 
    member(OneBook, BookList), 
    member(OneBook, ABooks).

/* Novels common between either of Phoebe, Ross, and Monica */
mutual_novels(Book) :-
    fan(phoebe, PBooks),
    fan(ross, RBooks),
    fan(monica, MBooks), 
    (member(Book, PBooks), member(Book, RBooks);
     member(Book, PBooks), member(Book, MBooks);
     member(Book, RBooks), member(Book, MBooks)).
