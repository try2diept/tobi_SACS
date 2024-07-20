### README.md

# Business Door Lock Script

This script automatically locks and unlocks doors at specific in-game times and sends notifications when the doors are unlocked. The script is easily configurable via a `config.lua` file.

## Dependencies

This script relies on the following resources:
- [ox_lib](https://github.com/overextended/ox_lib)
- [npwd](https://github.com/project-error/npwd)
- [ox_doorlock](https://github.com/overextended/ox_doorlock)

Ensure these resources are installed and properly configured in your server.

## Installation

1. **Download the Script**

   Clone or download this repository and place it in your `resources` folder.

2. **Add to Server Configuration**

   Add the script to your `server.cfg`:
   ```
   ensure your_script_folder_name 
   ```

3. **Configure Door Lock IDs**

   Create doors in `ox_doorlock` and get their IDs. Update the `config.lua` file with these IDs and your desired settings.


## Usage

1. **Create Doors in `ox_doorlock`**

   Follow the [ox_doorlock documentation](https://github.com/overextended/ox_doorlock) to create and configure your doors. Note the IDs assigned to these doors.

2. **Update Configuration**

   Add the door IDs to the `Config.DoorIDs` table in `config.lua`.

3. **Run the Script**

   Ensure the script is started with your server. It will automatically handle door locking and unlocking based on the configured times and send notifications.

## How It Works

- The server script listens for in-game time updates and locks/unlocks doors based on the configured hours.
- The client script continuously checks the in-game time and triggers server events to update the door states.
- A notification is sent to all players at a specified time to inform them when the doors are unlocked.

## Example

Here is an example of how the door locking and notification work:

- At 22:00 in-game time, all doors listed in `Config.DoorIDs` will be locked.
- At 06:00 in-game time, all doors listed in `Config.DoorIDs` will be unlocked, and a notification will be sent to all players via npwd phone.

## Support

For support and issues, please create an issue on the [GitHub repository](https://github.com/your-repo-link).

---

By following these instructions, you can easily set up and configure the Business Door Lock Script for your server.