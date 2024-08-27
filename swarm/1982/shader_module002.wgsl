struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: f32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(vec4<f32>(1005f, 334f, -899f, -176f), -1017f, Struct_1(vec2<u32>(4294967295u, 1u), -1818f), Struct_1(vec2<u32>(38782u, 45473u), -129f), 2147483647i), Struct_2(vec4<f32>(-1003f, -1602f, 186f, 1000f), -1091f, Struct_1(vec2<u32>(44039u, 19117u), 462f), Struct_1(vec2<u32>(46583u, 1u), -368f), 35687i), Struct_2(vec4<f32>(-691f, 769f, -2224f, 243f), -1510f, Struct_1(vec2<u32>(18363u, 1u), 190f), Struct_1(vec2<u32>(59583u, 26259u), -1263f), 62476i), Struct_2(vec4<f32>(-1000f, -1097f, -984f, 2274f), -927f, Struct_1(vec2<u32>(92684u, 31858u), -629f), Struct_1(vec2<u32>(4294967295u, 38041u), -1087f), -1i), Struct_2(vec4<f32>(1583f, -1162f, -777f, -1505f), -1000f, Struct_1(vec2<u32>(1u, 24557u), 980f), Struct_1(vec2<u32>(1u, 4294967295u), -505f), -73739i), Struct_2(vec4<f32>(-713f, -795f, 1442f, -1293f), -544f, Struct_1(vec2<u32>(1u, 8352u), -234f), Struct_1(vec2<u32>(1u, 38963u), 929f), 18355i), Struct_2(vec4<f32>(190f, 1615f, -1000f, 1489f), -709f, Struct_1(vec2<u32>(113261u, 30436u), 1087f), Struct_1(vec2<u32>(75648u, 23160u), 639f), 2147483647i), Struct_2(vec4<f32>(-1530f, 1920f, 1636f, 1260f), 1000f, Struct_1(vec2<u32>(21041u, 4082u), 240f), Struct_1(vec2<u32>(8152u, 8418u), -1125f), -11911i), Struct_2(vec4<f32>(1842f, 2266f, 156f, -1926f), -1377f, Struct_1(vec2<u32>(0u, 24655u), 183f), Struct_1(vec2<u32>(6392u, 1u), -1595f), 62579i), Struct_2(vec4<f32>(635f, 131f, 826f, 1449f), 659f, Struct_1(vec2<u32>(4294967295u, 20778u), -563f), Struct_1(vec2<u32>(1u, 10465u), 700f), 9263i), Struct_2(vec4<f32>(-272f, 1000f, -307f, -1522f), -1000f, Struct_1(vec2<u32>(75285u, 1u), -558f), Struct_1(vec2<u32>(59691u, 4294967295u), -692f), -1i), Struct_2(vec4<f32>(339f, 350f, 853f, -1578f), 1266f, Struct_1(vec2<u32>(0u, 31259u), -930f), Struct_1(vec2<u32>(46883u, 4294967295u), 578f), 1i), Struct_2(vec4<f32>(337f, -108f, -983f, 891f), 100f, Struct_1(vec2<u32>(32733u, 525u), -532f), Struct_1(vec2<u32>(15564u, 15859u), -2087f), -42466i), Struct_2(vec4<f32>(277f, 2081f, -264f, -834f), 1014f, Struct_1(vec2<u32>(0u, 45341u), -776f), Struct_1(vec2<u32>(0u, 0u), 990f), -26003i), Struct_2(vec4<f32>(844f, 443f, 777f, -437f), 1468f, Struct_1(vec2<u32>(4294967295u, 1u), -134f), Struct_1(vec2<u32>(7915u, 0u), -1134f), 2147483647i), Struct_2(vec4<f32>(770f, -103f, 356f, -892f), -266f, Struct_1(vec2<u32>(80008u, 1u), 921f), Struct_1(vec2<u32>(5431u, 1u), 1053f), -1i), Struct_2(vec4<f32>(857f, 390f, 203f, 1415f), 2062f, Struct_1(vec2<u32>(57134u, 1u), 636f), Struct_1(vec2<u32>(2523u, 0u), -459f), -47308i), Struct_2(vec4<f32>(1198f, -473f, 1000f, -1808f), -2691f, Struct_1(vec2<u32>(1u, 13280u), -1000f), Struct_1(vec2<u32>(0u, 54124u), 1010f), -3573i), Struct_2(vec4<f32>(-532f, -921f, 177f, 1372f), -973f, Struct_1(vec2<u32>(61484u, 8402u), -1009f), Struct_1(vec2<u32>(0u, 0u), 782f), -32925i), Struct_2(vec4<f32>(557f, 1810f, -1599f, -749f), -464f, Struct_1(vec2<u32>(8949u, 21963u), -288f), Struct_1(vec2<u32>(14165u, 0u), 1499f), -1i), Struct_2(vec4<f32>(-1358f, -1027f, -1308f, 1748f), 1399f, Struct_1(vec2<u32>(1u, 4294967295u), -1967f), Struct_1(vec2<u32>(102621u, 44784u), 545f), i32(-2147483648)), Struct_2(vec4<f32>(1000f, 884f, 906f, -510f), -2230f, Struct_1(vec2<u32>(1u, 7770u), 686f), Struct_1(vec2<u32>(34030u, 0u), -1253f), 0i), Struct_2(vec4<f32>(-682f, 1048f, -1000f, -1703f), -146f, Struct_1(vec2<u32>(0u, 4294967295u), -1157f), Struct_1(vec2<u32>(1u, 3688u), 712f), 0i), Struct_2(vec4<f32>(1259f, 378f, -165f, 1484f), 1663f, Struct_1(vec2<u32>(52857u, 4294967295u), -329f), Struct_1(vec2<u32>(49632u, 59414u), 808f), -1i), Struct_2(vec4<f32>(502f, -1572f, 478f, 1501f), -868f, Struct_1(vec2<u32>(7539u, 0u), -457f), Struct_1(vec2<u32>(50317u, 4294967295u), 376f), 2147483647i), Struct_2(vec4<f32>(209f, -1883f, -1000f, 1438f), 128f, Struct_1(vec2<u32>(13037u, 56580u), 2100f), Struct_1(vec2<u32>(20271u, 0u), 1414f), i32(-2147483648)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(297f)) + _wgslsmith_f_op_f32(ceil(101f)))))) * 959f);
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_5) -> bool {
    let var_0 = arg_2.a.d;
    global0 = array<Struct_2, 26>();
    global0 = array<Struct_2, 26>();
    let var_1 = Struct_4(arg_2, vec3<i32>(countOneBits(1i), (_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, -77242i, arg_2.a.e), vec4<i32>(-15896i, arg_2.c.x, -1i, arg_1.c.x)) & u_input.b.x) >> ((arg_1.a.c.a.x | _wgslsmith_add_u32(arg_2.a.c.a.x, 47030u)) % 32u), _wgslsmith_add_i32(u_input.b.x, arg_2.a.e)), arg_3.a);
    var var_2 = ~9209u;
    return true;
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_5, arg_3: vec2<bool>) -> bool {
    let var_0 = Struct_1(min(_wgslsmith_mod_vec2_u32(~(~vec2<u32>(1u, 4820u)), _wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(37766u, 4294967295u)), ~vec2<u32>(u_input.a, u_input.a))), ~reverseBits(~vec2<u32>(u_input.a, u_input.a))), arg_2.a);
    global0 = array<Struct_2, 26>();
    let var_1 = vec3<i32>(u_input.b.x, ~(1i << (1u % 32u)), _wgslsmith_add_i32(u_input.b.x, u_input.b.x)) & vec3<i32>(_wgslsmith_div_i32(u_input.b.x, u_input.b.x), ~((i32(-1i) * -31627i) & _wgslsmith_div_i32(-36003i, u_input.b.x)), _wgslsmith_dot_vec2_i32(min(~vec2<i32>(7246i, -2147483647i), u_input.b ^ u_input.b), -firstTrailingBit(vec2<i32>(0i, 0i))));
    var var_2 = global0[_wgslsmith_index_u32(var_0.a.x, 26u)];
    global0 = array<Struct_2, 26>();
    return true;
}

