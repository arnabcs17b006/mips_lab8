.data
array:  .word 1, 2, 1, 2, 1, 2, 1, 2, 1, 1
.text

main:
	la    $t0,array
	li    $s0,10
	li    $s1,0
	li    $s2,0
	li    $s3,1
	j     L

L:
	bgt   $s1,$s0,E
	lw    $t1,0($t0)
	addi  $t0,$t0,4
	addi  $s1,$s1,1
	beq   $t1,$s3,L1
	j     L

L1:
    addi  $s2,$s2,1
    j     L

E:
	j $31
