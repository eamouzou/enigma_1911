# enigma_1911

Project Self-Assessment

Functionality - 3
Enigma class with encrypt and decrypt methods have been successfully implemented in addition to command line interfaces for each.

Object Oriented Programming - 4
I have implemented inheritance a couple of times throughout the project in order to extract common behavior. Inheritance allows me access to methods not created in the actual class I am deploying them within. It also helps with reusability and minimizing repetition. This helps improve the organization of my code by allowing me to avoid creating unnecessary extra code. I use class methods in the Cypher class to produce the given strings.

In addition, each class has a single responsibility, and all classes are linked in a sequential fashion to achieve the encryption and decryption. The shift class produces the shift values, the cypher class uses those shift values to transform the strings (encrypt or decrypt), and the enigma class uses the cypher process to encrypt and decrypt using a provided date/key or by generating its own. Finally, the command line interface class allows the user to use the enigma class to produce transformed messages in designated files.

Version Control - 4
I have 64 commits that are concise and related to single pieces of functionality. There are no commits which include multiple pieces of functionality. My commit messages directly describe the purpose of the commit. My pull request were by class. They are clearly named and also feature in-line code comments explaining the process and the function of the code developed.

Ruby Conventions and Mechanics - 4
Each class and method contained within that class is clearly named to communicate its purpose. For example, the current_date method inside the enigma class provides the current date. The encode_matched_alphabet method inside the cypher class provides a new alphabet based on the given shift value for the encode method.
My code is properly indented and no methods are longer than 10 lines. Hashes are implemented for the return values of specific methods as required by the interaction pattern.

Test-Driven Development - 4
As shown through my commit history, tests were executed consistently before writing any code. Stubs were used through the project to allow the testing of randomized elements. They were also used in the command line interface test to stand in for user input and allow the methods to be tested where they otherwise would not have been. All my test metrics show 100% coverage.
