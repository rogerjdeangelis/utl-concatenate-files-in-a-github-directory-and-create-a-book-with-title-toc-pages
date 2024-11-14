%let pgm=utl-concatenate-files-in-a-github-directory-and-create-a-book-with-title-toc-pages;

%stop_submission;

Concatenate files in a github directory and create a book with title toc pages

R and PYTHON mini Intro 'books' from github https://github.com/SaurabhSSB repositories

github
https://tinyurl.com/48vyzb4j
https://github.com/rogerjdeangelis/utl-concatenate-files-in-a-github-directory-and-create-a-book-with-title-toc-pages


MINI BOOKS (OUTPUT FROM THIS REPO)
==================================

r_master.txt
https://tinyurl.com/nh3k3ab3
https://github.com/rogerjdeangelis/utl-concatenate-files-in-a-github-directory-and-create-a-book-with-title-toc-pages/blob/main/r_master.txt

r_stats.txt
https://tinyurl.com/rrvcu2bu
https://github.com/rogerjdeangelis/utl-concatenate-files-in-a-github-directory-and-create-a-book-with-title-toc-pages/blob/main/r_stats.txt

r_visualize.txt
https://tinyurl.com/yc4y28a8
https://github.com/rogerjdeangelis/utl-concatenate-files-in-a-github-directory-and-create-a-book-with-title-toc-pages/blob/main/r_visualize.txt

r_programs.txt
https://tinyurl.com/mr2zcfy5
https://github.com/rogerjdeangelis/utl-concatenate-files-in-a-github-directory-and-create-a-book-with-title-toc-pages/blob/main/r_programs.txt

py_master.txt
https://tinyurl.com/5a843rpb
https://github.com/rogerjdeangelis/utl-concatenate-files-in-a-github-directory-and-create-a-book-with-title-toc-pages/blob/main/py_master.txt

py_programs.txt
https://tinyurl.com/4uffy8fx
https://github.com/rogerjdeangelis/utl-concatenate-files-in-a-github-directory-and-create-a-book-with-title-toc-pages/blob/main/py_programs.txt


RELATED REPOS
=============

githib
https://tinyurl.com/2f5579tt
https://github.com/rogerjdeangelis/utl-classic-r-alternatives-for-the-apply-family-of-functions-on-dataframes-for-sas-programmers

https://github.com/rogerjdeangelis/utl-converting-common-wps-coding-to-r-and-python

https://tinyurl.com/59bx7me8
https://github.com/rogerjdeangelis/utl-leveraging-your-knowledge-of-regular-expressions-to-wps-r-python-multi-language

https://github.com/rogerjdeangelis/utl_file_and_directory_utilities_for_all_operating_systems

macros
https://tinyurl.com/y9nfugth
https://github.com/rogerjdeangelis/utl-macros-used-in-many-of-rogerjdeangelis-repositories


Concatenate files in a github directory and create a book with title toc pages

        SOLUTIONS

           1 sas no macro wrapper
           2 sas with macro wrapper
           3 utl_dirx directory to sas table

utl_dirx macro on end and in repo below

 PROCESS TO DOWNLOAD GITHUB DIRECTORY FILES

  1. Open the directory in github an click on the green 'CODE' button and download as a zip file
  2. Example: if the github diretory is 'SaurabhSSB/A-Roadmap-to-Python-Mastery'
  3. The download file will be 'A-Roadmap-to-Python-Mastery-main'
  4. Unzip into d:/py_master

/*               _     _
 _ __  _ __ ___ | |__ | | ___ _ __ ___
| `_ \| `__/ _ \| `_ \| |/ _ \ `_ ` _ \
| |_) | | | (_) | |_) | |  __/ | | | | |
| .__/|_|  \___/|_.__/|_|\___|_| |_| |_|
|_|
*/

