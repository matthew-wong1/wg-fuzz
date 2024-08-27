struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(Struct_1(vec4<f32>(-965f, -2192f, -280f, -874f), vec3<i32>(6783i, -9386i, 40192i), 27136i), Struct_1(vec4<f32>(-819f, 146f, -483f, 357f), vec3<i32>(0i, 1i, -95928i), 7999i)), Struct_2(Struct_1(vec4<f32>(1000f, -722f, 876f, -146f), vec3<i32>(2147483647i, 7000i, i32(-2147483648)), 1i), Struct_1(vec4<f32>(124f, -534f, -1048f, -127f), vec3<i32>(7426i, 53188i, 3131i), 1i)), Struct_2(Struct_1(vec4<f32>(265f, -1969f, 1769f, 1710f), vec3<i32>(23333i, -8713i, 0i), -48757i), Struct_1(vec4<f32>(936f, 726f, 155f, -342f), vec3<i32>(8671i, 1i, 2147483647i), -1i)), Struct_2(Struct_1(vec4<f32>(1000f, -1703f, -2042f, 455f), vec3<i32>(-44500i, 0i, -3448i), -4288i), Struct_1(vec4<f32>(1000f, -878f, 229f, -511f), vec3<i32>(2147483647i, i32(-2147483648), 51179i), 2147483647i)), Struct_2(Struct_1(vec4<f32>(1768f, -909f, -520f, -924f), vec3<i32>(i32(-2147483648), -43653i, 0i), 1i), Struct_1(vec4<f32>(1229f, 795f, 155f, -1583f), vec3<i32>(0i, 0i, 2147483647i), 2147483647i)), Struct_2(Struct_1(vec4<f32>(1585f, -647f, 1166f, 733f), vec3<i32>(-27202i, -10018i, -29363i), 2147483647i), Struct_1(vec4<f32>(-230f, 398f, -1636f, -1060f), vec3<i32>(54604i, 24168i, -302i), -34018i)), Struct_2(Struct_1(vec4<f32>(1082f, 640f, -635f, -153f), vec3<i32>(0i, -16983i, 23216i), 15642i), Struct_1(vec4<f32>(-1005f, 1000f, -1063f, -1059f), vec3<i32>(0i, 1i, 2147483647i), 1i)), Struct_2(Struct_1(vec4<f32>(-661f, -1000f, 937f, 969f), vec3<i32>(2147483647i, 2147483647i, -22029i), i32(-2147483648)), Struct_1(vec4<f32>(260f, 687f, 2105f, 189f), vec3<i32>(1i, 15224i, 26560i), -1i)), Struct_2(Struct_1(vec4<f32>(859f, 2204f, 1000f, 1044f), vec3<i32>(-14265i, 0i, -1i), 27569i), Struct_1(vec4<f32>(568f, -1006f, -424f, 1623f), vec3<i32>(26999i, 1i, 0i), 1i)), Struct_2(Struct_1(vec4<f32>(-1084f, 1328f, 110f, -908f), vec3<i32>(36095i, -13553i, -1i), -31571i), Struct_1(vec4<f32>(1456f, -620f, -548f, 994f), vec3<i32>(-1i, i32(-2147483648), i32(-2147483648)), 0i)), Struct_2(Struct_1(vec4<f32>(1010f, 770f, 970f, 331f), vec3<i32>(2147483647i, -57658i, 1i), 47880i), Struct_1(vec4<f32>(-794f, -274f, -671f, 1948f), vec3<i32>(-1i, 20114i, -28234i), 1i)), Struct_2(Struct_1(vec4<f32>(1000f, 343f, -1376f, -1289f), vec3<i32>(1i, 33163i, -4789i), 0i), Struct_1(vec4<f32>(398f, -1815f, 222f, 436f), vec3<i32>(2147483647i, -15252i, -8383i), i32(-2147483648))), Struct_2(Struct_1(vec4<f32>(-725f, 186f, -1498f, -829f), vec3<i32>(-13108i, -1i, 24415i), 2147483647i), Struct_1(vec4<f32>(939f, 1862f, 1228f, 488f), vec3<i32>(-1i, 0i, -20369i), i32(-2147483648))), Struct_2(Struct_1(vec4<f32>(-488f, 927f, -847f, 1514f), vec3<i32>(31943i, 21633i, -1i), -52202i), Struct_1(vec4<f32>(998f, -460f, 866f, 1478f), vec3<i32>(3i, 0i, -1i), -26100i)), Struct_2(Struct_1(vec4<f32>(1000f, 337f, -188f, -337f), vec3<i32>(-22181i, -1i, 66650i), i32(-2147483648)), Struct_1(vec4<f32>(222f, -350f, 1581f, -502f), vec3<i32>(-13313i, 60190i, -53456i), 12810i)), Struct_2(Struct_1(vec4<f32>(734f, 1835f, 896f, -136f), vec3<i32>(-30889i, 0i, 0i), -55147i), Struct_1(vec4<f32>(1459f, 1243f, 1328f, 535f), vec3<i32>(-1i, 1i, -23738i), -5551i)), Struct_2(Struct_1(vec4<f32>(591f, -1189f, -500f, 137f), vec3<i32>(0i, i32(-2147483648), 0i), 0i), Struct_1(vec4<f32>(785f, 1165f, -412f, -449f), vec3<i32>(-1i, -1i, 2147483647i), 1i)), Struct_2(Struct_1(vec4<f32>(766f, 155f, -674f, -565f), vec3<i32>(-46751i, -1i, 58010i), -1i), Struct_1(vec4<f32>(825f, -999f, -2966f, -1194f), vec3<i32>(31564i, -19336i, -1i), 5681i)), Struct_2(Struct_1(vec4<f32>(727f, 1520f, -1333f, 1538f), vec3<i32>(-1i, -25237i, -1i), -1i), Struct_1(vec4<f32>(557f, 921f, 465f, -169f), vec3<i32>(-409i, 9686i, -9215i), 66541i)), Struct_2(Struct_1(vec4<f32>(-230f, 1000f, 1504f, 429f), vec3<i32>(2147483647i, -20287i, i32(-2147483648)), -29794i), Struct_1(vec4<f32>(-526f, 642f, 120f, -573f), vec3<i32>(0i, 40810i, 0i), -6073i)), Struct_2(Struct_1(vec4<f32>(-530f, 2297f, -569f, 1246f), vec3<i32>(-1i, 1i, 15558i), 2147483647i), Struct_1(vec4<f32>(1116f, -1501f, -585f, -2000f), vec3<i32>(-38802i, -70946i, -1i), -20912i)), Struct_2(Struct_1(vec4<f32>(2423f, 624f, -230f, 1000f), vec3<i32>(-6521i, i32(-2147483648), -1i), i32(-2147483648)), Struct_1(vec4<f32>(-239f, -851f, 1263f, 1000f), vec3<i32>(9415i, 30095i, 47797i), 30392i)), Struct_2(Struct_1(vec4<f32>(-197f, -474f, 102f, 1341f), vec3<i32>(-55848i, -8093i, 0i), 17141i), Struct_1(vec4<f32>(963f, 151f, -2143f, -611f), vec3<i32>(1i, -38966i, 1i), 2147483647i)), Struct_2(Struct_1(vec4<f32>(-1000f, 842f, -1095f, 826f), vec3<i32>(14630i, 1i, 0i), -1i), Struct_1(vec4<f32>(724f, -706f, -317f, -1872f), vec3<i32>(23857i, -3988i, -1599i), 132i)), Struct_2(Struct_1(vec4<f32>(661f, 1000f, -330f, -1038f), vec3<i32>(-1i, -7071i, 2147483647i), -5338i), Struct_1(vec4<f32>(753f, -1246f, 1877f, 1000f), vec3<i32>(-72532i, 2147483647i, 0i), 22309i)), Struct_2(Struct_1(vec4<f32>(529f, -1228f, -1226f, 1000f), vec3<i32>(-7247i, 2147483647i, -11027i), 2442i), Struct_1(vec4<f32>(-1000f, -1491f, 288f, 678f), vec3<i32>(-2167i, 1i, 0i), -30267i)));

