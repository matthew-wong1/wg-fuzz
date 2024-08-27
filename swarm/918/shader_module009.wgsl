struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec4<bool>,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25> = array<f32, 25>(-1531f, -515f, 385f, 849f, -665f, 596f, -341f, -787f, 1344f, -1000f, 1000f, -1590f, 1000f, 176f, 1567f, 513f, 1587f, 649f, 502f, -427f, 1912f, 295f, -2319f, -565f, 660f);

var<private> global1: array<i32, 24> = array<i32, 24>(25504i, 0i, -68342i, 30442i, -16949i, -1i, 0i, 23842i, -1i, i32(-2147483648), 0i, 23991i, 18891i, 0i, 85532i, -12567i, -1i, 2147483647i, 4525i, i32(-2147483648), -1i, 0i, -1i, 2147483647i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool, arg_2: i32) -> u32 {
    global1 = array<i32, 24>();
    let var_0 = Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(min(32202u, ~(~4294967295u)), 25u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(0u, 25u)], false)) * _wgslsmith_f_op_f32(f32(-1f) * -1572f)))), _wgslsmith_f_op_f32(step(1227f, global0[_wgslsmith_index_u32(14708u, 25u)])), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(0u, 1u, 1u)), ~vec3<u32>(1u, 1u, 1u)), 25u)]), 14334i, vec4<bool>(all(select(!vec3<bool>(false, arg_0.x, false), select(vec3<bool>(false, arg_0.x, false), vec3<bool>(false, arg_0.x, false), vec3<bool>(false, arg_1, false)), select(vec3<bool>(false, true, arg_0.x), vec3<bool>(arg_0.x, arg_1, false), vec3<bool>(false, arg_1, arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-291f, -1219f))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(805u, 25u)]) + global0[_wgslsmith_index_u32(1u, 25u)]), all(select(select(vec3<bool>(true, true, arg_0.x), vec3<bool>(arg_1, true, arg_0.x), false), !vec3<bool>(arg_1, false, arg_1), select(vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(arg_0.x, false, arg_0.x), arg_1))), all(!vec4<bool>(false, true, arg_0.x, true))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(62680u, 25u)]), -240f)), -1225f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-343f - global0[_wgslsmith_index_u32(54054u, 25u)]))))), true);
    var var_1 = Struct_2(var_0, -(_wgslsmith_div_i32(_wgslsmith_sub_i32(19643i, 1i), reverseBits(u_input.c)) & -3210i), Struct_1(var_0.a, min(0i, -_wgslsmith_div_i32(arg_2, arg_2)), var_0.c, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_0.d))), var_0.c.x));
    var var_2 = (-_wgslsmith_clamp_i32(abs(-1i), u_input.a, 74464i ^ global1[_wgslsmith_index_u32(71803u, 24u)]) & firstLeadingBit(45404i)) <= abs(-(~min(var_1.a.b, 1i)));
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.a.a)))), 52236i, var_0.c, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1267f * 962f)), _wgslsmith_f_op_f32(-var_1.c.d.x)), true), u_input.a, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -139f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1146f, -209f)), -547f)), _wgslsmith_f_op_f32(min(-295f, _wgslsmith_f_op_f32(-1314f * 229f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x + var_0.a.x))), 1i, !(!vec4<bool>(false, true, false, arg_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1890f - 873f), var_1.a.a.x, _wgslsmith_f_op_f32(-var_0.a.x)) + var_1.a.d), all(var_1.c.c.wzy)));
    return ~4294967295u;
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: Struct_4) -> bool {
    return any(arg_2.a.c.c.xx);
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.a;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-793f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * 348f)) - -607f);
    global0 = array<f32, 25>();
    let var_2 = vec4<bool>(true, select(true, any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))) | func_4(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(92531u, 25u)]), global1[_wgslsmith_index_u32(func_3(vec2<bool>(true, false), false, u_input.c), 24u)], Struct_4(Struct_2(Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(0u, 25u)], global0[_wgslsmith_index_u32(42061u, 25u)], 1999f, 226f), u_input.c, vec4<bool>(false, true, false, true), vec3<f32>(global0[_wgslsmith_index_u32(15868u, 25u)], global0[_wgslsmith_index_u32(0u, 25u)], -1048f), true), u_input.c, Struct_1(vec4<f32>(-1000f, -1889f, global0[_wgslsmith_index_u32(43490u, 25u)], -1835f), 1i, vec4<bool>(true, false, false, false), vec3<f32>(global0[_wgslsmith_index_u32(70944u, 25u)], 1321f, 839f), true)), vec3<bool>(false, false, true))), false), !func_4(-654f, i32(-1i) * -2147483647i, Struct_4(Struct_2(Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(42753u, 25u)], global0[_wgslsmith_index_u32(28235u, 25u)], global0[_wgslsmith_index_u32(77795u, 25u)], -567f), global1[_wgslsmith_index_u32(15538u, 24u)], vec4<bool>(false, true, true, true), vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)], -1027f), true), -2147483647i, Struct_1(vec4<f32>(-1204f, global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(1u, 25u)], 912f), u_input.b, vec4<bool>(false, false, true, true), vec3<f32>(-1192f, global0[_wgslsmith_index_u32(1u, 25u)], 788f), false)), vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(-226f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(5225u, 25u)])))) >= -1140f);
    global1 = array<i32, 24>();
    return Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-1117f, -546f)), -389f)), _wgslsmith_f_op_f32(round(-709f)), 1141f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(7083u, 25u)] * -863f)))), 5980i, vec4<bool>(true, var_2.x, true, !any(select(vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(true, var_2.x, var_2.x), vec3<bool>(false, var_2.x, false)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0[_wgslsmith_index_u32(27459u, 25u)], global0[_wgslsmith_index_u32(84480u, 25u)], global0[_wgslsmith_index_u32(54925u, 25u)]))))))), true);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_2) -> Struct_3 {
    var var_0 = -169f;
    var var_1 = arg_1.a.b;
    var var_2 = arg_1.a;
    global0 = array<f32, 25>();
    var_1 = 2147483647i;
    return Struct_3(vec2<u32>(arg_0.x, arg_0.x), select(abs(vec4<i32>(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(0u, 24u)], 27760i), -2147483647i, -41195i, _wgslsmith_sub_i32(u_input.c, var_2.b))), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(var_2.b, var_2.b, arg_1.b, 22589i), vec4<i32>(-2147483647i, _wgslsmith_mult_i32(arg_1.b, 11802i), ~(-10033i), ~global1[_wgslsmith_index_u32(arg_0.x, 24u)])), vec4<bool>(false, true, any(vec2<bool>(var_2.e, true)), var_2.e)), func_2());
}

