# glossaries

use File::Basename;

add_cus_dep('glo', 'gls', 0, 'run_makeglossaries');
add_cus_dep('acn', 'acr', 0, 'run_makeglossaries');

sub run_makeglossaries {
  $dir = dirname($_[0]);
  $file = basename($_[0]);
  system "makeglossaries -d '$dir' '$file'";
}

push @generated_exts, 'glo', 'gls', 'glg';
push @generated_exts, 'acn', 'acr', 'alg';
$clean_ext .= ' %R.ist %R.xdy';

push @generated_exts, 'bbl', 'run.xml', 'synctex.gz';