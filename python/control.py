def checkVowel(n): 
    match n: 
        case 'a': return "Vowel alphabet" 
        case 'e': return "Vowel alphabet" 
        case 'i': return "Vowel alphabet" 
        case 'o': return "Vowel alphabet" 
        case 'u': return "Vowel alphabet" 	
        case _: return "Simple alphabet" 	
print (checkVowel('a')) 
print (checkVowel('m')) 
print (checkVowel('o'))

bike = 'Yamaha'
 
if bike == 'Hero':
    print("bike is Hero")
 
elif bike == "Suzuki":
    print("bike is Suzuki")
 
elif bike == "Yamaha":
    print("bike is Yamaha")
 
else:
    print("Please choose correct answer")