fn func_6(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_3) -> Struct_1 {
    global0 = array<f32, 25>();
    global0 = array<f32, 25>();
    global0 = array<f32, 25>();
    return arg_3.c;
}

fn func_1() -> Struct_3 {
    global1 = array<i32, 24>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(14359u, 25u)], global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(9728u, 25u)]), vec3<f32>(-755f, global0[_wgslsmith_index_u32(4294967295u, 25u)], -583f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(8466u, 25u)], 182f, 1176f) - vec3<f32>(-349f, 406f, global0[_wgslsmith_index_u32(1u, 25u)]))))));
    global1 = array<i32, 24>();
    var var_1 = func_6(func_5(vec2<u32>(127004u, select(abs(4294967295u), abs(43955u), all(vec2<bool>(true, false)))), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1025f, -282f, var_0.x, -1487f) * vec4<f32>(576f, var_0.x, 390f, global0[_wgslsmith_index_u32(4294967295u, 25u)])), _wgslsmith_div_i32(u_input.a, -1i), vec4<bool>(false, true, false, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(126f, global0[_wgslsmith_index_u32(13398u, 25u)], 626f)), true), _wgslsmith_mod_i32(u_input.b, u_input.b >> (1u % 32u)), func_2())), vec4<u32>(1u, 1u, 1u, 1u), func_2(), Struct_3(func_5(select(~vec2<u32>(0u, 50106u), ~vec2<u32>(1u, 4294967295u), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))), Struct_2(Struct_1(vec4<f32>(1332f, var_0.x, var_0.x, 1000f), -2147483647i, vec4<bool>(false, false, true, false), vec3<f32>(global0[_wgslsmith_index_u32(48997u, 25u)], global0[_wgslsmith_index_u32(22574u, 25u)], var_0.x), false), ~global1[_wgslsmith_index_u32(0u, 24u)], func_2())).a, ~(~(vec4<i32>(-15147i, 0i, u_input.b, u_input.c) & vec4<i32>(u_input.b, 1948i, global1[_wgslsmith_index_u32(4294967295u, 24u)], 39714i))), func_5(max(~vec2<u32>(11647u, 4294967295u), vec2<u32>(4294967295u, 98227u)), Struct_2(Struct_1(vec4<f32>(-398f, 1902f, global0[_wgslsmith_index_u32(1u, 25u)], -309f), -29416i, vec4<bool>(false, true, true, false), vec3<f32>(global0[_wgslsmith_index_u32(34968u, 25u)], -183f, -222f), false), ~(-2147483647i), Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(19324u, 25u)], var_0.x, 443f, -146f), u_input.c, vec4<bool>(true, true, true, false), vec3<f32>(global0[_wgslsmith_index_u32(16520u, 25u)], global0[_wgslsmith_index_u32(4136u, 25u)], 591f), false))).c));
    var_0 = var_1.d;
    return Struct_3(_wgslsmith_clamp_vec2_u32(~func_5(~vec2<u32>(32797u, 78360u), Struct_2(Struct_1(var_1.a, var_1.b, vec4<bool>(false, var_1.c.x, false, true), var_1.d, false), 2147483647i, Struct_1(vec4<f32>(-228f, var_1.a.x, global0[_wgslsmith_index_u32(25128u, 25u)], var_0.x), u_input.a, var_1.c, vec3<f32>(var_1.a.x, global0[_wgslsmith_index_u32(40647u, 25u)], 1013f), false))).a, ~firstLeadingBit(vec2<u32>(1u, 1u)), ~(~select(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(13204u, 12832u), var_1.c.yx))), vec4<i32>(~abs(_wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(109549u, 24u)], -1i), vec2<i32>(global1[_wgslsmith_index_u32(11250u, 24u)], -45795i))), ~(var_1.b ^ _wgslsmith_mod_i32(-35023i, global1[_wgslsmith_index_u32(61504u, 24u)])), ~(-2147483647i), _wgslsmith_dot_vec4_i32(~min(vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(0u, 24u)], -1i, u_input.b), vec4<i32>(3666i, 2147483647i, -51257i, 0i)), ~vec4<i32>(var_1.b, global1[_wgslsmith_index_u32(1u, 24u)], 11691i, u_input.c))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_1.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -174f, var_1.a.x, var_0.x)), select(vec4<bool>(var_1.c.x, true, true, var_1.c.x), var_1.c, false))) - var_1.a), abs(abs(global1[_wgslsmith_index_u32(0u, 24u)])) | u_input.b, select(!var_1.c, var_1.c, true || func_6(Struct_3(vec2<u32>(80912u, 1u), vec4<i32>(var_1.b, u_input.a, global1[_wgslsmith_index_u32(48101u, 24u)], 1247i), Struct_1(var_1.a, global1[_wgslsmith_index_u32(40476u, 24u)], vec4<bool>(var_1.e, true, var_1.c.x, true), vec3<f32>(global0[_wgslsmith_index_u32(17710u, 25u)], 1067f, var_1.d.x), false)), vec4<u32>(0u, 37779u, 45402u, 0u), Struct_1(var_1.a, 45234i, var_1.c, var_1.a.zwz, true), Struct_3(vec2<u32>(1u, 43249u), vec4<i32>(-10699i, 27860i, global1[_wgslsmith_index_u32(1u, 24u)], var_1.b), Struct_1(var_1.a, global1[_wgslsmith_index_u32(14826u, 24u)], vec4<bool>(true, true, var_1.c.x, false), var_1.d, var_1.c.x))).e), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), global0[_wgslsmith_index_u32(~reverseBits(0u), 25u)]), var_1.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_4(Struct_2(Struct_1(var_0.c.a, u_input.c, func_1().c.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(var_0.a.x, 25u)], global0[_wgslsmith_index_u32(var_0.a.x, 25u)], -1497f) + _wgslsmith_div_vec3_f32(vec3<f32>(var_0.c.a.x, global0[_wgslsmith_index_u32(var_0.a.x, 25u)], global0[_wgslsmith_index_u32(79143u, 25u)]), var_0.c.a.wwx)), false), var_0.b.x, var_0.c), select(!var_0.c.c.zzw, select(vec3<bool>(any(vec3<bool>(false, var_0.c.e, var_0.c.e)), select(var_0.c.e, var_0.c.c.x, var_0.c.e), var_0.c.c.x), vec3<bool>(var_0.c.d.x >= var_0.c.a.x, true, true), vec3<bool>(true, true, true)), !vec3<bool>(func_1().c.c.x, 2147483647i <= u_input.a, false && var_0.c.c.x)));
    var_1 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.c.a), var_0.b.x, select(vec4<bool>(var_1.b.x, true, true, true), !var_0.c.c, var_1.a.c.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(0u, 25u)], var_1.a.c.a.x, var_0.c.a.x))), func_5(vec2<u32>(var_0.a.x, 62150u), Struct_2(var_1.a.a, -2147483647i, var_1.a.a)).c.e), -2147483647i, Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.c.a), _wgslsmith_add_i32(var_1.a.c.b, ~15819i), !var_0.c.c, vec3<f32>(-549f, _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(var_0.a.x, 25u)])), _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(var_0.a.x, 25u)], 1783f))), true)), vec3<bool>(!var_1.b.x, func_1().c.c.x, true));
    let var_2 = vec2<bool>(true, true);
    var_1 = Struct_4(Struct_2(var_0.c, 24842i, Struct_1(var_0.c.a, 53301i, select(!vec4<bool>(var_2.x, var_0.c.e, var_0.c.e, var_0.c.e), vec4<bool>(var_1.a.c.c.x, var_0.c.c.x, false, true), func_6(Struct_3(vec2<u32>(0u, 1u), var_0.b, var_0.c), vec4<u32>(var_0.a.x, 56344u, var_0.a.x, var_0.a.x), Struct_1(var_1.a.c.a, 28620i, vec4<bool>(true, true, var_1.b.x, var_1.a.a.e), var_1.a.a.a.zxz, var_1.a.a.e), Struct_3(vec2<u32>(1u, 4294967295u), var_0.b, var_1.a.c)).c), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(var_0.c.d, vec3<f32>(var_1.a.c.d.x, 1327f, -520f))))), var_1.b.x)), vec3<bool>(all(!func_5(var_0.a, Struct_2(var_1.a.c, global1[_wgslsmith_index_u32(var_0.a.x, 24u)], var_1.a.a)).c.c), all(var_1.a.a.c), var_1.a.a.e));
    global1 = array<i32, 24>();
    global0 = array<f32, 25>();
    var var_3 = vec4<bool>(func_5(vec2<u32>(~40140u, ~var_0.a.x) ^ vec2<u32>(firstTrailingBit(20813u), 102163u), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(var_0.c.a + vec4<f32>(var_1.a.c.d.x, var_1.a.a.a.x, -1057f, var_0.c.a.x)), 0i, select(vec4<bool>(var_0.c.e, var_1.b.x, var_1.a.a.c.x, false), var_1.a.c.c, vec4<bool>(var_2.x, true, var_1.a.a.e, var_2.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1583f, 604f, 812f) + var_1.a.c.a.xzy), func_1().c.e), _wgslsmith_mult_i32(1i, var_1.a.b << (29314u % 32u)), func_1().c)).c.c.x, !var_2.x, !(~2147483647i > _wgslsmith_add_i32(2147483647i, var_1.a.a.b)), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(func_5(var_0.a, var_1.a).c.b, var_0.b.xzw, var_0.a.x);
}

