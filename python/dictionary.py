import json
import difflib #  difflib module to find the closest match for a misspelled word and reads word definitions from a JSON file named "data.json."
# load json data into a python dictionary
def load_dictionary():
    with open('data.json', 'r') as file:
        data = json.load(file)
    return data
# Create a function that returns a definition of a word
# Consider a condition that the entered word is not in a dictionary
# Consider input from user having different cases – upper/ lower case or mixed eg: RAIN/rain/RaIN
# Make your dictionary program more intelligent incase users input a word with wrong spelling the program should be able to suggest the word that might be intended.

def get_definition(word, dictionary):
    # Check if the exact word is in the dictionary
    if word in dictionary:
        return dictionary[word]

    # If the exact word is not found, find the closest match
    suggestions = difflib.get_close_matches(word, dictionary.keys(), n=1, cutoff=0.8)
    
    if suggestions:
        closest_match = suggestions[0]
        suggestion_confirmation = input(f"Did you mean '{closest_match}'? (Enter 'y' for yes, 'n' for no): ").lower()
        
        if suggestion_confirmation == 'y':
            return dictionary[closest_match]
        else:
            return "Word not found. Please check your spelling."

    return "Word not found. Please check your spelling."

def main():
    dictionary = load_dictionary()

    while True:
        user_input = input("Enter a word to get its definition (or 'exit' to quit): ").lower()

        if user_input == 'exit':
            break

        definition = get_definition(user_input, dictionary)
        print(definition)

if __name__ == "__main__":
    main()
