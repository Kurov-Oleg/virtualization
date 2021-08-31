1. все доступные resource и data_source описаны в файле terraform-provider-aws/aws/provider.go 186-1251 строки
2. terraform-provider-aws/aws/data_source_aws_sqs_queue.go 37 строка:  name берется из schema.ResourceData, но schema.ResourceData не содержит поле name
    
    максимальная длина имени 255 символов
    
    к сожалению, я не смог найти информацию об этом. предположу что  Имена ресурсов всегда должны начинаться с имени содержащего их поставщика, за которым следует подчеркивание. 


Доработка:
информация об resource aws_sqs_queue содержится в файле terraform-provider-aws/aws/resource_aws_sqs_queue.go 

