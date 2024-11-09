## Commands
1. **git add [file(s)]**: Adds file changes to the staging area in preparation for committing. This command tells Git to start tracking changes in the specified file(s).
    
2. **git commit -m "[commit message]"**: Records the changes staged in the current branch. Each commit in Git has a unique identifier and a commit message that describes the changes made.
    
3. **git status**: Displays the current state of the working directory and the staging area. It shows which files are modified, which files are staged for the next commit, and which files are untracked.
    
4. **git push**: Uploads local repository changes to a remote repository. This command is commonly used to share commits with other collaborators or to update a remote repository with local changes.
    
5. **git pull**: Fetches changes from a remote repository and merges them into the local branch. It's used to synchronize the local repository with the remote repository, incorporating changes made by others.
    
6. **git fetch**: Downloads objects and refs from another repository without integrating the changes into the local branches. It's useful for inspecting changes before merging or pulling them into your branch.
    
7. **git branch**: Lists all the branches in the repository. It also indicates the current branch and highlights the branch you are currently on.
    
8. **git checkout [branch name or commit hash]**: Switches between branches or restores the working directory to a specific commit. This command is used for navigating between different branches or checking out specific points in the commit history.
    
9. **git merge [branch name]**: Combines changes from the specified branch into the current branch. It's used to integrate changes made in one branch into another branch.
    
10. **git log**: Displays a history of commits in the current branch, showing commit messages, authors, dates, and commit hashes. It provides a detailed view of the project's development timeline.

## Branching
### Create new feature branch
```
git checkout develop
git pull develop
git checkout -b feature/<branch-name>
```

## Push feature branch to remote git
```
git push origin feature/<branch-name>
git push --set-upstream origin feature/<branch-name>
```

## Merge to develop branch
```
git checkout develop
git pull develop
git checkout feature/<branch-name>
git merge develop
(fix merge conflicts if any)
git push
git checkout develop
git merge feature/<branch-name>
```
