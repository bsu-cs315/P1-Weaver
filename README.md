# Project 1 Iteration 1: Launcher Game
A project by Kc Weaver.

## How To Play
- Click and drag the circle back and release to launch the projectile at the boxes for points.
- Force corresponds to drag distance and you may only launch between zero and ninety degrees.
- You only get three shots, use "r" to reload.
- Do not attempt to reload after ball has stopped rolling.
      - This will result in a "double reload" costing an additional ammo



## Third-Party Assets



Images are from "Physics Assets". Created in 2014 by kenney.nl,
[CC0 1.0 Universal](http://creativecommons.org/publicdomain/zero/1.0/). Source:
https://www.kenney.nl/assets/physics-assets



## Project Report

### Reflection
The most difficult part of this iteration was determining how to best format the project.
I spent a lot of time determining which functions should go where in which scripts before I was finally able to get it working.
The biggest hurdle was getting the ball to reinstate after being shot, while keeping properties like the score intact.
I found ways around my problems through creating custom signals in the circle script that let the level know when the circle has stopped if it has hit a box.
I found adding sounds to be an easy and fun process that I look forward to doing more in the future. To improve, I will add destructable boxes, more UI elements, and sound effects.

### Self-Assessment

- [X] D-1: The repository contains a <code>README.md</code> file in its top-level directory on the default branch.
- [X] D-2: The project content is eligible for an <a href="https://www.esrb.org/ratings-guide/">ESRB Rating</a> of M or less.
- [X] C-1: Your repository is well-formed, in our course organization, with an appropriate <code>.gitignore</code> file, no unnecessary files tracked, a single mainline branch named <code>main</code> or <code>master</code>, and all commit messages following <a href="https://cbea.ms/git-commit/">our commit message style guide</a>.
- [X] C-2: Your release is tagged using <a href="https://semver.org/">semantic versioning</a> where the major version is zero, the minor version is the iteration number, the patch version is incremented as usual for each change made to the minor version, and the release name matches the release tag.
- [X] C-3: You have a clear legal right to use all incorporated assets, the licenses for all third-party assets are tracked in the <code>README.md</code> file, and you have satisfied all license requirements.
- [X] C-4: Either the <code>README.md</code> contains instructions for how to play the game or such instructions are incorporated into the game.
- [X] C-5: The projectile and targets are shown with 2D graphics.
- [X] C-6: The game plays an appropriate sound effect when the projectile is fired, and the sound effect is correctly stored as a <code>.wav</code> asset.
- [X] B-1: The project report is complete.
- [X] B-2: Earn one star.
- [X] A-1: Earn three stars.
- [X] ⭐ The player has a small inventory of projectiles, and only one can be launched at a time.
- [X] ⭐ The background and ground use 2D graphics.
- [X] ⭐ A <abbr title="Heads-Up Display">HUD</abbr> shows the current game state such as the score and number of projectiles remaining.

This work therefore merits an A. 
