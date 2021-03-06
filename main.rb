﻿#coding: UTF-8
require "telegram/bot"

TOKEN = '1072045426:AAEo4iPTg5LXn9ZFNM_-w4QRsrS9mrjOAco'

ANSWERS = [
	#Положительные
	"Бесспорно",
	"Предрешено",
	"Никаких сомнений",
	"Определенно да",
	"Мщжешь быть уверен в этом",
	#нерешително положителные
	"Мне кажется - да",
	"Вероятнее всего",
	"Хорошие перспективы",
	"Знаки говорят - да",
	"да",
	#Нейтральные
	"Пока не ясно, попробуй снова",
	"Спроси позже",
	"Лучше не рассказывать",
	"Сейчас нельзя предсказать",
	"Сконцентрируйся и спроси опять",
	#Отрицательные
	"Даже не думай",
	"Мой ответ - нет",
	"По моим данным - нет",
	"перспективы не очень хорошие",
	"Весьма сомнительно"
]

Telegram::Bot::Client.run(TOKEN) do |bot|
	bot.listen do |message|
		case message.text
		when '/start', '/start start'
			bot.api.send_message(
            	chat_id: message.chat.id,
            	text: "Здраствуй, #{message.from.first_name}")
		else
			bot.api.send_message(
            	chat_id: message.chat.id,
            	text: ANSWERS.sample)	
			
		end
	end	
end		  