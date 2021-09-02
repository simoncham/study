# Programming Quiz

Please prepare your code of the answers with programming language `C#`.

Choose 3 out of the following 4 questions to answer. 

## How To Submit

Please go to .NETFiddle (https://dotnetfiddle.net/), write your code for your selected questions. Then copy the shared links of your answers and send to me.

## Questions

### 1.  Special Reverse

Write a function  to *"reverse"* a sentence (string) so that the sentence  "`Nice To Meet You`" will be converted to "`Ecin Ot Teem Uoy`". Let's assume it looks like in `C#`:

```cs
string SpecialReverse(string sentence)
```

The following are some test cases:

  |input|output|
  |--|--|
  |`Break a leg!`| `Kaerb a gel!`|
  |`No news is good news.`| `On swen si doog swen.`|
  |`Don't judge a book by its cover`|`Tno'd egduj a koob yb sti revoc`


### 2. Sorting Duplicates

Suppose we have a text file at the url [here](https://raw.githubusercontent.com/simoncham/study/master/questions.txt), the columns are seperated by single spaces.  Write a console program to display the rows with duplicates data in  the first column or duplicates data in the third column.

  Example:  If the file content is:

  ```
  ASD4E944 1 99090921
  ASD4E945 2 99090922
  ASD4E946 3 99090923
  ASD4E944 4 99090922
  ASD4E947 5 99090925
  ```

  Then the output of your program should be:

  ```
  ASD4E944 1 99090921
  ASD4E945 2 99090922
  ASD4E944 4 99090922
  ```
   

### 3. BOM Explosion

** You may use `SQL` or `C#` to implement the algorithm.

We have a table to represent Bill of Materials, BOM (table name `boms` ) of a product. The following is the meaning of the fields of the table:

| column name | type | meaning |
|--|--|--|
| `parent_code`| varchar(20) | A parent item code in a BOM |
| `item_code` | varchar(20) | A child item code in a BOM |
| `usage` |  numeric(18,2) | The quantity indicates how many of the child item will be used in the parent item. The unit of this quantity is the UOM of the child item. |
    
    
We also have an Item Master table (`items`) with the columns:

| column name | type | meaning |
|--|--|--|
| `item_code` | varchar(20) | the code the item
| `uom`| varchar(10) | The base UOM of the item 
| `mat_cost` | numeric(18,2) | The material cost of the item in HKD.
    

Now we have the following data in the two tables:

`items`:

|item_code|uom|mat_cost|
|--|--|--|
|A|PCS| |
|B|PCS| |
|M|PCS| |
|X1|PCS|3.2|
|X2|M|6|


`boms`:

|parent_code|item_code|usage|
|--|--|--|
|M |X1| 1|
|M |X2| 2|
|B | M| 4|
|A | B| 2|
|A | M| 1|
|A |X2| 2|

Please write a program to calucate the total material cost of parent item "A".

For your reference, the material cost of item "B" is HKD 68.8.

Sample SQL scripts your quick reference (TSQL and SQLite only): [https://github.com/simoncham/study/blob/master/questions..sql](https://github.com/simoncham/study/blob/master/questions..sql)

### 4. Where-Used

** Using the database structure in question 3.  
** You may use `SQL` or `C#` to implement the algorithm.

Please write a **Where-Used** program to find the items that use an specific item. Let's assume it looks like in `C#`:

```cs
List<string> WhereUsed(string itemCode) 
```
Test cases reference:

```cs
WhereUsed("M")  //will give items "A" and "B".  
WhereUsed("X1") //will give items "A", "B", and "M".  
```
