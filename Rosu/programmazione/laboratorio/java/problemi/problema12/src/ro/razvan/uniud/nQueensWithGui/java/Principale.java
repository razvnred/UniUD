package ro.razvan.uniud.nQueensWithGui.java;

import org.jetbrains.annotations.NotNull;
import queens.ChessboardView;

public final class Principale {

    /**
     * args[0]: dimensione del lato della scacchiera
     *
     * @param args argomenti del programma
     */
    public static void main(@NotNull final String[] args) {

        final var size = Integer.parseInt(args[0]);

        final var gui = new ChessboardView(size);
        final var solutions = Queens.listOfAllSolutions(size);

        Queens.displaySolutions(gui, solutions);

    }

}
