%Definitions for isElementInList(El, List)


e(El, [El|List])

.
isElementInList(El, []):-
	write("\nNot found").



isElementInList(El, [El|Tail]):-
	write("\nFound.").



isElementInList(El, [Y|Tail]):-
	isElementInList(El,Tail).




%Definitions for mergeLists(List1, List2, Merged)
mergeLists(list,list,list).
    mergeLists([],L1,L1).
    
    mergeLists([X|Tail],L2,[X|Tail1]):-
        mergeLists(Tail,L2,Tail1).


%Definitions for reverseList(List,ReversedList)
reverseList(list,list).
    reverse(list,list,list).
    
    reverseList(Inputlist,Outputlist):-
    reverse(Inputlist,[],Outputlist).    
    reverse([],Outputlist,Outputlist).    

    reverse([Head|Tail],List1,List2):-
        reverse(Tail,[Head|List1],List2).



%insertElementIntoListEnd(El, List, NewList)
insertElementIntoListEnd(symbol,list,list).
    insertElementIntoListEnd(X,[],[X]).
    
    insertElementIntoListEnd(X,[Y|Tail],[Y|Tail1]):-
        insertElementIntoListEnd(X,Tail,Tail1).



