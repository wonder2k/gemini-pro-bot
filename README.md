<div align="center">

  # GEMINI-PRO-BOT
  
  **A Python Telegram bot powered by Google's `gemini-pro` LLM API**

  *This is a Python Telegram bot that uses Google's gemini-pro LLM API to generate creative text formats based on user input. It is designed to be a fun and interactive way to explore the possibilities of large language models.*
  
[Gemini Bot Preview](https://github.com/rabilrbl/gemini-pro-bot/assets/63334479/ffddcdfa-09c2-4f02-b14d-4407e888b605)

</div>

### Features

* Generate creative text formats like poems, code, scripts, musical pieces, etc.
* Stream the generation process, so you can see the text unfold in real-time.
* Reply to your messages with Bard's creative output.
* Easy to use with simple commands:
    * `/start`: Greet the bot and get started.
    * `/help`: Get information about the bot's capabilities.
* Send any text message to trigger the generation process.
* Send any image with captions to generate responses based on the image. (Multi-modal support)

### Requirements

* Python 3.10+
* Telegram Bot API token
* Google `gemini-pro` API key
* dotenv (for environment variables)


### Docker

#### GitHub Container Registry
Simply run the following command to run the pre-built image from GitHub Container Registry:

```shell
docker run --env-file .env ghcr.io/rabilrbl/gemini-pro-bot:latest
```

Update the image with:
```shell
docker pull ghcr.io/rabilrbl/gemini-pro-bot:latest
```

#### Build
Build the image with:
```shell
docker build -t gemini-pro-bot .
```
Once the image is built, you can run it with:
```shell
docker run --env-file .env gemini-pro-bot
```

### Installation

1. Clone this repository.
2. Install the required dependencies:
    * `pipenv install` (if using pipenv)
    * `pip install -r requirements.txt` (if not using pipenv)
3. Create a `.env` file and add the following environment variables:
    * `BOT_TOKEN`: Your Telegram Bot API token. You can get one by talking to [@BotFather](https://t.me/BotFather).
    * `GOOGLE_API_KEY`: Your Google Bard API key. You can get one from [Google AI Studio](https://makersuite.google.com/).
4. Run the bot:
    * `python main.py` (if not using pipenv)
    * `pipenv run python main.py` (if using pipenv)

### Usage

1. Start the bot by running the script.
   ```shell
   python main.py
   ```
2. Open the bot in your Telegram chat.
3. Send any text message to the bot.
4. The bot will generate creative text formats based on your input and stream the results back to you.

### Bot Commands

| Command | Description |
| ------- | ----------- |
| `/start` | Greet the bot and get started. |
| `/help` | Get information about the bot's capabilities. |
| `/new` | Start a new chat session. |


### Contributing

We welcome contributions to this project. Please feel free to fork the repository and submit pull requests.

### Disclaimer

This bot is still under development and may sometimes provide nonsensical or inappropriate responses. Use it responsibly and have fun!

### License

This is a free and open-source project released under the GNU Affero General Public License v3.0 license. See the LICENSE file for details.
