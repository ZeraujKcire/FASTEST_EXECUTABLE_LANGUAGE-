1;
function s = bubblesort(v)
  itemCount = length(v);
  do
    hasChanged = false;
    itemCount--;
    for i = 1:itemCount
      if ( v(i) > v(i+1) )
	v([i,i+1]) = v([i+1,i]);  % swap
	hasChanged = true;
      endif
    endfor
  until(hasChanged == false)
  s = v;
endfunction

v = [564, 550, 34, 327, 436, 712, 354, 667, 971, 320, 145, 744, 124, 287, 612, 651, 89, 946, 552, 708, 231, 409, 93, 512, 448, 315, 389, 164, 50, 887, 596, 622, 565, 623, 266, 553, 649, 883, 307, 369, 142, 120, 541, 461, 221, 755, 60, 574, 335, 787, 482, 823, 326, 504, 785, 723, 9, 248, 257, 896, 863, 459, 695, 736, 217, 486, 193, 17, 691, 526, 555, 970, 841, 536, 758, 358, 645, 661, 104, 779, 223, 793, 594, 907, 151, 681, 803, 7, 385, 378, 112, 798, 797, 731, 934, 25, 717, 711, 945, 950, 961, 262, 952, 657, 613, 966, 589, 476, 133, 414, 338, 941, 365, 261, 141, 454, 842, 289, 533, 521, 675, 57, 852, 445, 117, 857, 629, 134, 121, 243, 559, 258, 568, 44, 879, 404, 126, 263, 130, 938, 849, 664, 730, 168, 519, 975, 551, 208, 63, 343, 679, 714, 344, 833, 979, 740, 153, 561, 26, 752, 739, 618, 123, 713, 534, 77, 485, 462, 146, 496, 391, 81, 718, 322, 972, 973, 427, 11, 908, 470, 900, 631, 698, 669, 647, 498, 351, 211, 780, 768, 249, 202, 103, 960, 176, 492, 254, 895, 909, 658, 80, 935, 654, 922, 655, 85, 209, 399, 602, 105, 912, 548, 782, 682, 821, 637, 430, 421, 756, 881, 187, 563, 247, 282, 609, 139, 882, 595, 954, 923, 352, 673, 148, 334, 888, 751, 796, 381, 576, 989, 240, 720, 727, 783, 734, 62, 773, 417, 778, 810, 875, 471, 324, 197, 82, 539, 858, 487, 227, 172, 460, 5, 709, 455, 844, 767, 418, 884, 4, 75, 169, 738, 38, 232, 937, 995, 64, 575, 122, 155, 106, 837, 913, 894, 604, 903, 630, 911, 525, 743, 114, 201, 28, 483, 432, 571, 737, 342, 990, 549, 662, 309, 115, 943, 921, 872, 705, 336, 267, 285, 185, 529, 678, 625, 360, 701, 392, 511, 413, 999, 406, 377, 288, 880, 573, 804, 19, 684, 902, 180, 889, 760, 444, 517, 136, 947, 224, 260, 129, 70, 177, 339, 616, 819, 572, 101, 51, 426, 242, 395, 107, 790, 419, 848, 494, 46, 800, 318, 259, 770, 452, 407, 566, 198, 513, 635, 499, 49, 340, 640, 968, 425, 603, 567, 277, 588, 313, 220, 690, 264, 642, 910, 481, 615, 90, 111, 61, 634, 206, 544, 832, 514, 826, 801, 353, 473, 183, 653, 538, 152, 24, 501, 416, 424, 88, 531, 466, 820, 710, 980, 724, 119, 578, 557, 113, 715, 825, 998, 607, 458, 650, 467, 906, 977, 411, 877, 235, 135, 302, 749, 636, 387, 948, 707, 528, 230, 138, 84, 226, 346, 125, 953, 964, 507, 3, 469, 554, 958, 196, 200, 98, 795, 303, 600, 268, 73, 824, 721, 890, 234, 439, 851, 746, 956, 41, 628, 976, 620, 497, 137, 273, 590, 446, 27, 16, 729, 131, 813, 308, 524, 250, 885, 488, 897, 195, 917, 505, 464, 856, 438, 158, 725, 854, 677, 33, 252, 982, 593, 213, 829, 181, 345, 333, 167, 579, 274, 597, 150, 491, 140, 676, 97, 905, 993, 403, 32, 347, 305, 489, 1, 400, 291, 29, 23, 540, 614, 447, 500, 190, 363, 102, 36, 194, 86, 838, 162, 328, 228, 836, 493, 781, 570, 835, 170, 719, 569, 814, 239, 412, 241, 301, 484, 984, 116, 666, 959, 246, 925, 435, 822, 388, 931, 154, 632, 207, 728, 312, 874, 368, 831, 626, 30, 18, 652, 456, 580, 689, 355, 147, 415, 366, 286, 965, 83, 506, 702, 199, 792, 893, 348, 43, 732, 706, 865, 914, 156, 754, 393, 45, 323, 174, 978, 967, 527, 428, 643, 265, 20, 520, 683, 703, 441, 108, 827, 815, 311, 611, 374, 963, 474, 747, 940, 933, 864, 95, 376, 443, 581, 927, 532, 733, 996, 545, 449, 233, 699, 420, 47, 992, 127, 869, 985, 143, 408, 806, 401, 477, 69, 189, 944, 871, 379, 205, 215, 873, 932, 928, 876, 182, 510, 962, 867, 216, 21, 753, 509, 547, 384, 741, 160, 179, 434, 341, 828, 556, 608, 245, 275, 96, 641, 830, 853, 410, 54, 809, 542, 916, 693, 15, 987, 52, 619, 668, 40, 109, 898, 310, 214, 279, 292, 94, 560, 617, 92, 317, 314, 543, 586, 463, 812, 422, 332, 502, 786, 204, 298, 587, 321, 300, 621, 58, 331, 402, 633, 924, 750, 870, 31, 144, 6, 599, 582, 175, 319, 686, 72, 429, 936, 225, 920, 212, 601, 316, 218, 99, 518, 479, 22, 437, 878, 671, 899, 605, 939, 161, 222, 465, 986, 799, 361, 59, 478, 843, 638, 546, 868, 396, 508, 173, 280, 839, 610, 942, 855, 359, 442, 722, 128, 79, 253, 834, 840, 818, 299, 373, 14, 762, 805, 8, 457, 284, 350, 375, 522, 775, 558, 71, 516, 929, 490, 735, 364, 765, 290, 915, 777, 35, 450, 862, 330, 48, 802, 42, 648, 674, 670, 283, 372, 67, 639, 688, 598, 776, 37, 184, 949, 272, 91, 451, 627, 440, 969, 997, 696, 397, 356, 295, 56, 918, 294, 329, 859, 957, 306, 850, 764, 431, 784, 386, 606, 687, 591, 791, 926, 203, 981, 78, 892, 685, 383, 270, 930, 515, 191, 704, 349, 210, 244, 901, 665, 475, 10, 159, 0, 951, 256, 861, 503, 149, 453, 584, 337, 663, 983, 325, 562, 2, 236, 297, 577, 745, 219, 716, 845, 192, 12, 362, 523, 66, 761, 53, 789, 480, 276, 394, 238, 13, 237, 132, 296, 772, 76, 423, 87, 771, 646, 860, 278, 74, 672, 39, 163, 763, 186, 988, 229, 370, 866, 100, 680, 585, 592, 281, 357, 891, 380, 472, 55, 788, 766, 68, 794, 624, 742, 166, 371, 398, 293, 304, 774, 817, 974, 816, 700, 808, 748, 919, 468, 726, 269, 535, 659, 367, 178, 807, 110, 271, 188, 660, 692, 904, 644, 656, 495, 537, 769, 759, 955, 65, 530, 255, 697, 694, 118, 382, 157, 433, 390, 991, 583, 757, 886, 405, 846, 811, 171, 251, 847, 994, 165];
v
disp(bubblesort(v));
