FROM alpine:3.4

RUN apk --update --no-cache add py-pip && pip install aws-ec2-assign-elastic-ip

ENTRYPOINT [ "./aws-ec2-assign-elastic-ip" ]