fn func_1(arg_0: u32) -> Struct_3 {
    return Struct_3(global0[_wgslsmith_index_u32(1u, 26u)], func_4(func_3(_wgslsmith_f_op_f32(func_2()), Struct_3(Struct_2(vec4<f32>(-393f, -639f, 597f, -351f), 521f, Struct_1(vec2<u32>(arg_0, 38801u), 403f), Struct_1(vec2<u32>(arg_0, arg_0), 1176f), 5557i), true, vec3<i32>(-2147483647i, u_input.b.x, u_input.b.x)), Struct_3(Struct_2(vec4<f32>(216f, 1263f, 944f, 1000f), -1048f, Struct_1(vec2<u32>(arg_0, arg_0), -1623f), Struct_1(vec2<u32>(u_input.a, 14056u), -920f), -33895i), true, _wgslsmith_div_vec3_i32(vec3<i32>(-47440i, 1i, u_input.b.x), vec3<i32>(1i, u_input.b.x, u_input.b.x))), Struct_5(_wgslsmith_f_op_f32(139f - 114f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -3025f), 749f, _wgslsmith_f_op_f32(sign(-919f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1165f, -518f, 1414f))), Struct_5(-376f), vec2<bool>(all(select(vec2<bool>(false, false), vec2<bool>(false, false), true)), true)), _wgslsmith_mod_vec3_i32(firstTrailingBit(~(-vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x))), select(vec3<i32>(_wgslsmith_add_i32(u_input.b.x, u_input.b.x), -1i, u_input.b.x), vec3<i32>(u_input.b.x, 0i, _wgslsmith_mult_i32(u_input.b.x, 388i)), true)));
}

