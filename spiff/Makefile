.PHONY: all
all: dotfiles

.PHONY: dotfiles
dotfiles:
	# Create directories
	for directory in $(shell find $(CURDIR) -type d); do \
		mkdir -p $$directory; \
	done; \
	# Add symlinks for dotfiles
	for file in $(shell find $(CURDIR) -type f -name ".*" -not -name ".*.swp"); do \
		f=$$(basename $$file); \
		ln -sfn $$file $(HOME)/$$f; \
	done; \
