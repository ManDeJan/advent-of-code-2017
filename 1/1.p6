my $fh = open "input.txt", :r;
my @input = $fh.slurp-rest[0].chop.split('')[1..^*];
$fh.close;
my $total = 0;
my $last = @input[*-1];

for @input {
    if $_ == $last { $total += $_; }
    $last = $_;
}

say "TOTAL: $total";

