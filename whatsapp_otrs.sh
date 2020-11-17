#!/bin/bash

#coleta informaçoes zabbix
data=$1
ticket=$2

#informações mandeumzap
number="55${data}"
serviceId="6e1d7714-a8aa-438a-9ea5-28f41118a01b"
token="37c69527a972b78e6420518f2f6a412d245b8085"

echo "${number}"



curl --location --request POST 'https://qosit-api.digisac.app/v1/messages' \
--header 'Authorization: Bearer '${token}'' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--data-urlencode 'number=='${number}'' \
--data-urlencode 'dontSendUserName=true' \
--data-urlencode 'serviceId=6e1d7714-a8aa-438a-9ea5-28f41118a01b' \
--data-urlencode 'text=Você acabou de abrir um ticket no suporte da Q.o.S! Aguarde, em breve nosso time entrará em contato! Para acessá-lo clique em: https://suporte.qosit.com.br/otrs/customer.pl?Action=CustomerTicketZoom;TicketNumber='${ticket}''

exit 0
