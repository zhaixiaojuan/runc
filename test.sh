#1. build
make clean
make

#2. test
mkdir tests/cmd/_bin
go build -trimpath "-buildmode=pie"  -tags "seccomp urfave_cli_no_docs" -ldflags "-X main.gitCommit=50e6fd3  " -o tests/cmd/_bin ./tests/cmd/recvtty
go build -trimpath "-buildmode=pie"  -tags "seccomp urfave_cli_no_docs" -ldflags "-X main.gitCommit=50e6fd3  " -o tests/cmd/_bin ./tests/cmd/sd-helper
go build -trimpath "-buildmode=pie"  -tags "seccomp urfave_cli_no_docs" -ldflags "-X main.gitCommit=50e6fd3  " -o tests/cmd/_bin ./tests/cmd/seccompagent
go build -trimpath "-buildmode=pie"  -tags "seccomp urfave_cli_no_docs" -ldflags "-X main.gitCommit=50e6fd3  " -o tests/cmd/_bin ./tests/cmd/fs-idmap
go build -trimpath "-buildmode=pie"  -tags "seccomp urfave_cli_no_docs" -ldflags "-X main.gitCommit=50e6fd3  " -o tests/cmd/_bin ./tests/cmd/pidfd-kill
go build -trimpath "-buildmode=pie"  -tags "seccomp urfave_cli_no_docs" -ldflags "-X main.gitCommit=50e6fd3  " -o tests/cmd/_bin ./tests/cmd/remap-rootfs
go build -trimpath "-buildmode=pie"  -tags "seccomp urfave_cli_no_docs" -ldflags "-X main.gitCommit=50e6fd3  " -o tests/cmd/_bin ./tests/cmd/key_label
go test -timeout 3m -tags "seccomp urfave_cli_no_docs"  -v ./...
