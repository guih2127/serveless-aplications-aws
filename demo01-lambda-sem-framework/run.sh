# 1 - Criar arquivos de políticas de segurança.
# 2 - Criar role de segurança na AWS.

aws iam create-role \
    --role-name guih2127-lambda-exemplo \
    --assume-role-policy-document file://politicas.json \
    | tee logs/role.log

# 3 - Criar arquivo com conteúdo e zipa-lo.
zip function.zip index.js

aws lambda create-function \
    --function-name hello-cli \
    --zip-file fileb://function.zip \
    --handler index.handler \
    --runtime nodejs12.x \
    --role arn:aws:iam::008041919612:role/guih2127-lambda-exemplo \
    | tee logs/lambda-create.log

# 4 - atualizar lambda
# zip function.zip index.js

# aws lambda update-function-code \
#     --zip-file fileb://function.zip \
#     --function-name hello-cli \
#     --publish \
#     | tee logs/lambda-update.log

# 5 - Invocar a Lambda
aws lambda invoke \
    --function-name hello-cli \
    --log-type Tail \
    logs/lambda-exec.log

# remover
aws lambda delete-function \
    --function-name hello-cli

aws iam delete-role \
    --role-name guih2127-lambda-exemplo