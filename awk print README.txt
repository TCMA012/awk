awk print README
C:\angularReactiveForms\browsepedia_ng-forms\ng-forms-main\ng-forms-main\README.md



C:\angularReactiveForms\ng-forms-main_browsepedia
cd C:/angularReactiveForms/ng-forms-main_browsepedia


awk print lines using ranges
# prints lines from /beginpat/ to /endpat/, not inclusive
awk '/endpat/{p=0};p;/beginpat/{p=1}'

# prints lines from /beginpat/ to /endpat/, not inclusive
awk '/```/{p=0};p;/```ts/{p=1}' C:/angularReactiveForms/browsepedia_ng-forms/ng-forms-main/ng-forms-main/README.md > browsepedia_ng-forms.ts


