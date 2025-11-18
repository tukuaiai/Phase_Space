# Makefile for Phase Space Expansion Project Documentation

# --- Variables ---
# Pandoc command
PANDOC := pandoc

# Output directory
OUT_DIR := out

# Source Markdown files (in order of appearance)
SRC_FILES := \
	Life_new/README.md \
	Life_new/docs/Phase_Space_Expansion_Roadmap.md \
	Life_new/docs/Human_3.0_Technical_Blueprint_Academic.md \
	Life_new/docs/Human_3.0_Technical_Blueprint_Academic_zh.md \
	Life_new/docs/人类3.0未来蓝图_社交媒体版.md \
	Life_new/docs/实践指南.md \
	Life_new/docs/情绪建模与注入.md \
	Life_new/docs/本体论分岔_体验机器终局.md \
	Life_new/archives/audit/物理极限审计.md \
	Life_new/archives/reviews/评审清单.md

# Intermediate concatenated source file
CONCAT_SRC := $(OUT_DIR)/source.md

# --- Rules ---

# Default target: build all formats
all: html pdf

# Target for HTML output
html: $(OUT_DIR)/report.html

# Target for PDF output
pdf: $(OUT_DIR)/report.pdf

# Rule to create the concatenated source file
$(CONCAT_SRC): $(SRC_FILES)
	@mkdir -p $(OUT_DIR)
	@echo "Concatenating source files..."
	@cat $(SRC_FILES) > $(CONCAT_SRC)

# Rule to build HTML from the concatenated source
$(OUT_DIR)/report.html: $(CONCAT_SRC)
	@echo "Building HTML report..."
	$(PANDOC) \
		--from=gfm \
		--to=html5 \
		--standalone \
		--toc \
		--toc-depth=2 \
		--metadata-file=metadata.yaml \
		-o $@ $< 

# Rule to build PDF from the concatenated source
$(OUT_DIR)/report.pdf: $(CONCAT_SRC)
	@echo "Building PDF report..."
	$(PANDOC) \
		--from=gfm \
		--to=pdf \
		--standalone \
		--toc \
		--toc-depth=2 \
		--pdf-engine=xelatex \
		-V mainfont="Noto Sans CJK SC" \
		-V monofont="Noto Sans Mono CJK SC" \
		-V geometry:margin=1in \
		--metadata-file=metadata.yaml \
-o $@ $<

# Rule to clean the output directory
clean:
	@echo "Cleaning output directory..."
	@rm -rf $(OUT_DIR)

# Phony targets
.PHONY: all html pdf clean