var<private> global1: vec4<u32> = vec4<u32>(4294967295u, 19418u, 35677u, 0u);

var<private> global2: i32 = 66084i;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: u32) -> f32 {
    let var_0 = -471f;
    let var_1 = vec3<u32>(_wgslsmith_sub_u32(~firstTrailingBit(arg_2 & 118493u), ~u_input.a.x), u_input.a.x, _wgslsmith_sub_u32(abs(arg_2), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, arg_2, global1.x), u_input.a)));
    return var_0;
}

fn func_3(arg_0: f32, arg_1: vec3<i32>, arg_2: vec3<u32>) -> i32 {
    global1 = ~_wgslsmith_div_vec4_u32(~vec4<u32>(arg_2.x, u_input.a.x, 0u, global1.x), abs(vec4<u32>(74952u, arg_2.x, global1.x, 0u))) ^ (max(firstTrailingBit(vec4<u32>(u_input.a.x, 4294967295u, 42041u, arg_2.x) << (vec4<u32>(u_input.a.x, u_input.a.x, arg_2.x, 83213u) % vec4<u32>(32u))), ~(vec4<u32>(u_input.a.x, global1.x, 41017u, arg_2.x) >> (vec4<u32>(4294967295u, 0u, 0u, 27053u) % vec4<u32>(32u)))) ^ vec4<u32>(~(~1u), 13968u, 16830u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(global1.x, 4294967295u), global1.x)));
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, -1613f), vec4<f32>(1334f, arg_0, arg_0, arg_0)))))), select(vec3<i32>(_wgslsmith_div_i32(0i, ~arg_1.x), 0i, 22843i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-u_input.b.x, firstTrailingBit(u_input.b.x), -2147483647i), (arg_1 >> (arg_2 % vec3<u32>(32u))) & arg_1, _wgslsmith_clamp_vec3_i32(-arg_1, abs(vec3<i32>(arg_1.x, -140i, arg_1.x)), arg_1)), vec3<bool>(true, true, true)), -reverseBits(_wgslsmith_div_i32(~0i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 20432i, -2147483647i, arg_1.x), vec4<i32>(u_input.b.x, -2147483647i, 2147483647i, arg_1.x)))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.a * vec4<f32>(1000f, arg_0, arg_0, -1180f)) * var_0.a))), _wgslsmith_sub_vec3_i32(vec3<i32>(abs(1i), var_0.c, _wgslsmith_add_i32(-2147483647i, arg_1.x)), reverseBits(vec3<i32>(0i, arg_1.x, -1i))), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, -27397i, -2147483647i, arg_1.x), ~vec4<i32>(var_0.b.x, arg_1.x, arg_1.x, 32010i)), vec4<i32>(0i, min(-31156i, 7893i), 1i, -54140i))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_0.a, vec4<f32>(var_0.a.x, 423f, -977f, -1882f), vec4<bool>(false, false, false, false))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(860f, -1039f, 1096f, var_0.a.x))))), reverseBits(var_0.b), _wgslsmith_dot_vec4_i32(vec4<i32>(~1i, arg_1.x ^ -103197i, 2147483647i, arg_1.x), -(vec4<i32>(var_0.b.x, u_input.b.x, -9270i, 0i) >> (vec4<u32>(4294967295u, 4294967295u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))))));
    var var_2 = false;
    let var_3 = global0[_wgslsmith_index_u32(max(~(~_wgslsmith_dot_vec3_u32(arg_2, _wgslsmith_sub_vec3_u32(global1.zwz, global1.zxx))), 2587u), 26u)];
    return -var_1.a.b.x;
}

