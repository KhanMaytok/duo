# DUO

Keep my Duolingo streak


Streak keeper and XP farm for Duolingo. Never get demoted again!

## How to use

- Go to Duolingo
- While logged in, open the browser's console (Option (⌥) + Command (⌘) + J (on macOS) or Shift + CTRL + J (on Windows/Linux))
- Get the JWT token by pasting this in the console, and copy the value ( without ')
```
document.cookie
  .split(';')
  .find(cookie => cookie.includes('jwt_token'))
  .split('=')[1]
```
This value is the JWT env variable

Build the image:

    docker build --pull --rm -f "Dockerfile" -t duo:latest "." 

Run the container:

    docker run -e "DUOLINGO_JWT=The jwt value" -e 'LESSONS=the number of lessons you want to run' -e 'CRONTIME=the crontime' duo:latest

Or run with a .env file:

    docker run --env-file .env duo:latest


## Caveats

This project won't help with your daily or friend quests, it can only earn XP to move up the league rank;

This project won't do real lessons or stories, only practices, so it won't affect your learning path;
