function kdebug() {
	local pod="$HOME/dot-kube/debug-pod.yaml"
	if [ ! -f "$pod" ]; then
		echo "debug pod not found at $pod"
		return 1
	fi
	local name=$(yq '.metadata.name' "$pod")
	kubectl apply "${@}" -f "$pod"
	kubectl wait --for=condition=ready "${@}" "pod/$name"
	kubectl exec "${@}" -it "$name" -- bash
	kubectl delete "${@}" -f "$pod"
}