fn func_4(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_1) -> f32 {
    global0 = array<Struct_2, 26>();
    var var_0 = ~_wgslsmith_clamp_vec4_u32(abs(~vec4<u32>(global1.x, 4294967295u, u_input.a.x, 4294967295u)) >> (vec4<u32>(~u_input.a.x, ~36577u, ~global1.x, _wgslsmith_add_u32(12827u, global1.x)) % vec4<u32>(32u)), select(vec4<u32>(_wgslsmith_mod_u32(81808u, 24981u), max(u_input.a.x, u_input.a.x), 1u, 82037u), ~vec4<u32>(0u, u_input.a.x, u_input.a.x, 4294967295u) >> (vec4<u32>(1u, 0u, 1u, 29219u) % vec4<u32>(32u)), select(vec4<bool>(arg_0.x, true, false, arg_0.x), vec4<bool>(true, arg_0.x, true, true), select(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)))), _wgslsmith_mod_vec4_u32(~vec4<u32>(global1.x, 26527u, global1.x, 1u), vec4<u32>(_wgslsmith_sub_u32(27714u, global1.x), 1u, global1.x, 0u)));
    global0 = array<Struct_2, 26>();
    global0 = array<Struct_2, 26>();
    let var_1 = select(arg_0.x, all(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false)), !all(vec3<bool>(true, false, arg_0.x)))), (any(!arg_0.zx) | (false || arg_0.x)) && true);
    return 1858f;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(u_input.b.x, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, ~global1.x) >> (~(global1.x & 0u) % 32u), 26u)], ~4294967295u)), -628f));
    var_0 = _wgslsmith_f_op_f32(func_4(select(vec3<bool>(true, (50212i << (global1.x % 32u)) >= func_3(1000f, vec3<i32>(-33047i, -2147483647i, u_input.b.x), vec3<u32>(95100u, u_input.a.x, 26110u)), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, all(vec2<bool>(false, false)), true)), vec3<bool>(true, true, true)), 94636i, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1197f, -238f, 1527f, -1689f)) + _wgslsmith_div_vec4_f32(vec4<f32>(255f, 178f, -1577f, -564f), vec4<f32>(-810f, -687f, 879f, 581f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, -1609f, 523f, -2005f), vec4<f32>(-550f, 1060f, -1079f, -417f))))), vec3<i32>(~1i, reverseBits(u_input.b.x), 0i), _wgslsmith_div_i32(1i, i32(-1i) * -u_input.b.x))));
    let var_1 = ~reverseBits(u_input.b << (firstLeadingBit(vec2<u32>(global1.x, 9272u)) % vec2<u32>(32u)));
    var var_2 = Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(560f - 1697f), _wgslsmith_f_op_f32(f32(-1f) * -493f), true)), _wgslsmith_f_op_f32(2053f + _wgslsmith_f_op_f32(f32(-1f) * -576f))), 405f, _wgslsmith_f_op_f32(min(551f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(529f - -1252f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-302f, 484f)), -1000f)))), -select(~(-vec3<i32>(u_input.b.x, 2902i, -153i)), vec3<i32>(var_1.x, -1i, 1i), vec3<bool>(true, all(vec2<bool>(true, false)), true)), -52511i);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(486f, 1000f, global1.x < global1.x)), -1019f), var_2.a.x, all(vec2<bool>(all(vec2<bool>(true, false)), any(vec3<bool>(false, true, true)))))));
    return Struct_1(vec4<f32>(486f, var_2.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1251f)), _wgslsmith_f_op_f32(sign(var_2.a.x)), all(vec4<bool>(false, true, true, true)))))), _wgslsmith_f_op_f32(select(-799f, _wgslsmith_f_op_f32(floor(var_2.a.x)), any(vec4<bool>(true, true, true, true))))), _wgslsmith_mod_vec3_i32(abs(vec3<i32>(u_input.b.x | var_1.x, _wgslsmith_mod_i32(-31491i, 15105i), var_2.c)), (abs(vec3<i32>(var_2.c, var_2.c, -1i)) & var_2.b) >> (~u_input.a % vec3<u32>(32u))), -1i);
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: i32) -> f32 {
    var var_0 = arg_1.b;
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(min(abs(8382u), _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec3_u32(~u_input.a, ~vec3<u32>(51901u, 4294967295u, u_input.a.x)))), 4330u), 26u)];
    let var_2 = func_1();
    let var_3 = u_input.a.x;
    global0 = array<Struct_2, 26>();
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(932f)))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(334f * -1846f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(335f - -608f) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(157f)), _wgslsmith_f_op_f32(143f * 262f)))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1107f)), _wgslsmith_f_op_f32(func_5(vec2<f32>(658f, 1000f), func_1(), u_input.b.x)), true)) - -457f));
    global0 = array<Struct_2, 26>();
    let var_1 = ~u_input.a.x;
    var var_2 = ~vec3<u32>(global1.x, var_1, ~u_input.a.x);
    var_2 = abs(_wgslsmith_clamp_vec3_u32(select(global1.zyx, (u_input.a & u_input.a) << (~u_input.a % vec3<u32>(32u)), true), vec3<u32>(~(~global1.x), 4294967295u, 83173u), ~global1.yxy >> (max(u_input.a, u_input.a) % vec3<u32>(32u))));
    global0 = array<Struct_2, 26>();
    global2 = abs(-min(~u_input.b.x >> (~var_1 % 32u), func_3(_wgslsmith_f_op_f32(var_0.x + var_0.x), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(var_2.x, 1u, u_input.a.x))));
    global1 = ~select(_wgslsmith_mult_vec4_u32((vec4<u32>(u_input.a.x, global1.x, 0u, 11099u) << (vec4<u32>(1u, u_input.a.x, 79274u, u_input.a.x) % vec4<u32>(32u))) & _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, global1.x, 74846u, 4294967295u), vec4<u32>(45739u, var_1, 104971u, 0u), vec4<u32>(global1.x, 20370u, 0u, 40429u)), ~(vec4<u32>(var_1, 1u, 4294967295u, 1u) ^ vec4<u32>(16874u, 10003u, var_2.x, 58481u))), _wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, var_2.x, var_1, u_input.a.x), ~vec4<u32>(65754u, 854u, var_2.x, global1.x)), !(617f == var_0.x) && all(vec4<bool>(false, false, false, false)));
    let x = u_input.a;
    s_output = StorageBuffer(-17443i, u_input.b.x, ~firstTrailingBit(global1.x));
}

