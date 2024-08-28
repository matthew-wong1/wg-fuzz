struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: bool,
    d: vec3<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<u32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18> = array<f32, 18>(-503f, 1959f, 1605f, 1023f, -778f, 1000f, 1074f, -762f, 645f, 1260f, -1000f, -661f, 405f, -1591f, -1186f, 1066f, -866f, -1286f);

var<private> global1: vec2<f32>;

var<private> global2: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(vec2<u32>(1u, 0u), Struct_1(vec2<i32>(1i, 1i), 38830u, true, vec3<f32>(458f, 978f, -1035f), vec2<i32>(10887i, 40604i)), vec2<u32>(4294967295u, 9756u), true, Struct_1(vec2<i32>(2147483647i, 2147483647i), 0u, false, vec3<f32>(-1271f, -1368f, 248f), vec2<i32>(-2932i, 1i))), Struct_2(vec2<u32>(9919u, 40272u), Struct_1(vec2<i32>(2147483647i, 63029i), 18212u, false, vec3<f32>(-2201f, 245f, 522f), vec2<i32>(28239i, 2147483647i)), vec2<u32>(4294967295u, 1u), false, Struct_1(vec2<i32>(1i, -12364i), 17573u, false, vec3<f32>(-1019f, 487f, 2272f), vec2<i32>(1i, 2147483647i))), Struct_2(vec2<u32>(4294967295u, 4294967295u), Struct_1(vec2<i32>(-1i, -13110i), 1u, false, vec3<f32>(-939f, 187f, 216f), vec2<i32>(-71332i, -1613i)), vec2<u32>(26170u, 4294967295u), false, Struct_1(vec2<i32>(0i, 1i), 46652u, false, vec3<f32>(-1404f, -114f, -453f), vec2<i32>(i32(-2147483648), -35296i))), Struct_2(vec2<u32>(2094u, 16043u), Struct_1(vec2<i32>(46359i, 0i), 25849u, true, vec3<f32>(910f, 1722f, -173f), vec2<i32>(-1i, 5146i)), vec2<u32>(80760u, 16036u), false, Struct_1(vec2<i32>(0i, 35267i), 33082u, false, vec3<f32>(1161f, -901f, 677f), vec2<i32>(-26371i, -1383i))), Struct_2(vec2<u32>(0u, 12625u), Struct_1(vec2<i32>(-36638i, -1i), 0u, false, vec3<f32>(1225f, 480f, 1077f), vec2<i32>(10326i, 6642i)), vec2<u32>(0u, 20807u), false, Struct_1(vec2<i32>(29485i, 0i), 84682u, true, vec3<f32>(-480f, 2347f, -100f), vec2<i32>(-10154i, 1i))), Struct_2(vec2<u32>(0u, 11925u), Struct_1(vec2<i32>(-1i, i32(-2147483648)), 15357u, true, vec3<f32>(-1368f, 1824f, -405f), vec2<i32>(i32(-2147483648), 27169i)), vec2<u32>(0u, 9004u), false, Struct_1(vec2<i32>(-1i, i32(-2147483648)), 124767u, true, vec3<f32>(-207f, 1901f, 821f), vec2<i32>(-1i, -72884i))), Struct_2(vec2<u32>(45909u, 20926u), Struct_1(vec2<i32>(1i, 0i), 1u, true, vec3<f32>(1364f, -498f, -1000f), vec2<i32>(-47129i, -28975i)), vec2<u32>(4145u, 70889u), false, Struct_1(vec2<i32>(1i, -21776i), 4294967295u, true, vec3<f32>(-1236f, 1976f, 663f), vec2<i32>(0i, 0i))), Struct_2(vec2<u32>(1u, 0u), Struct_1(vec2<i32>(15857i, -1i), 1u, false, vec3<f32>(425f, -421f, 1229f), vec2<i32>(-1660i, 6465i)), vec2<u32>(61652u, 0u), false, Struct_1(vec2<i32>(1i, 68715i), 1u, false, vec3<f32>(551f, -554f, 184f), vec2<i32>(-32320i, -26796i))), Struct_2(vec2<u32>(41847u, 4294967295u), Struct_1(vec2<i32>(0i, -51404i), 1u, false, vec3<f32>(1110f, -1000f, 1544f), vec2<i32>(40258i, 2147483647i)), vec2<u32>(5727u, 0u), true, Struct_1(vec2<i32>(0i, i32(-2147483648)), 1u, false, vec3<f32>(1150f, 494f, -210f), vec2<i32>(37394i, 2147483647i))), Struct_2(vec2<u32>(56018u, 35132u), Struct_1(vec2<i32>(9451i, 0i), 4294967295u, false, vec3<f32>(-2519f, 1319f, 1557f), vec2<i32>(-18023i, 81640i)), vec2<u32>(4294967295u, 1u), true, Struct_1(vec2<i32>(i32(-2147483648), 0i), 28776u, true, vec3<f32>(-1000f, 1119f, 457f), vec2<i32>(i32(-2147483648), 1i))), Struct_2(vec2<u32>(371u, 4294967295u), Struct_1(vec2<i32>(1i, 57162i), 0u, true, vec3<f32>(251f, 687f, -356f), vec2<i32>(-16980i, 2147483647i)), vec2<u32>(0u, 0u), true, Struct_1(vec2<i32>(11465i, 0i), 1u, false, vec3<f32>(-1159f, 230f, -324f), vec2<i32>(12391i, 12437i))), Struct_2(vec2<u32>(1u, 30140u), Struct_1(vec2<i32>(38882i, 6148i), 65144u, true, vec3<f32>(-827f, 2223f, 767f), vec2<i32>(2147483647i, -19170i)), vec2<u32>(29430u, 11935u), false, Struct_1(vec2<i32>(-1i, 65073i), 0u, false, vec3<f32>(-898f, 686f, 740f), vec2<i32>(2147483647i, i32(-2147483648)))), Struct_2(vec2<u32>(4294967295u, 11539u), Struct_1(vec2<i32>(16976i, -44654i), 32038u, true, vec3<f32>(-1000f, -1898f, 439f), vec2<i32>(i32(-2147483648), -28597i)), vec2<u32>(0u, 4294967295u), false, Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), 0u, true, vec3<f32>(240f, 885f, 1209f), vec2<i32>(48623i, 27452i))), Struct_2(vec2<u32>(4294967295u, 0u), Struct_1(vec2<i32>(-44099i, 35579i), 56105u, false, vec3<f32>(-1216f, -929f, 1292f), vec2<i32>(2147483647i, 24059i)), vec2<u32>(0u, 0u), false, Struct_1(vec2<i32>(i32(-2147483648), -13155i), 0u, true, vec3<f32>(1000f, -1636f, 1192f), vec2<i32>(1i, 0i))), Struct_2(vec2<u32>(34025u, 8260u), Struct_1(vec2<i32>(2147483647i, -1i), 0u, true, vec3<f32>(1000f, -1071f, -886f), vec2<i32>(1i, 0i)), vec2<u32>(80207u, 1u), true, Struct_1(vec2<i32>(-34353i, -23522i), 4294967295u, true, vec3<f32>(1164f, 568f, -1203f), vec2<i32>(-37053i, 2147483647i))), Struct_2(vec2<u32>(49286u, 0u), Struct_1(vec2<i32>(-2755i, i32(-2147483648)), 0u, false, vec3<f32>(1000f, -1835f, -2357f), vec2<i32>(i32(-2147483648), 72994i)), vec2<u32>(5677u, 57406u), false, Struct_1(vec2<i32>(12348i, 0i), 107450u, false, vec3<f32>(-1282f, -148f, -360f), vec2<i32>(1i, 1i))), Struct_2(vec2<u32>(1u, 48684u), Struct_1(vec2<i32>(30630i, 27299i), 16506u, false, vec3<f32>(-404f, 321f, 1440f), vec2<i32>(-59609i, 3555i)), vec2<u32>(76905u, 17664u), false, Struct_1(vec2<i32>(7562i, 0i), 3089u, true, vec3<f32>(1676f, -2483f, -1596f), vec2<i32>(0i, -1197i))), Struct_2(vec2<u32>(9490u, 0u), Struct_1(vec2<i32>(0i, 7810i), 1u, false, vec3<f32>(-1406f, 961f, -1000f), vec2<i32>(24455i, 1i)), vec2<u32>(1u, 0u), false, Struct_1(vec2<i32>(13773i, 0i), 0u, true, vec3<f32>(623f, -1171f, -1077f), vec2<i32>(-20062i, i32(-2147483648)))), Struct_2(vec2<u32>(0u, 0u), Struct_1(vec2<i32>(-6827i, 0i), 0u, false, vec3<f32>(-1004f, -1132f, 1943f), vec2<i32>(-1i, i32(-2147483648))), vec2<u32>(0u, 4294967295u), true, Struct_1(vec2<i32>(30886i, -35519i), 1u, false, vec3<f32>(-1570f, -2605f, 1199f), vec2<i32>(-58965i, -1i))), Struct_2(vec2<u32>(2911u, 5273u), Struct_1(vec2<i32>(20513i, 25981i), 10241u, true, vec3<f32>(-187f, -1000f, 1000f), vec2<i32>(65980i, i32(-2147483648))), vec2<u32>(40351u, 35455u), false, Struct_1(vec2<i32>(-32327i, 1i), 41300u, true, vec3<f32>(-1000f, 122f, -955f), vec2<i32>(2147483647i, -30691i))), Struct_2(vec2<u32>(78820u, 4399u), Struct_1(vec2<i32>(-13095i, 47846i), 52296u, true, vec3<f32>(-773f, 572f, -1000f), vec2<i32>(-34443i, i32(-2147483648))), vec2<u32>(4294967295u, 1u), false, Struct_1(vec2<i32>(1i, -1309i), 1u, false, vec3<f32>(557f, 438f, -1819f), vec2<i32>(i32(-2147483648), 23463i))));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: vec3<bool>) -> vec3<f32> {
    let var_0 = _wgslsmith_div_vec3_u32(u_input.d.wyw, abs(u_input.d.wxw));
    let var_1 = vec2<bool>(arg_2.x, ((_wgslsmith_sub_i32(arg_0.x, arg_0.x) & ~(-2147483647i)) <= arg_0.x) | (_wgslsmith_dot_vec4_u32(min(u_input.d, vec4<u32>(u_input.e.x, var_0.x, u_input.e.x, u_input.d.x)), _wgslsmith_mult_vec4_u32(u_input.d, vec4<u32>(61588u, 4294967295u, 29560u, var_0.x))) < var_0.x));
    let var_2 = ~vec3<u32>(var_0.x, 44353u, firstTrailingBit(abs(~u_input.e.x)));
    var var_3 = Struct_2(select((~vec2<u32>(var_2.x, 1u) | var_0.yy) & var_2.zy, firstTrailingBit(min(vec2<u32>(43729u, var_2.x), vec2<u32>(77534u, 65074u)) >> (vec2<u32>(31718u, var_0.x) % vec2<u32>(32u))), !(var_2.x <= 1u) || any(!vec2<bool>(arg_2.x, var_1.x))), Struct_1(select(select(vec2<i32>(arg_0.x, -1i), u_input.c.ww, true) & (arg_0 ^ u_input.c.wz), _wgslsmith_add_vec2_i32(reverseBits(u_input.c.wx), u_input.b), arg_2.x), abs(1u), !(arg_2.x == var_1.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(719f, arg_1.x, -607f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(168f, global1.x, -1000f)))), vec2<i32>(754i, 4253i ^ arg_0.x)), firstLeadingBit(var_0.yz) & ~(~_wgslsmith_clamp_vec2_u32(var_2.yy, var_2.yy, vec2<u32>(u_input.a, 36802u))), all(select(select(!arg_2.zz, select(arg_2.xx, arg_2.yz, false), all(vec4<bool>(var_1.x, true, arg_2.x, false))), arg_2.zx, var_1)), Struct_1(arg_0, 0u, var_1.x, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(738f, -1079f, arg_1.x), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.x, global1.x, -1386f), vec3<f32>(-759f, global0[_wgslsmith_index_u32(var_0.x, 18u)], -1240f)))), vec3<f32>(-242f, global1.x, 1f)), -vec2<i32>(u_input.c.x, arg_0.x)));
    var_3 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, var_2.x << (~reverseBits(abs(1u)) % 32u)), 21u)];
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(round(-1484f)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_2.x << (u_input.e.x % 32u), 18u)] + _wgslsmith_f_op_f32(sign(global1.x))), -1652f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.b.d))), arg_2)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.e.d - vec3<f32>(global0[_wgslsmith_index_u32(19928u, 18u)], -654f, arg_1.x)) - vec3<f32>(var_3.e.d.x, global0[_wgslsmith_index_u32(var_0.x, 18u)], -998f)) + vec3<f32>(1000f, -215f, arg_1.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(7776u, 18u)], global0[_wgslsmith_index_u32(var_2.x, 18u)], global1.x) * vec3<f32>(var_3.b.d.x, global0[_wgslsmith_index_u32(var_3.e.b, 18u)], -127f)))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_3.b.d)))), var_3.b.c)));
}

