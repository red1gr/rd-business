# RD-BUSINESS FIVEM SCRIPT

[![GitHub issues](https://img.shields.io/github/issues/red1gr/rd-business?style=for-the-badge&logo=github&logoColor=white)](https://github.com/red1gr/rd-business/issues)
[![GitHub license](https://img.shields.io/github/license/red1gr/rd-business?style=for-the-badge&logo=apache&logoColor=white)](LICENSE)

## OVERVIEW

rd-business is a FiveM resource designed for QBCore-based servers to manage the operational status of businesses. It allows authorized players to open or close business locations via slash commands, broadcasting the status change to all players through a custom NUI interface and providing immediate feedback to the user via okokNotify.

## FEATURES

- **Job-Based Permissions:** Restricts command usage to players holding specific jobs and meeting minimum rank requirements defined in the configuration.
- **Cooldown Management:** Implements a configurable cooldown system to prevent the spamming of business status commands.
- **NUI Notifications:** Displays business status updates (open/closed) to all players using a custom HTML/CSS/JS interface.
- **Integrated Alerts:** Utilizes okokNotify to provide user feedback regarding permission errors, cooldown timers, and successful command execution.
- **Chat Integration:** Includes built-in chat suggestions for the `/open` and `/close` commands for improved user experience.

## TECH STACK

[![Lua](https://img.shields.io/badge/Lua-5.4-000080.svg?style=for-the-badge&logo=lua&logoColor=white)](https://www.lua.org/)
[![HTML](https://img.shields.io/badge/HTML-5-E34F26.svg?style=for-the-badge&logo=html5&logoColor=white)](https://developer.mozilla.org/en-US/docs/Web/HTML)
[![CSS](https://img.shields.io/badge/CSS-3-1572B6.svg?style=for-the-badge&logo=css3&logoColor=white)](https://developer.mozilla.org/en-US/docs/Web/CSS)
[![JavaScript](https://img.shields.io/badge/JavaScript-ES6-F7DF1E.svg?style=for-the-badge&logo=javascript&logoColor=black)](https://developer.mozilla.org/en-US/docs/Web/JavaScript)
[![QBCore](https://img.shields.io/badge/QBCore-Framework-blue.svg?style=for-the-badge)](https://github.com/qbcore-framework)

### INSTALLATION

1. **Download the Resource**
    - Extract the `rd-business` folder into your server's `resources` directory.
2. **Verify Dependencies**
    - Ensure your server has `qb-core` and `okokNotify` installed, as these are required for the script to function.
3. **Configure Settings**
    - Open `config.lua` to define your specific jobs, required ranks, and the command cooldown duration.
    ```lua
    Config.Cooldown = 10 -- Seconds
    Config.Jobs = {
        ['police'] = {
            label = 'Police Department',
            rank = 2,
            open_text = 'is now OPEN',
            close_text = 'is now CLOSED'
        }
    }
    ```
4. **Start the Resource**
    - Add the following line to your `server.cfg`:
    ```bash
    ensure rd-business
    ```

## PROJECT STRUCTURE

```
rd-business/
├── client.lua # Client-side NUI handling and event listeners
├── config.lua # Shared configuration settings
├── fxmanifest.lua # Resource manifest file
├── server.lua # Server-side command logic and permission checks
└── rd/ # NUI directory
    ├── rd.css # UI styling
    ├── rd.html # UI structure
    └── rd.js # UI logic
```

## CONTRIBUTING

- WE WELCOME CONTRIBUTIONS! IF YOU HAVE SUGGESTIONS FOR IMPROVEMENTS, FEATURE REQUESTS, OR BUG REPORTS, PLEASE OPEN AN ISSUE OR SUBMIT A PULL REQUEST ON OUR GITHUB REPOSITORY.

## LICENSE

- THIS PROJECT IS LICENSED UNDER THE APACHE-2.0 LICENSE - SEE THE LICENSE FILE FOR DETAILS.

## SUPPORT & CONTACT

- ISSUES: [GITHUB ISSUES](https://github.com/red1gr/rd-business/issues)
- CONTACT: [SUPPORT CONTACT](mailto:mail@red1gr.dev)