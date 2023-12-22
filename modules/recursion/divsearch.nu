# divsearch.nu: Divide and conquer search on unsorted list

# Return true if item is in list List can be unsorted.
# Uses == for equality test
def divsearch [n: int, l: list] -> bool {
  let len = ($l | length); let l_2 = ($len // 2)
  let lrng = 0..($l_2 - 1); let rrng = $l_2..($len - 1)

  if $len == 0 { false } else if $len == 1 {
    ($l | first) == $n
  } else {
    (divsearch $n ($l | range $lrng)) or (divsearch $n ($l | range $rrng))
  }
}

