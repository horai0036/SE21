	*> 2210104071 Teruya Horai
	
	IDENTIFICATION DIVISION.
	PROGRAM-ID. IDEONE.

	ENVIRONMENT DIVISION.

	DATA DIVISION.
	WORKING-STORAGE SECTION.
		01 FLAG PIC 9(3).
		01 I PIC 9(3).
		01 J PIC 9(3).
		01 REM PIC 9(3).
	
	PROCEDURE DIVISION.
		MOVE 0 TO FLAG.
		PERFORM VARYING I FROM 2 BY 1 UNTIL I > 100
			MOVE 0 TO FLAG
			PERFORM VARYING J FROM 2 BY 1 UNTIL J > I - 1
				COMPUTE REM = FUNCTION MOD(I J)
				IF REM = 0 THEN
					COMPUTE FLAG = 1
					EXIT PERFORM
			END-PERFORM
			IF FLAG = 0 THEN
				DISPLAY I
		END-PERFORM.
		STOP RUN.