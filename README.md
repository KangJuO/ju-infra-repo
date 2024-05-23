# fast-test-infra-repo

terraform code repo

폴더 구조

```shell
├── README.md
├── backend.tf
├── data.tf
├── main.tf
├── modules
│   └── eks-cluster
│       ├── data.tf
│       ├── main.tf
│       ├── output.tf
│       ├── provider.tf
│       └── variables.tf
├── output.tf
└── provider.tf
```

```shell
# 테라폼 커맨드
terraform init
terraform apply
terraform destroy --auto-approve
# EKS클러스터를 생성한뒤 kubectl로 접근하기 위해 클러스터 등록
aws --profile fastc eks --region ap-northeast-2 update-kubeconfig --name fast-cluster --alias fast-cluster
# config 삭제
kubectl config delete-context arn:aws:eks:ap-northeast-2:<account_id>:cluster/<cluster_name>
# 클러스터 변경
kubectl config use-context {CLUSTER_NAME(ex: fast-cluster)}
# 현재 클러스터 확인
kubectl config current-context
```

- module/yaml/karpenter/ mamage, service
- - 서비스용 파드가 할당되는 노드랑, 매니지먼트용 파드가 할당되는 노드가 따로 관리되도록
