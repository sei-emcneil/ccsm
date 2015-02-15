all: fn_call_single_file

.PHONY: test_fn_call_single_file
fn_call_single_file: STEP=test_fn_call_single_file
fn_call_single_file: $(PASS)/out.log.fn_call_single_file $(PASS)/err.log.fn_call_single_file
$(PASS)/out.log.fn_call_single_file $(PASS)/err.log.fn_call_single_file: src/fn_call.c $(TGT) 
	@echo Test $(STEP): Function call count \(single file\)
	$(TGT_E) $(EXCLUDE) src/fn_call.c --output-metrics=FUNC_CALLED_BY,OP_FN_CALL* -- $(OUT)
	$(CHECK_E)

