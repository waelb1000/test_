# hello github again

# make the current folder into a git repository 
git init 

# add a new file into the current repository 
git add new_file

# add all files
git add .

# change between branches 
git checkout -b branch_name

# current branch 
git branch 

# push to github 
git push 

# commit changes 
git commit -m "commentaire"

# show the changes made 
git diff

# common git commands
To create a new repository locally: git init
To add files to staging area: git add .  OR   git add ~filename~
To check status of staging area: git status
To commit new changes: git commit -m "commit message"
To create a new branch: git checkout -b ~branch name~
To switch between branches: git checkout ~branch name~
To merge branches together: git merge ~branch name~
To add a remote repository: git remote add ~remote name~ ~https://yourremoteurl~
To pull changes from a remote repository: git pull ~remote name~ ~branch name~
To push changes to a remote repository: git push ~remote name~ ~branch name~
