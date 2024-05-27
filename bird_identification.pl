% Facts about birds
bird(robin, small, red, omnivore, forest, sings_melodiously, red_breast).
bird(blue_jay, medium, blue, omnivore, woodland, loud_call, crest_on_head).
bird(hawk, large, brown, carnivore, open_area, soars_high, sharp_beak).
bird(sparrow, small, brown, seed_eater, urban, chirps_continuously, small_size).
bird(crow, medium, black, omnivore, urban, caws_loudly, intelligent).

% Rules for identification
identify_bird(Color, Size, Diet, Habitat, Behavior, Feature, Bird) :-
    bird(Bird, Size, Color, Diet, Habitat, Behavior, Feature),
    write('The bird is a '), write(Bird), nl.

% User interaction predicates
ask_color(Color) :-
    write('What is the color of the bird? '), read(Color).

ask_size(Size) :-
    write('What is the size of the bird? '), read(Size).

ask_diet(Diet) :-
    write('What is the diet of the bird? '), read(Diet).

ask_habitat(Habitat) :-
    write('What is the habitat of the bird? '), read(Habitat).

ask_behavior(Behavior) :-
    write('Describe the behavior of the bird: '), read(Behavior).

ask_feature(Feature) :-
    write('Does the bird have any distinctive features? If yes, describe: '), read(Feature).

% Main identification predicate
identify_bird_from_user_input :-
    ask_color(Color),
    ask_size(Size),
    ask_diet(Diet),
    ask_habitat(Habitat),
    ask_behavior(Behavior),
    ask_feature(Feature),
    identify_bird(Color, Size, Diet, Habitat, Behavior, Feature, _).

% Example usage:
% To identify a bird based on user input:
% ?- identify_bird_from_user_input.