/***********************************************************************************************************************************************************************/
/*                                                                                                                                                                     */
/*              INPUT          |                   PROCESS                                   |     OUTPUT PYTHON MASTER BOOK                                           */
/*              =====          |                   =======                                   |     ==========================                                          */
/*                             |                                                             |                                                                         */
/* Downlaod github directory   |                                                             |                                                                         */
/* A-Roadmap-to-Python-Mastery |                                                             |                                                                         */
/* unzip into d:/py_master     | 1. BUILD MACRO ARRAYS                                       |  d:/txt/py_maste.txt                                                    */
/*                             | =====================                                       |                                                                         */
/* Create sas  work.py_master  |                                                             |  EXAMPLE PAGES                                                          */
/* %utl_dirx(d:/py_master      | %array(_drs,data=py_master,var=filename);                   |                                                                         */
/*   ,py_master);              |                                                             |  1. README                                                              */
/*                             | %put &_drs1;  * 01. Getting familiar with python.py ;       |                                                                         */
/* PY_MASTER total obs=15      | %put &_drs2;  * 02. Variables and Data Types.py     ;       |    README.md              # A-Roadmap-to-Python-Mastery                 */
/*                             |                                                             |                            These Python files provide ...               */
/* FILENAME                    | %put &_drs15; * README.md                           ;       |                            essential Basics of Python ...               */
/*                             |                                                             |                                                                         */
/* 01. Getting familiar ...    | %put &_drs n;  * 15                                  ;      |  2. CONTENTS                                                            */
/* 02. Variables and Data ...  |                                                             |                                                                         */
/* 03. Operators.py            | %array(_num,values=1-&_drsn);                               |    01. Getting familiar.. # Input                                       */
/* 04. Strings.py              |                                                             |    02. Variables and ...  # Variables are like Containers ...           */
/* 05. If- elif- else.py       | %put &_num1 ; *  1  ;                                       |    03. Operators.py       # Operators:- signs or  ...                   */
/* 06. Match Case.py           | %put &_num2 ; *  2  ;                                       |                                                                         */
/* 07. For loop.py             | %put &_numn  ;*  15 ;                                       |                                                                         */
/* 08. While Loops.py          |                                                             |     3. Operators.py       # Operators:- signs or keywords used to       */
/* 09. Break and Continue.py   | LOAD EACH OF THE 15 FILES INTO SAS DATASETS NXX1-NXX15      |                             perform specific operation on               */
/* 10. Functions.py            | ======================================================      |                             multiple values or variables.               */
/* 11. List.py                 |                                                             |                           # Types of Operators:-                        */
/* 12. Tuple.py                | %do_over(_drs _num,phrase=%str(                             |                           # Arithmetic Operators- +, -, *, /, **, //,   */
/* 13. Set.py                  |   filename fyl "d:/py_master/?_drs";                        |                           # Comparison Operators- <, >, <=. >=, ==, !=  */
/* 14. Dictionary.py           |   data nxx?_num;                                            |                           # Assignment Operators- =, +=, -=, *=, %=     */
/* README.md                   |     length fyls $200;                                       |                           # Logical Operators- AND, OR, NOT             */
/*                             |     infile fyl;                                             |                           # Bitwise Operators- &, |, <<, >>, -, ^       */
/*                             |     fyls="?_drs";                                           |                                                                         */
/*                             |     input;                                                  |                                                                         */
/*                             |     fyl=_infile_;                                           |                                                                         */
/*                             |   run;quit;                                                 |                                                                         */
/*                             |   filename fyl clear;                                       |                                                                         */
/*                             |   ));                                                       |                                                                         */
/*                             | run;quit;                                                   |                                                                         */
/*                             |                                                             |                                                                         */
/*                             | EXAMPLE NXX3 OUTPUT (THIRD FILE)                            |                                                                         */
/*                             | =================================                           |                                                                         */
/*                             |                                                             |                                                                         */
/*                             |      FYLS                  FYL                              |                                                                         */
/*                             | --------------- ---------------------------------------     |                                                                         */
/*                             | 3. Operators.py # Operators:- signs or keywords used to     |                                                                         */
/*                             |                   perform specific operation on             |                                                                         */
/*                             |                   multiple values or variables.             |                                                                         */
/*                             | 3. Operators.py # Types of Operators:-                      |                                                                         */
/*                             | 3. Operators.py # Arithmetic Operators- +, -, *, /, **, //,%|                                                                         */
/*                             | 3. Operators.py # Comparison Operators- <, >, <=. >=, ==, !=|                                                                         */
/*                             | 3. Operators.py # Assignment Operators- =, +=, -=, *=, %=   |                                                                         */
/*                             | 3. Operators.py # Logical Operators- AND, OR, NOT           |                                                                         */
/*                             | 3. Operators.py # Bitwise Operators- &, |, <<, >>, -, ^     |                                                                         */
/*                             |                                                             |                                                                         */
/*                             | ASSEMBLE SECTIONS IN THE RIGHT ORDER                        |                                                                         */
/*                             | ====================================                        |                                                                         */
/*                             |                                                             |                                                                         */
/*                             | data book1;                                                 |                                                                         */
/*                             |   set  readme contents pages;                               |                                                                         */
/*                             | run;quit;                                                   |                                                                         */
/*                             |                                                             |                                                                         */
/*                             | OUTPUT THE BOOK                                             |                                                                         */
/*                             | =================                                           |                                                                         */
/*                             |                                                             |                                                                         */
/*                             | proc printto file="d:/txt/py_maste.txt" new;                |                                                                         */
/*                             | proc report data=book1 ;                                    |                                                                         */
/*                             |  cols sect fyls fyl;                                        |                                                                         */
/*                             |  define sect /group noprint;                                |                                                                         */
/*                             |  define fyls /group width=32;                               |                                                                         */
/*                             |  define fyl / display width=64 flow;                        |                                                                         */
/*                             |  break before sect / skip;                                  |                                                                         */
/*                             |  compute before sect;                                       |                                                                         */
/*                             |      dragon=' ';                                            |                                                                         */
/*                             |      line dragon $1.;                                       |                                                                         */
/*                             |      line @1 sect $32.;                                     |                                                                         */
/*                             |  endcomp;                                                   |                                                                         */
/*                             | run;quit;                                                   |                                                                         */
/*                             |                                                             |                                                                         */
/*                             | proc printto;                                               |                                                                         */
/*                             | run;quit;                                                   |                                                                         */
/*                             |                                                             |                                                                         */
/***********************************************************************************************************************************************************************/

