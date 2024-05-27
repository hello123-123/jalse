% Symptoms
symptom(feel_fatigue).
symptom(cough).
symptom(fever).
symptom(body_aches).
symptom(headache).

% Diseases and their associated symptoms
disease(flue, [cough, fever, body_aches, headache]).
disease(cold, [cough, feel_fatigue]).

% Rule to check if a person has a particular disease
has_disease(Symptoms, Disease) :-
    disease(Disease, DiseaseSymptoms),
    subset(DiseaseSymptoms, Symptoms).

% Rule to provide a diagnosis based on symptoms
diagnose(Symptoms, Diagnosis) :-
    has_disease(Symptoms, Disease),
    Diagnosis = 'You may have ' + Disease + '.'.

% Example usage:
% ?- diagnose([cough, fever], Diagnosis).
% Output: "You may have flue."
