# Project 1 Iteration 1: Launcher Game
A project by Kc Weaver.

## How To PLay
    Click and drag the circle back and release to launch the projectile at the boxes.
    Force corresponds to drag distance and you can only launch between zero and ninety degrees.



## Third-Party Assets



Images are from "Physics Assets". Created in 2014 by kenney.nl,
[CC0 1.0 Universal](http://creativecommons.org/publicdomain/zero/1.0/). Source:
https://www.kenney.nl/assets/physics-assets



## Project Report

### Reflection
    I found that the most challenging part of this project was trying to combine click and drag controls with a visual indicator of launch direction. There aren't many tutorials for
    Godot 4 yet, so I had to do my best to look through the Godot documentation and compare it to old code and tutorials to come up with solutions. This issue simply proved too much
    in the time frame, as I couldnt get the line to draw correctly without error. The most interesting part of the project was how I dealt with clamping the angles of the launch by
    dividing the circle into three sections using PI and angle detection. I then reassigned the values if the launch angle was outside the allowed area to the most appropriate launch
    angle. The biggest hurdle I had was trying to get the tilemap to work. I struggled for a few hours as I could not find my issue online. After a computer reset, it seems it was
    just a Ui issue, and I was able to readjust the size. Continuing in the project, I will be able to fix the indicator issues and add more features around the core gameplay. 

### Self-Assessment

- [X] D-1: The repository contains a <code>README.md</code> file in its top-level directory on the default branch.
- [X] D-2: The project content is eligible for an <a href="https://www.esrb.org/ratings-guide/">ESRB Rating</a> of M or less.
- [X] C-1: Your repository is well-formed, in our course organization, with an appropriate <code>.gitignore</code> file, no unnecessary files tracked, a single mainline branch named <code>main</code> or <code>master</code>, and all commit messages following <a href="https://cbea.ms/git-commit/">our commit message style guide</a>.
- [X] C-2: Your release is tagged using <a href="https://semver.org/">semantic versioning</a> where the major version is zero, the minor version is the iteration number, the patch version is incremented as usual for each change made to the minor version, and the release name matches the release tag.
- [X] C-3: You have a clear legal right to use all incorporated assets, the licenses for all third-party assets are tracked in the <code>README.md</code> file, and you have satisfied all license requirements.
- [X] C-4: Either the <code>README.md</code> contains instructions for how to play the game or such instructions are incorporated into the game.
- [X] C-5: The player can fire the projectile.
- [X] C-6: The player can control the angle at which the projectile is fired.
- [X] C-7: The projectile's flight is affected by gravity using Godot Engine's physics system.
- [X] C-8: There is a &ldquo;ground&rdquo; that stops the projectile.
- [X] B-1: The project report is complete.
- [X] B-2: The projectile's firing angle is clamped between 0&deg; (straight forward) and 90&deg; (straight up).
- [X] B-3: There is a non-ground target that the projectile can hit.
- [X] A-1: The player can modify the strength of the projectile's firing.
- [ ] A-2: There is a visual indicator showing the angle at which the projectile will fire.
    - Struggled to get this to work with the click and drag mechanic. Decided to keep the more interesting controls. 
- [X] A-3: The projectile's hitting the target is recognized and logged to the console or otherwise indicated.

This work therefore merits an A. 