my $fh = open "input.txt", :r;
my @input = $fh.slurp-rest[0].chop.split('')[1..^*];
$fh.close;
my $total = 0;

for @input Z 0..* {
    my ($n, $i) = $_;
    my $idx = ($i + (@input.elems div 2)) % @input.elems;
    if $n == @input[$idx] { $total += $n; }
}

say "TOTAL: $total";