/*                   _
(_)_ __  _ __  _   _| |_
| | `_ \| `_ \| | | | __|
| | | | | |_) | |_| | |_
|_|_| |_| .__/ \__,_|\__|
        |_|
*/

%utl_dirx(d:/py_master,py_master);

/**************************************************************************************************************************/
/*                                                                                                                        */
/*  WORK.PY_MASTER total obs=15                                                                                           */
/*                                          NUMBER_OF_    MEMBER_                                                         */
/*   FILENAME                                 MEMBERS      NUMBER                                                         */
/*                                                                                                                        */
/*   01. Getting familiar with python.py        15            1                                                           */
/*   02. Variables and Data Types.py            15            2                                                           */
/*   03. Operators.py                           15            3                                                           */
/*   04. Strings.py                             15            4                                                           */
/*   05. If- elif- else.py                      15            5                                                           */
/*   06. Match Case.py                          15            6                                                           */
/*   07. For loop.py                            15            7                                                           */
/*   08. While Loops.py                         15            8                                                           */
/*   09. Break and Continue.py                  15            9                                                           */
/*   10. Functions.py                           15           10                                                           */
/*   11. List.py                                15           11                                                           */
/*   12. Tuple.py                               15           12                                                           */
/*   13. Set.py                                 15           13                                                           */
/*   14. Dictionary.py                          15           14                                                           */
/*   README.md                                  15           15                                                           */
/*                                                                                                                        */
/**************************************************************************************************************************/


/*
/ |  ___  __ _ ___   _ __   ___    _ __ ___   __ _  ___ _ __ ___  __      ___ __ __ _ _ __  _ __   ___ _ __
| | / __|/ _` / __| | `_ \ / _ \  | `_ ` _ \ / _` |/ __| `__/ _ \ \ \ /\ / / `__/ _` | `_ \| `_ \ / _ \ `__|
| | \__ \ (_| \__ \ | | | | (_) | | | | | | | (_| | (__| | | (_) | \ V  V /| | | (_| | |_) | |_) |  __/ |
|_| |___/\__,_|___/ |_| |_|\___/  |_| |_| |_|\__,_|\___|_|  \___/   \_/\_/ |_|  \__,_| .__/| .__/ \___|_|
 _ __  _ __ ___   ___ ___  ___ ___                                                   |_|   |_|
| `_ \| `__/ _ \ / __/ _ \/ __/ __|
| |_) | | | (_) | (_|  __/\__ \__ \
| .__/|_|  \___/ \___\___||___/___/
|_|
*/

