#!/usr/bin/python2.7

from pyotrs import Client
client = Client("https://suporte.qosit.com.br", "qospbx", "Qqosit-0215#")
client.session_create()
client.ticket_get_by_id(5764)