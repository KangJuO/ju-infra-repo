module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source = "./modules/eks-cluster"
  cluster_name = "fast-cluster"
  cluster_version = "1.29"
  vpc_id = "vpc-01fd0d44656c368f6"

  private_subnets = ["subnet-0199bee2dafdfef9b", "subnet-0f6ffa8cae7420e08"]
  public_subnets  = ["subnet-0dfe8b34c8741d911", "subnet-0326f80ff87ef1e53"]
}