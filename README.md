### Summary

This is a repo that stores dot files for my home directory.

It's primarily used for a Mac system.

### Installation

1. Run the following in your home directory ([credit](https://stackoverflow.com/a/16811212/1880761)):
    ```bash
    git init .
    git remote add origin <repository-url>
    git checkout master
    ```
2. Ignore changes to `.ssh/config` ([credit](https://stackoverflow.com/a/10755704/1880761)):
    ```bash
    git update-index --assume-unchanged .ssh/config
    ```

### Updates

Files are excluded by default (see `.gitignore`). If there's a new file that should be tracked, the `.gitignore` file will need to be updated before you will be able to add it.
