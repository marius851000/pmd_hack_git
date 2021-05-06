# how to use (quickly):
- when downloading the project for the first time : run the compile script
- when you made any change, and you want to share them/upload your project after making change :
  - run the extract script
  - add the changed files in the rom folder to the git staged files
  - commit, with a message describing your change (the message is meant to be used by other human, it isn't in any way analysed by the computer)
  - push to send online your work (to your branch/fork)
  - using the online git interface (github), merge your change in the master/main branch, hopping there are no conflict (if they are, that's a bit more complicated, and I'll probably handle this myself (say marius))
  - and that's all for uploading your change
- when updating your project :
  - if you made change to your work, first upload them (merging is not strictly required, but is a good thing to do anyway)
  - either :
    - option 1 (simpler)
      - in the github interface, merge change to the source branch to your fork/branch with the online interface
      - pull the change via git
    - option 2 (more efficient, if work is merged in the source branch).
      - ensure you have fetched the latest version of origin/source remote
      - create a new branch based on the master/main from the origin/source remote
  - run the compile script to create the rom.nds

# The various file of unpacked nds rom :
*note for marius*
all of them are in the "rom" folder :
- arm9.bin and arm7.bin for the main binary
- data folder for the datas
- overlays for overlay
- y9.bin and y7.bin for the overlay data files
- banner.bin for the banner
- header.bin for the header

adding security to rom (allow it to run on real ds/3ds with twilight menu ++): ndstool -s patched.nds