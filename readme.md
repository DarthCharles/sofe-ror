# Stage 4 - ROR

During the last stage of SOFE participants will be required to test their teamwork skills and their readiness when working with a "real-life" working app.

The idea of this stage is having an online e-shop where a project manager raised several issues and new features that will make our e-shop grow stronger in the market. Issues can go from small front-end changes (e.g Change button color) or an evil bug that is making us bleed money (e.g. Users cannot place an order).

Each solved issue will make the participants collect points depending on the difficulty of each issue/feature.

You can find the least of known issues, their difficulty and the points for fixing them in this document:

https://docs.google.com/spreadsheets/d/1y8ofbtT16rRPKr5_8JaH7GsliXeVaVDJqjBmRdUuiRI/edit#gid=0

# Requirements
 * Docker

### To install:
* Download and install Docker:
  - Mac: https://www.docker.com/products/docker#/mac
  - Windows: https://www.docker.com/products/docker#/windows
  - Linux: https://www.docker.com/products/docker#/linux

### To run the application:
* Clone this repo: `git clone https://github.com/Nearsoft/sofe.git`
* Go to the project folder `cd sofe/stage-4/`
* 1st build your container images by running: `docker-compose build`
* Too fire up all of your app's containers run `docker-compose up`
* Go to `http://localhost:3000` on your favorite browser. :)


## PROTIPS:
* Take a look at the project structure of a typical rails application: https://www.sitepoint.com/a-quick-study-of-the-rails-directory-structure/
* Take your time to understand how the product works. Make a couple of orders and figure out how that process works. Once you have that understanding attacking bugs will be much easier. (It's worthwhile to do this as a team, so that you're all on the same page)
* Organize your resources cleverly! Read all the issues you can attack and make quick estimations on how long solving them will take (it will probably take you longer than you'd normall expect!)
* Hedge your bets between large tasks and quick wins, it's all about deliverables! A halfway fix is worth ZERO.
* Search wisely. It’s ok to make search on how to do X or Y in the given stack. Just make sure you understand what you want to ask and take the time to formulate the search properly. You’ll end up saving time and frustrations.
* Have fun :P
