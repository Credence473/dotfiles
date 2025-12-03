#!/usr/bin/env python

import sys
import asyncio
from telegram import Bot
import os


# Load variables
BOT_TOKEN = os.getenv("TG_BOT_TOKEN")
CHAT_ID = os.getenv("TG_CHAT_ID")

if len(sys.argv) > 1:
    FILE_PATHS = sys.argv[1:]
else:
    print("Usage: telesend <file_path>")
    sys.exit(1)


async def main():
    bot = Bot(BOT_TOKEN)
    for FILE_PATH in FILE_PATHS:
        with open(FILE_PATH, "rb") as f:
            async with bot:
                await bot.send_document(chat_id=CHAT_ID, document=f)


if __name__ == "__main__":
    asyncio.run(main())
