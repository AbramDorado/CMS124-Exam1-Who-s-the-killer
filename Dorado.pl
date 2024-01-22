/* Facts */
man(brett).
man(riley).
man(reuben).
man(thomas).

woman(libby).
woman(pamela).
woman(andrea).
woman(kate).

victim(brett).

play_scrabble(reuben).
play_scrabble(riley).
play_scrabble(libby).

harvest(kate).
harvest(riley).

play_golf(thomas).
play_golf(reuben).

smoker(andrea).
smoker(reuben).
smoker(kate).
smoker(brett).
smoker(libby).

room(rm_701).
room(rm_702).
room(rm_703).
room(rm_704).
room(rm_705).

lodge(brett,rm_702).
lodge(riley,rm_704).
lodge(andrea,rm_701). 
lodge(reuben,rm_704). 
lodge(thomas,rm_702).
lodge(libby,rm_703).
lodge(pamela,rm_701). 
lodge(kate,rm_703).

roomate_gun(andrea).
roomate_gun(riley).
roomate_gun(reuben).

gun_owner(riley).
gun_owner(reuben).
gun_owner(pamela).

/* Rules */

suspect(X) :- man(X); woman(X), \+victim(X).

has_alibi(X) :- play_scrabble(X).

went_out(X) :- harvest(X), smoker(X); play_golf(X).

roomates(X,Y) :- lodge(X,Z), lodge(Y,Z).

has_access_gun(X) :- gun_owner(X); roomate_gun(X), \+gun_owner(X).

culprit(X) :-  went_out(X), has_access_gun(X), roomate_gun(X).

%The one who killed brent is reuben

/*BONUS QUESTION
this answer is false because the one and the two do not unified with
each other because one is not a variable.