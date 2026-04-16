# Axiom Management CLI
.DEFAULT_GOAL := help

up: ## Boot the stack
	docker compose up -d

report-build: ## Build the static analytics site from SQL/Markdown
	cd reports && npx evidence build
	@echo "✅ Analytics site built in ./reports/build"

report-dev: ## Run Evidence.dev in hot-reload mode for development
	cd reports && npx evidence dev

sync: ## Export project structure to JSON
	uv run python3 libs/code_mapper.py --to-json

clean: ## Deep clean containers and caches
	docker system prune -f
	find . -type d -name "__pycache__" -exec rm -rf {} +

help: ## Show this help menu
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

##@ Maintenance
full-clean: ## Remove python caches and temporary files
	find . -type d -name "__pycache__" -exec rm -rf {} +
	rm -rf .pytest_cache .venv .ruff_cache .mypy_cache
	@# Remove legacy VS Code Snap environment injections that break devpod/devbox sessions
	-sed -i '/snap\/code/d' ~/.profile ~/.bashrc ~/.bash_aliases 2>/dev/null

nuke: full-clean ## ☢️  Wipe EVERYTHING (k3d + docker + volumes + process)
	@echo "Nuking system..."
	@k3d cluster delete --all || true
	@docker stop $$(docker ps -aq) 2>/dev/null || true
	@docker rm $$(docker ps -aq) 2>/dev/null || true
	@docker volume rm $$(docker volume ls -q) 2>/dev/null || true
	@docker system prune -af --volumes
	@pgrep tmux > /dev/null && pkill -9 tmux || true
	@echo "✅ Reset complete."

#  Automatically collect all targets with descriptions for .PHONY
ALL_TARGETS := $(shell grep -E '^[a-zA-Z_-]+:.*?##' $(MAKEFILE_LIST) | cut -d: -f1)

.PHONY: $(ALL_TARGETS)