/*--- CREATE ARRAYS                       ---*/

%array(_drs,data=py_master,var=filename);

%array(_num,values=1-&_drsn);

/*--- MAKE SURE RERUNS HAVE A CLEAN SLATE ---*/

proc datasets lib=work nodetails nolist;
 delete nxx1-nxx&_numn;
run;quit;

/*--- CONVERT EACH FILE TO A SAS DATASET  ---*/

%do_over(_drs _num,phrase=%str(
  filename fyl "d:/py_master/?_drs";
  data nxx?_num;
    length fyls $200;
    infile fyl;
    fyls="?_drs";
    input;
    fyl=_infile_;
  run;quit;
  filename fyl clear;
  ));
run;quit;

/*--- EXAMPLE SAS DATASET (3RD FILE)      ---*/

/**************************************************************************************************************************/
/*                                                                                                                        */
/* WORK.NXX3 total obs=77                                                                                                 */
/*                                                                                                                        */
/* 03. Operators.py    # Operators:- signs or keywords used to perform specific operation on multiple values or variables.*/
/* 03. Operators.py    # Types of Operators:-                                                                             */
/* 03. Operators.py    # Arithmetic Operators- +, -, *, /, **, //, %                                                      */
/* 03. Operators.py    # Comparison Operators- <, >, <=. >=, ==, !=                                                       */
/* 03. Operators.py    # Assignment Operators- =, +=, -=, *=, %=                                                          */
/* 03. Operators.py    # Logical Operators- AND, OR, NOT                                                                  */
/* 03. Operators.py    # Bitwise Operators- &, |, <<, >>, -, ^                                                            */
/* 03. Operators.py                                                                                                       */
/* 03. Operators.py    # Arithmetic Operators                                                                             */
/* 03. Operators.py    a=3                                                                                                */
/* 03. Operators.py    b=4                                                                                                */
/* 03. Operators.py    c=6                                                                                                */
/* 03. Operators.py    print(a+b, " ", a-b, " ", a*b, " ", c/b, " ", b**a, " ", c//b, " ", c%b)                           */
/*                                                                                                                        */
/**************************************************************************************************************************/

/*--- SPLIT SECTIONS README CONTENTS PAGES---*/

data readme contents pages;
  retain sect fyls fyl;
  set sd1.nxx:;
  by fyls;
     sect="3. PAGES   ";
     output pages;
  if first.fyls then do;
     sect="2. CONTENTS";
     output contents;
  end;
  if fyls =: "README" then do;
     sect="1. README";
     output readme;
  end;
run;quit;

/*-- ASSEMBLE SECTIONS IN THE RIGHT ORDER ---*/

data book1;
  set  readme contents pages;
run;quit;

/*-- FINISH BOOT INTO d:/txt/book.txt     ---*/

proc printto file="d:/txt/book.txt" new;
proc report data=book1 ;
 cols sect fyls fyl;
 define sect /group noprint;
 define fyls /group width=32;
 define fyl / display width=64 flow;
 break before sect / skip;
 compute before sect;
     dragon=' ';
     line dragon $1.;
     line @1 sect $32.;
 endcomp;
run;quit;

proc printto;
run;quit;

