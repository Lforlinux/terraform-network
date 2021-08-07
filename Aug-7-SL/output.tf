output instance-id-web {
     value = aws_instance.web.id
}

output web_public_ip {
     value = aws_instance.web.public_ip
}

output instance-id-db {
     value = aws_instance.db.id
}

output db_public_ip {
     value = aws_instance.db.public_ip
}
