
import java.util.*;
import java.io.*;
import java.nio.file.*;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;

public class ReplaceClause {

	private String myName = this.getClass().getName();
	private CobolPreprocessorParser.ReplaceClauseContext ctx = null;
	private int startLine = -1;
	private int endLine = -1;
	private int startPosn = -1;
	private int endPosn = -1;
	private Boolean leading = false;
	private Boolean trailing = false;
	private ArrayList<TerminalNodeWrapper> replaceable = new ArrayList<>();
	private ArrayList<TerminalNodeWrapper> replacement = new ArrayList<>();

	public ReplaceClause (CobolPreprocessorParser.ReplaceClauseContext ctx) {
		this.ctx = ctx;
		if (this.ctx.LEADING() != null) {
			this.leading = true;
		} else if (this.ctx.TRAILING() != null) {
			this.trailing = true;
		}
		this.setReplacement();
		this.setReplaceable();
		this.setNewlineAndWhitespaceFlags(this.getReplacement());
		this.setNewlineAndWhitespaceFlags(this.getReplaceable());

	}

	private void setReplacement() {
		TestIntegration.LOGGER.finest(this.myName + " setReplacement()");
		LiteralWrapper literal = null;
		CobolWordWrapper cobolWord = null;
		PseudoTextWrapper pseudoText = null;
		CharDataLineWrapper charDataLine = null;
		DirectoryPhrase directoryPhrase = null;

		CobolPreprocessorParser.ReplacementContext rCtx = this.ctx.replacement();
		if (rCtx != null) {
			CobolPreprocessorParser.LiteralContext lCtx = rCtx.literal();
			CobolPreprocessorParser.CobolWordContext cwCtx = rCtx.cobolWord();
			CobolPreprocessorParser.PseudoTextContext ptCtx = rCtx.pseudoText();
			CobolPreprocessorParser.CharDataLineContext cdlCtx = rCtx.charDataLine();
			CobolPreprocessorParser.DirectoryPhraseContext dCtx = this.ctx.directoryPhrase();
			if (lCtx != null) {
				literal = new LiteralWrapper(lCtx);
				this.replacement.addAll(literal.getTerminalNodeWrappers());
			}
			if (cwCtx != null) {
				cobolWord = new CobolWordWrapper(cwCtx);
				this.replacement.addAll(cobolWord.getTerminalNodeWrappers());
			}
			if (ptCtx != null) {
				pseudoText = new PseudoTextWrapper(ptCtx);
				this.replacement.addAll(pseudoText.getTerminalNodeWrappers());
			}
			if (cdlCtx != null) {
				charDataLine = new CharDataLineWrapper(cdlCtx);
				this.replacement.addAll(charDataLine.getTerminalNodeWrappers());
			}
			if (dCtx != null) {
				directoryPhrase = new DirectoryPhrase(dCtx);
				this.replacement.addAll(directoryPhrase.getTerminalNodeWrappers());
			}
		}

		this.replacement.sort(Comparator.comparingLong(TerminalNodeWrapper::getSortKey));
	}

	public void setReplaceable() {
		TestIntegration.LOGGER.finest(this.myName + " setReplaceable()");
		LiteralWrapper literal = null;
		CobolWordWrapper cobolWord = null;
		PseudoTextWrapper pseudoText = null;
		CharDataLineWrapper charDataLine = null;

		CobolPreprocessorParser.ReplaceableContext rCtx = this.ctx.replaceable();
		if (rCtx != null) {
			CobolPreprocessorParser.LiteralContext lCtx = rCtx.literal();
			CobolPreprocessorParser.CobolWordContext cwCtx = rCtx.cobolWord();
			CobolPreprocessorParser.PseudoTextContext ptCtx = rCtx.pseudoText();
			CobolPreprocessorParser.CharDataLineContext cdlCtx = rCtx.charDataLine();
			if (lCtx != null) {
				literal = new LiteralWrapper(lCtx, this.leading, this.trailing);
				this.replaceable.addAll(literal.getTerminalNodeWrappers());
			}
			if (cwCtx != null) {
				cobolWord = new CobolWordWrapper(cwCtx, this.leading, this.trailing);
				this.replaceable.addAll(cobolWord.getTerminalNodeWrappers());
			}
			if (ptCtx != null) {
				pseudoText = new PseudoTextWrapper(ptCtx, this.leading, this.trailing);
				this.replaceable.addAll(pseudoText.getTerminalNodeWrappers());
			}
			if (cdlCtx != null) {
				charDataLine = new CharDataLineWrapper(cdlCtx, this.leading, this.trailing);
				this.replaceable.addAll(charDataLine.getTerminalNodeWrappers());
			}
		}

		this.replaceable.sort(Comparator.comparingLong(TerminalNodeWrapper::getSortKey));
	}

	private void setNewlineAndWhitespaceFlags(ArrayList<TerminalNodeWrapper> tNodes) {
		for (int i = 0; i < tNodes.size(); i++) {
			if (i == 0) {
				tNodes.get(i).setIsFirst(true);
			} else {
				tNodes.get(i).setPrecededByNewline(tNodes.get(i - 1).isNewline());
				long posn1 = tNodes.get(i - 1).getPosn();
				int textLength = tNodes.get(i - 1).getTextLength();
				long posn2 = tNodes.get(i).getPosn();
				Boolean precededByWhitespace = !(posn1 + textLength == posn2);
				tNodes.get(i).setPrecededByWhitespace(precededByWhitespace);
			}
		}
	}

	public ArrayList<TerminalNodeWrapper> getReplacement() {
		return this.replacement;
	}

	public ArrayList<TerminalNodeWrapper> getReplaceable() {
		return this.replaceable;
	}

}