fn func_5(arg_0: bool, arg_1: Struct_3) -> Struct_3 {
    let var_0 = vec2<f32>(701f, arg_1.a.a.x);
    global0 = array<Struct_2, 26>();
    let var_1 = !select(func_3(func_1(_wgslsmith_mod_u32(u_input.a, arg_1.a.c.a.x)).a.d.b, Struct_3(Struct_2(vec4<f32>(arg_1.a.b, arg_1.a.b, var_0.x, arg_1.a.b), 1986f, Struct_1(arg_1.a.d.a, var_0.x), arg_1.a.d, u_input.b.x), false, reverseBits(vec3<i32>(u_input.b.x, 33866i, -1i))), Struct_3(arg_1.a, true, arg_1.c), Struct_5(_wgslsmith_f_op_f32(min(-1000f, var_0.x)))), any(select(!vec2<bool>(arg_1.b, false), select(vec2<bool>(arg_0, true), vec2<bool>(false, arg_0), true), !arg_0)), arg_1.b);
    global0 = array<Struct_2, 26>();
    var var_2 = func_1(4294967295u).a.c;
    return Struct_3(global0[_wgslsmith_index_u32(2457u, 26u)], false != ((false == any(vec4<bool>(true, arg_0, var_1, false))) || (_wgslsmith_sub_i32(1i, arg_1.c.x) == 2019i)), vec3<i32>(-((u_input.b.x ^ 2147483647i) ^ -1i), -(_wgslsmith_mod_i32(-14782i, arg_1.a.e) & reverseBits(u_input.b.x)), select(-57957i, 1i, false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_5(-330f != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-281f)), -1238f)), func_1(~(~u_input.a))), -vec3<i32>(~1i, -5430i, u_input.b.x), _wgslsmith_f_op_f32(-func_5(all(vec2<bool>(true, true)), func_1(_wgslsmith_mult_u32(u_input.a, 36134u))).a.c.b));
    let var_1 = u_input.b.x;
    let var_2 = Struct_5(var_0.a.a.d.b);
    global0 = array<Struct_2, 26>();
    let var_3 = !all(!select(select(vec3<bool>(false, true, true), vec3<bool>(var_0.a.b, var_0.a.b, var_0.a.b), var_0.a.b), select(vec3<bool>(var_0.a.b, false, false), vec3<bool>(var_0.a.b, false, var_0.a.b), false), all(vec4<bool>(var_0.a.b, var_0.a.b, var_0.a.b, true))));
    var var_4 = func_1(var_0.a.a.d.a.x | 1u).a.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.a.a.a, var_0.a.a.a)), reverseBits(countOneBits(vec4<i32>(2147483647i, 1i, 49366i, 1i)) & select(vec4<i32>(-32457i, var_1, var_0.a.c.x, var_1), vec4<i32>(-2147483647i, 23376i, -2147483647i, var_1), false)) & (~vec4<i32>(u_input.b.x, -30423i, u_input.b.x, -45175i) << ((~vec4<u32>(var_0.a.a.d.a.x, var_0.a.a.c.a.x, u_input.a, var_0.a.a.c.a.x) | max(vec4<u32>(53608u, var_4.a.x, var_0.a.a.c.a.x, 12553u), vec4<u32>(44173u, var_0.a.a.d.a.x, u_input.a, var_0.a.a.c.a.x))) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, _wgslsmith_f_op_f32(abs(var_2.a)), var_2.a, var_0.c) + var_0.a.a.a)));
}

