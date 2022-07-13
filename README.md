<h1 align="center">The 8-Puzzle Game!</h1> 

<h3 align="center">Click <a href="https://giorgos-sofronas.itch.io/8-puzzle-game" target="_blank">here</a> to play the game online at itch.io</h3>

>The classic [8-Puzzle Game](https://en.wikipedia.org/wiki/15_puzzle) implemented in C, with GUI using [raylib](https://www.raylib.com/) library.
Given an initial 3x3 puzzle, the aim is to reach a specific goal-puzzle in the minimum number of moves. The user is provided with two options: (1) either try to solve the puzzle on their own or (2) let the computer solve it (A.I.) using [A* search](https://en.wikipedia.org/wiki/A*_search_algorithm#:~:text=*%2Dlike%20algorithm.-,Description,shortest%20time%2C%20etc.) and a [Manhantann distance](https://en.wikipedia.org/wiki/Taxicab_geometry) heuristic.

## How To Play
- Select a mode (using the mouse): either solve the puzzle yourself, or let the computer do it in the minumum number of moves.
- Give initial puzzle. Press number-keys 1-8 for the corresponding numbers and the SPACE bar for the blank tile. The puzzle is filled row-to-row from left to right.
- If you select the manual mode, using the arrow keys, you should try to solve the puzzle, reaching the goal state showed on the screen. *EXAMPLE: Pressing the UP arrow key, will move the tile below the blank one, upwards.*
- If you select the A.I. mode, press ENTER to generate the next (optimal) move.

## Sample Initial Puzzles
<table>
  <tr>
    <td>
      <table>
        <caption>Puzzle 1</caption>
        <tr>
          <td>2</td>
          <td>3</td>
          <td>8</td>
        </tr>
        <tr>
          <td> </td>
          <td>1</td>
          <td>4</td>
        </tr>
        <tr>
          <td>7</td>
          <td>6</td>
          <td>5</td>
        </tr>
      </table>
    </td>
    <td>
      <table>
        <caption>Puzzle 2</caption>
        <tr>
          <td>8</td>
          <td> </td>
          <td>6</td>
        </tr>
        <tr>
          <td>5</td>
          <td>4</td>
          <td>7</td>
        </tr>
        <tr>
          <td>2</td>
          <td>3</td>
          <td>1</td>
        </tr>
      </table>
    </td>
    <td>
      <table>
        <caption>Unsolvable</caption>
        <tr>
          <td>8</td>
          <td>1</td>
          <td>2</td>
        </tr>
        <tr>
          <td> </td>
          <td>4</td>
          <td>3</td>
        </tr>
        <tr>
          <td>7</td>
          <td>6</td>
          <td>5</td>
        </tr>
      </table>
    </td>
  </tr>
</table>

## About the Source Code

- `include`

  Contains needed header files for the use of raylib. 
  
- `lib`
  
  Contains the `libraylib_linux.a` library, used to create the Linux executable file.
  
- `numbers` & `sounds`
  
  Contain the images and sounds used in the game.
  
- `src`

  **Contains the source code of the game. To be more specific:**
    - a Priority Queue ADT implementation (from the [Abstract-Data-Types-in-C](https://github.com/sdi2100180/Abstract-Data-Types-in-C) project)
    - the puzzle.h and puzzle.c files containing the A.I. solver
    - the inteface.h and inteface.c files containing the GUI of the game with the use of raylib
    - the main.c file containing the main function
    
 ## Compilation & Use for: Windows, Linux and macOS
**Install the program by compiling the source code. Make sure `make` is installed. <br>Put your Operating System in the OS field of the Makefile (linux or win or mac *-- example: `OS = win` --*).** By default, OS = linux.
<br><br>
Compile and run using the following command (Makefile):
```
make run
```
## License
<a href="https://opensource.org/licenses/GPL-3.0" target="_blank"><img alt="GPL-3.0 License" align="left" src="https://img.shields.io/github/license/sdi2100180/8-Puzzle-Game-GUI?style=for-the-badge"></a></br>

libraries:
+ [raylib](https://github.com/raysan5/raylib/blob/be7f717a24e72e0bc84389491a063de65c106048/LICENSE), zlib license

</br>

> This project was a bonus excercise of Assignment 1 of the course<br> [Data Structures K08](https://www.di.uoa.gr/sites/default/files/undergraduate_courses_files/DIT_PPS_K08-DataStructures.pdf), DIT-UoA 2022,
Giorgos Sofronas (sdi2100180).
