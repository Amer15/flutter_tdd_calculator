## ✅ Test Cases Covered

This project was developed using Test-Driven Development (TDD). The following test cases were implemented to ensure correctness:

1. **Returns 0 for an empty string**  
   - **Input:** `""`  
   - **Output:** `0`

2. **Returns the same number when a single number is provided**  
   - **Input:** `"4"`  
   - **Output:** `4`

3. **Returns the sum of two comma-separated numbers**  
   - **Input:** `"1,2"`  
   - **Output:** `3`

4. **Returns the sum of multiple comma-separated numbers**  
   - **Input:** `"1,2,3,4,5"`  
   - **Output:** `15`

5. **Handles newline (`\n`) as a valid delimiter along with commas**  
   - **Input:** `"1\n2,3"`  
   - **Output:** `6`

6. **Supports custom delimiters specified in the format `//<delimiter>\n`**  
   - **Input:** `"//;\n1;2"`  
   - **Output:** `3`

7. **Throws an exception when a single negative number is included**  
   - **Input:** `"1,-2"`  
   - **Output:** ❌ Throws `Exception: negative numbers not allowed -2`

8. **Throws an exception listing all negative numbers if multiple are present**  
   - **Input:** `"1,-2,-5,3"`  
   - **Output:** ❌ Throws `Exception: negative numbers not allowed -2,-5`

---

## How to Run

Follow the steps below to set up and run the project:

1. **Clone the repository**
   ```bash
   git clone https://github.com/Amer15/flutter_tdd_calculator.git
   ```
2. Open the project in the code editor
3. Open the terminal and run this command ```flutter pub get```  to install dependencies.
4. In the terminal run this command ```flutter test``` to run all test cases'  
   