/**************************************************************************************************************************/
/*                                                                                                                        */
/*   FYLS                              FYL                                                                                */
/*                                                                                                                        */
/*  1. README                                                                                                             */
/*                                                                                                                        */
/*    README.md                         # A-Roadmap-to-Python-Mastery                                                     */
/*                                       These Python files provide a foundational understanding of                       */
/*                                      essential Basics of Python programming language .                                 */
/*                                                                                                                        */
/*  2. CONTENTS                                                                                                           */
/*                                                                                                                        */
/*    01. Getting familiar with python  # Input                                                                           */
/*    02. Variables and Data Types.py   # Variables are like Containers that hold data                                    */
/*    03. Operators.py                  # Operators:- signs or keywords used to perform specific                          */
/*                                      operation on multiple values or variables.                                        */
/*    04. Strings.py                    # Anything that is between single or double quotation marks is                    */
/*                                      string.                                                                           */
/*    05. If- elif- else.py             '''                                                                               */
/*    06. Match Case.py                 '''                                                                               */
/*    07. For loop.py                   name = 'Saurabh'                                                                  */
/*    08. While Loops.py                # While Loops                                                                     */
/*    09. Break and Continue.py         # Break                                                                           */
/*    10. Functions.py                  '''                                                                               */
/*    11. List.py                       # List is an ordered collection of data that stores mutiple                       */
/*                                      values.                                                                           */
/*    12. Tuple.py                      # Tuple is an ordered collection of data that stores mutiple                      */
/*                                      values.                                                                           */
/*    13. Set.py                        # Set is an unordered collection of data, it stored multiple                      */
/*                                      entries in a single variable.                                                     */
/*    14. Dictionary.py                 # Dictionary is an ordered collection of data that stores                         */
/*                                      multiple values                                                                   */
/*    README.md                         # A-Roadmap-to-Python-Mastery                                                     */
/*                                                                                                                        */
/*  3. PAGES                                                                                                              */
/*                                                                                                                        */
/*    01. Getting familiar with python  # Input                                                                           */
/*                                      a= input("Enter the value:- ")# Don't forget to give input each                   */
/*                                      time this code is executed                                                        */
/*                                      b= int(input("Only Integer else there will be an error:- "))                      */
/*                                      c= float(input("Only Float else there will be an error:- "))                      */
/*                                                                                                                        */
/*                                      # Output                                                                          */
/*                                      print(a)                                                                          */
/*                                      print(b+ c)                                                                       */
/*                                      print(5+2)                                                                        */
/*                                      print("Python")                                                                   */
/*                                      print(7,8.12,"Python ", sep= "-", end= "$")                                       */
/*                                                                                                                        */
/*                                      # Multiple Output                                                                 */
/*                                      print(a,7,8,6+5)                                                                  */
/*                                                                                                                        */
/*                                      # Comments - lines that will not be executed                                      */
/*                                                                                                                        */
/*                                      # Single- Line Comment                                                            */
/*                                                                                                                        */
/*                                      '''                                                                               */
/*                                      Multi- Line Comments used to comment multiple line,                               */
/*                                      instead of using # each time.                                                     */
/*                                      '''                                                                               */
/*                                      """                                                                               */
/*                                      We can also use Double- Quoted-                                                   */
/*                                      Three- inverted- commas                                                           */
/*                                                                                                                        */
/**************************************************************************************************************************/

/*___
|___ \   ___  __ _ ___   _ __ ___   __ _  ___ _ __ ___  __      ___ __ __ _ _ __  _ __   ___ _ __
  __) | / __|/ _` / __| | `_ ` _ \ / _` |/ __| `__/ _ \ \ \ /\ / / `__/ _` | `_ \| `_ \ / _ \ `__|
 / __/  \__ \ (_| \__ \ | | | | | | (_| | (__| | | (_) | \ V  V /| | | (_| | |_) | |_) |  __/ |
|_____| |___/\__,_|___/ |_| |_| |_|\__,_|\___|_|  \___/   \_/\_/ |_|  \__,_| .__/| .__/ \___|_|
                                                                           |_|   |_|
*/
%macro utl_book(dirz=,tblz=,book=);

   /*---
   %let dirz=e:/r_master;
   %let tblz=r_master;
   %let book=e:/txt/&tblz..txt;
   ---*/

   proc datasets lib=work kill;
   run;quit;

   %utl_dirx(&dirz,&tblz);

   /*--- CREATE ARRAYS                       ---*/

   %array(_drs,data=&tblz,var=filename);

   %array(_num,values=1-&_drsn);

   /*--- MAKE SURE RERUNS HAVE A CLEAN SLATE ---*/

   /*--- CONVERT EACH FILE TO A SAS DATASET  ---*/

   %do_over(_drs _num,phrase=%str(
     filename fyl "&dirz/?_drs";
     data nxx?_num;
       length fyls $200;
       infile fyl;
       fyls="?_drs";
       input;
       fyl=_infile_;
     run;quit;
     filename fyl clear;
     ));
   run;quit;

   /*--- SPLIT SECTIONS README CONTENTS PAGES---*/

   data readme contents pages;
     retain sect fyls fyl;
     set nxx:;
     by fyls;
        sect="3. PAGES   ";
        output pages;
     if first.fyls then do;
        sect="2. CONTENTS";
        output contents;
     end;
     if fyls =: "README" then do;
        sect="1. README";
        output readme;
     end;
   run;quit;

   /*-- ASSEMBLE SECTIONS IN THE RIGHT ORDER ---*/

   data book1;
     set  readme contents pages;
     if strip(fyls)='.RData' then delete;
     if strip(fyls)='.gitattributes' then delete;
     if strip(fyl)="'''" then fyl=scan(fyls,2,'.');
   run;quit;

   /*-- FINISH BOOT INTO d:/txt/book.txt     ---*/

   title;
   footnote;

   options ps=5000;
   proc printto file="&book" new;
   proc report data=book1 noheader split="`";
    cols sect fyls fyl;
    define sect /order noprint;
    define fyls /order width=32;
    define fyl / display width=90 flow;
    break before sect / skip;
    compute before sect ;
        dragon='  ';
        line dragon $2.;
        line @1 sect $32.;
    endcomp;
    compute before fyls ;
        dragon='  ';
        line dragon $2.;
    endcomp;
   run;quit;

   proc printto;
   run;quit;
   options ps=65;

   %arraydelete(_drs);
   %arraydelete(_num);

