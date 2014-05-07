## Release 2: Basic Git Commands
Define the following commands and describe how they work/what they do.  


#### add
Adds a file from your local repo into the staging area

#### branch
Lists existing branches of the repo you're working in. Can also create a new branch of the repo, if a branch name is created. Example: git branch -a master_repo local_repo/branch_of_master

#### checkout
Moves you over to a different branch

#### clone
Makes a copy of a remote repo, and notes/remembers the name/location of the original repo so that you can pull updates from it again and again.

#### commit
Takes all of the changes you have in the staging area and uploads a snapshot of them into the remote repo

#### fetch
Finds everything in the remote repo that is not in the local repo, and pulls it down into the local

#### log
Lists all of the commits to the remote repo and the notes added for each one

#### merge
Combines two branches. Automatically commits if there are no conflicts.

#### pull
Fetches files from the remote repo and merges them into the local one. I think this is the same as fetch...?

#### push
The opposite of a pull... This pushes all of the changes that have been committed into the remote directory.

#### reset
Resets the directory you're working in to whatever it was at the last commit.

#### rm
Removes a directory

#### status
Lists the status of the directory you're in, whether anything is staged, and whether the branches are up to date

## Release 3: Git Workflow

- Push files to a remote repository
- Fetch changes
- Commit locally

git fetch remote_repo_name
git add files_to_stage
git commit -m 'Comment about changes'
git push remote_repo_name

## Reflection

I'm feeling okay about this! I like working with Terminal and am glad to be making the switch from the app to Terminal. I don't quite understand the -m and -a and whatnot, but I feel comfortable being able to look things up and get done what needs to get done, and I feel like I have a good handle on how git works overall.
