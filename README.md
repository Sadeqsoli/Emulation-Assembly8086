# Simple Assembly Program for Beginners

This repository contains a simple assembly language program for the 8086 microprocessor. It is designed as an encouragement project for students and beginners in assembly programming. The program demonstrates basic operations such as displaying messages and reading a key press from the user.

## Getting Started

### Prerequisites

To assemble and run the program, you will need:

- An assembler like MASM (Microsoft Macro Assembler)
- An emulator like DOSBox to run the program on modern systems

### Files

- `program.asm`: The main assembly source code file.
- `README.md`: This readme file.

### Installation

1. **Install MASM**: You can download MASM from the following link: [MASM Download](https://www.masm32.com/).

2. **Install DOSBox**: Download and install DOSBox from [DOSBox Official Site](https://www.dosbox.com/).

### Usage

1. **Assemble the Program**:
   Open your terminal or command prompt and navigate to the directory containing `program.asm`. Use the following command to assemble the program:
```sh
   ml program.asm /link /subsystem:console
```

This will generate an executable file `program.exe`.

2. **Run the Program**:
To run the assembled program, you can use DOSBox. Launch DOSBox and mount the directory containing your program:
```sh
  mount c path\to\your\program
c:
program.exe
```
The program will display the messages and wait for you to press a key.
Program Explanation
The assembly program does the following:

1. Initializes the data segment.
2. Displays a welcome message.
3. Prompts the user to enter any key.
4. Waits for the user to press a key.
5. Displays an exit message.
6. Terminates the program.

   
### How to Test
Compile and Run: Follow the instructions in the Usage section to assemble and run the program. Verify that it correctly displays the messages and waits for a key press.

Modify and Experiment: Try modifying the messages or adding new functionality. Reassemble and run the program to see the changes in action.

### Contributing
If you have suggestions or improvements, feel free to fork the repository, make your changes, and submit a pull request.

License
This project is licensed under the MIT License. See the LICENSE file for details.

### Acknowledgments
Special thanks to all the educators and online resources that help beginners learn assembly language programming.

### Instructions on How to Use and Test

1. **Assemble the Program**:
   - Open your terminal or command prompt.
   - Navigate to the directory where `program.asm` is located.
   - Run the command:
     ```sh
     ml program.asm /link /subsystem:console
     ```
   - This will create an executable file named `program.exe`.

2. **Run the Program Using DOSBox**:
   - Open DOSBox.
   - Mount the directory where `program.exe` is located:
     ```sh
     mount c path\to\your\program
     ```
     Replace `path\to\your\program` with the actual path to your directory.
   - Switch to the mounted directory:
     ```sh
     c:
     ```
   - Run the program:
     ```sh
     program.exe
     ```
   - The program should display "hello", "enter any key", wait for a key press, and then display "exiting" before terminating.

### Testing the Program

1. **Initial Test**:
   - Follow the above steps to assemble and run the program.
   - Verify that the messages are displayed correctly and the program waits for a key press.
   - Ensure that the "exiting" message is displayed after a key press.

2. **Modify Messages**:
   - Open `program.asm` in a text editor.
   - Change the messages in the `.DATA` section:
     ```assembly
     m1 DB "Hello, world!$"
     m2 DB "Press any key to continue...$"
     m3 DB "Goodbye!$"
     ```
   - Save the file and reassemble the program using the `ml` command.
   - Run the modified program in DOSBox and observe the changes.

3. **Add New Functionality**:
   - Try adding a new print statement or modifying the existing macros to enhance functionality.
   - Reassemble and run the program to see the effects of your changes.

By following these instructions, beginners can compile, run, and experiment with the assembly program, gaining practical experience in assembly language programming.