fn func_2(arg_0: vec4<i32>) -> vec2<f32> {
    global2 = array<Struct_2, 21>();
    let var_0 = Struct_3(Struct_1(-_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.c.wy, u_input.c.xz), vec2<i32>(1i, 1i)), u_input.e.x, true, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(177f, 440f, global1.x)), vec3<f32>(587f, global0[_wgslsmith_index_u32(39459u, 18u)], 527f)))), arg_0.yw), Struct_1(((u_input.c.zz | vec2<i32>(-8335i, 2147483647i)) & -u_input.b) << (_wgslsmith_mult_vec2_u32(abs(u_input.d.xz), u_input.e) % vec2<u32>(32u)), 4294967295u, !all(vec2<bool>(false, false)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -1095f, -1000f)) + _wgslsmith_f_op_vec3_f32(func_3(arg_0.yz, vec2<f32>(global1.x, -250f), vec3<bool>(false, false, true)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1420f, 1000f, 518f), vec3<f32>(-407f, -1981f, 1492f), false)), vec3<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 18u)], global0[_wgslsmith_index_u32(40226u, 18u)], -1012f))), vec2<i32>(-2147483647i >> (u_input.e.x % 32u), 1i ^ u_input.b.x) >> (_wgslsmith_mult_vec2_u32(~u_input.d.zz, vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u))), Struct_2(~select(u_input.e, vec2<u32>(4294967295u, 2196u), vec2<bool>(true, true)) << (vec2<u32>(firstLeadingBit(u_input.a), u_input.e.x << (17794u % 32u)) % vec2<u32>(32u)), Struct_1(_wgslsmith_mod_vec2_i32(-u_input.c.xx, u_input.b), 46674u, global1.x < global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, 4294967295u), 18u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 18u)], 2922f, global1.x))), ~(arg_0.xx & vec2<i32>(-1i, arg_0.x))), ~_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d.x, 24560u), u_input.e), vec2<u32>(u_input.d.x, u_input.a)), false, Struct_1(vec2<i32>(0i, 2147483647i), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, u_input.e.x, 121730u), vec3<u32>(0u, 75283u, u_input.a)), true, vec3<f32>(_wgslsmith_f_op_f32(-global1.x), global1.x, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.d.x, 18u)] - -863f)), _wgslsmith_clamp_vec2_i32(arg_0.xz, vec2<i32>(arg_0.x, u_input.b.x), -vec2<i32>(u_input.b.x, 80130i)))), Struct_1(arg_0.yx, ~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.d.x, 4294967295u, 55312u), vec4<u32>(6050u, 53131u, 62806u, u_input.d.x)), ~u_input.d), false, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(floor(global1.x)), -1455f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.e.x, 18u)])))), vec2<i32>(arg_0.x, 70685i)), countOneBits(~1i));
    let var_1 = vec3<bool>(true, true, true);
    global1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_0.d.d.yx))), _wgslsmith_f_op_vec2_f32(var_0.c.b.d.zy - var_0.b.d.zy)));
    global2 = array<Struct_2, 21>();
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(-458f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -1351f)) + _wgslsmith_f_op_f32(round(-1000f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-886f, 475f)))) * _wgslsmith_f_op_vec2_f32(round(var_0.a.d.zy)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<i32>) -> Struct_3 {
    let var_0 = Struct_1(-vec2<i32>(_wgslsmith_mult_i32(-1i, 23256i), arg_1.x) ^ arg_1, 36892u, all(vec3<bool>(select(any(vec4<bool>(true, false, true, true)), true, all(vec2<bool>(true, true))), any(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, false, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(389f, 410f, arg_0.x)))))), vec2<i32>(firstTrailingBit(abs(_wgslsmith_add_i32(0i, -28724i))), _wgslsmith_add_i32(firstTrailingBit(-1i), 1i)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(982f, var_0.d.x))));
    let var_2 = Struct_3(Struct_1(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c.x, u_input.b.x), var_0.e), _wgslsmith_mod_vec2_i32(~arg_1, vec2<i32>(var_0.e.x, u_input.b.x)), var_0.a), 1u, var_0.c, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-289f)) * _wgslsmith_f_op_f32(abs(var_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1951f))), var_0.d.x), vec2<i32>(var_0.a.x, abs(var_0.a.x) | arg_1.x)), Struct_1(u_input.b, ~(~u_input.a << (39376u % 32u)), !(var_0.a.x >= _wgslsmith_dot_vec2_i32(var_0.e, u_input.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 1000f, var_1) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.x, 940f, var_1)))) * var_0.d), vec2<i32>(max(-21448i, 0i), u_input.c.x)), Struct_2(_wgslsmith_clamp_vec2_u32(~(~u_input.d.wy), _wgslsmith_div_vec2_u32(firstTrailingBit(u_input.e), u_input.e), u_input.d.zy), var_0, select(_wgslsmith_clamp_vec2_u32(select(vec2<u32>(4294967295u, 4294967295u), u_input.e, vec2<bool>(var_0.c, var_0.c)), ~vec2<u32>(51849u, var_0.b), u_input.d.wy), vec2<u32>(4294967295u, u_input.d.x) >> (u_input.d.yz % vec2<u32>(32u)), !vec2<bool>(var_0.c, true)), !(-144f < _wgslsmith_f_op_f32(abs(arg_0.x))), Struct_1(vec2<i32>(~1i, _wgslsmith_sub_i32(arg_1.x, u_input.b.x)), 1u, false, _wgslsmith_f_op_vec3_f32(-var_0.d), ~abs(arg_1))), Struct_1(vec2<i32>(2147483647i, arg_1.x), firstLeadingBit(82888u), true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_vec3_f32(func_3(u_input.c.yz, vec2<f32>(-502f, 1497f), vec3<bool>(var_0.c, var_0.c, true))).x, -692f)), ~vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, u_input.b.x), vec2<i32>(2147483647i, 14115i)), var_0.e.x)), _wgslsmith_sub_i32(var_0.e.x, ~firstTrailingBit(-44828i) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(-34510i, var_0.a.x) & var_0.e, arg_1)));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_0, arg_0))));
    var var_4 = firstLeadingBit(_wgslsmith_add_u32(61692u, u_input.e.x));
    return var_2;
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = !(!vec2<bool>(true == any(vec2<bool>(true, true)), 0i >= select(-2147483647i, u_input.b.x, true)));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1014f, global0[_wgslsmith_index_u32(arg_0.x, 18u)]))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x))))));
    var var_1 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-2442f, global1.x), vec2<f32>(746f, global1.x))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.x, global0[_wgslsmith_index_u32(78339u, 18u)])))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1316f, -196f))))), vec2<bool>(any(vec4<bool>(true, var_0.x, var_0.x, var_0.x)), true))) - _wgslsmith_f_op_vec2_f32(func_2(u_input.c))), firstTrailingBit(-min(vec2<i32>(u_input.c.x, 0i), vec2<i32>(-2147483647i, -30110i))));
    var var_2 = var_1.b.d.x;
    let var_3 = vec4<i32>(28329i, -1i, u_input.b.x, _wgslsmith_mult_i32(u_input.b.x, (_wgslsmith_mult_i32(u_input.c.x, 1i) << (15241u % 32u)) | (_wgslsmith_mod_i32(var_1.d.a.x, 0i) << (u_input.d.x % 32u))));
    return var_1.c.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.d.zxz);
    var_0 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(20073u, 18u)], -221f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.x, 2082f), var_0.d.yy)))))), u_input.b).a;
    global0 = array<f32, 18>();
    var_0 = Struct_1(-u_input.c.xy, _wgslsmith_div_u32(~countOneBits(_wgslsmith_add_u32(u_input.e.x, 68138u)), ~(_wgslsmith_div_u32(var_0.b, u_input.e.x) >> (0u % 32u))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(abs(1u), 18u)] * 629f) != _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-304f, 489f), func_1(u_input.d.zyw).d.x)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-556f * var_0.d.x), global0[_wgslsmith_index_u32(1u, 18u)]), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.d.x))), -2028f))), max(var_0.a, -(~var_0.a)));
    var var_1 = ~0i;
    let var_2 = _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(abs(var_0.b), 18u)]));
    global0 = array<f32, 18>();
    var_0 = func_4(vec2<f32>(576f, _wgslsmith_f_op_f32(-var_0.d.x)), -vec2<i32>(~(u_input.b.x | -40957i), reverseBits(~u_input.c.x))).b;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, 1049f, _wgslsmith_f_op_f32(f32(-1f) * -268f));
}