%mend utl_book;

%utl_book(dirz=e:/r_stats,tblz=r_stats,book=e:/txt/r_stats.txt);
%utl_book(dirz=e:/r_master,tblz=r_master,book=e:/txt/r_master.txt);
%utl_book(dirz=e:/r_visualize,tblz=r_visualize,book=e:/txt/r_visualize.txt);
%utl_book(dirz=e:/r_programs,tblz=r_programs,book=e:/txt/r_programs.txt);
%utl_book(dirz=e:/py_master,tblz=py_master,book=e:/txt/py_master.txt);
%utl_book(dirz=e:/py_programs,tblz=py_programs,book=e:/txt/py_programs.txt);

/*____         _   _        _ _
|___ /   _   _| |_| |    __| (_)_ ____  __
  |_ \  | | | | __| |   / _` | | `__\ \/ /
 ___) | | |_| | |_| |  | (_| | | |   >  <
|____/   \__,_|\__|_|___\__,_|_|_|  /_/\_\
                   |_____|
*/

%macro utl_dirx(pth,out);
       data &out(drop=rc did i);
         retain filename number_of_members filename member_number;
         rc=filename("mydir","&pth");
         did=dopen("mydir");
         if did > 0 then do;
            number_of_members=dnum(did);
            do i=1 to number_of_members;
              filename=dread(did,i);
              member_number+1;
              output;
           end;
        end;
      run;quit;

%mend utl_dirx;

/*              _
  ___ _ __   __| |
 / _ \ `_ \ / _` |
|  __/ | | | (_| |
 \___|_| |_|\__,_|

*/

r_stats.txt
https://tinyurl.com/rrvcu2bu
https://github.com/rogerjdeangelis/utl-concatenate-files-in-a-github-directory-and-create-a-book-with-title-toc-pages/blob/main/r_stats.txt

r_master.txt
https://tinyurl.com/nh3k3ab3
https://github.com/rogerjdeangelis/utl-concatenate-files-in-a-github-directory-and-create-a-book-with-title-toc-pages/blob/main/r_master.txt

r_visualize.txt
https://tinyurl.com/yc4y28a8
https://github.com/rogerjdeangelis/utl-concatenate-files-in-a-github-directory-and-create-a-book-with-title-toc-pages/blob/main/r_visualize.txt

r_programs.txt
https://tinyurl.com/mr2zcfy5
https://github.com/rogerjdeangelis/utl-concatenate-files-in-a-github-directory-and-create-a-book-with-title-toc-pages/blob/main/r_programs.txt

py_master.txt
https://tinyurl.com/5a843rpb
https://github.com/rogerjdeangelis/utl-concatenate-files-in-a-github-directory-and-create-a-book-with-title-toc-pages/blob/main/py_master.txt

py_programs.txt
https://tinyurl.com/4uffy8fx
https://github.com/rogerjdeangelis/utl-concatenate-files-in-a-github-directory-and-create-a-book-with-title-toc-pages/blob/main/py_programs.txt
