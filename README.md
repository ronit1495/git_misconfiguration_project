# Dumping Git Data from Misconfigured Web Servers


How to use ?


Step 1: Use ./git_misconfiguration.sh

Step 2: Enter the location of file to read: ./absolute or relative path/random_domain.txt

Step 3: Enter the location of .git files to Store (if not found,it will create the directory): ./

Step 4:  Logs will be displayed on terminal 
         example: 
         
          File located succesfully... 
            
          Number of websites to process: 2

          Creating a temporary file....

          Appending .git on supplied domains 

          Looking for exposed .git folders....
          
          Check Download_location/website_output folder for any git catches...
          
          
  Note: File Check is enabled, if file not found script will exit
  
  **NOTE** Still working on using a sudomain enumeration tool to look for other .git access  
            Already tried:
            1. Sublist3r (Compatibilty Problem)
            2. SubBrute (Extremely Slow) 
