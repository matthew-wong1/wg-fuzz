struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: u32,
    b: vec4<bool>,
    c: vec2<f32>,
    d: Struct_2,
    e: u32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec3<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 22>;

var<private> global1: vec2<f32>;

var<private> global2: vec4<f32> = vec4<f32>(193f, -164f, -247f, -917f);

var<private> global3: array<vec2<bool>, 12>;

var<private> global4: array<vec4<f32>, 26> = array<vec4<f32>, 26>(vec4<f32>(-1011f, -1436f, -455f, 1300f), vec4<f32>(-169f, 124f, -598f, -481f), vec4<f32>(315f, -577f, 685f, -1355f), vec4<f32>(-759f, -951f, -272f, -1414f), vec4<f32>(-1000f, 1288f, -256f, -1735f), vec4<f32>(1845f, -1208f, 1410f, -442f), vec4<f32>(159f, 1336f, 229f, -229f), vec4<f32>(-551f, 2199f, 1034f, 1712f), vec4<f32>(-1172f, 560f, 1324f, -388f), vec4<f32>(-1076f, -1355f, -1000f, -824f), vec4<f32>(158f, -1193f, -835f, 1337f), vec4<f32>(-1235f, -984f, 1794f, 390f), vec4<f32>(-1054f, 1786f, -147f, -310f), vec4<f32>(-423f, -845f, -754f, 456f), vec4<f32>(-112f, -138f, 491f, -696f), vec4<f32>(309f, -578f, 1027f, -1000f), vec4<f32>(306f, -1314f, 1076f, 2837f), vec4<f32>(874f, -478f, -1000f, 499f), vec4<f32>(-190f, 549f, -755f, 1894f), vec4<f32>(-860f, -992f, 363f, 1000f), vec4<f32>(451f, -855f, 1401f, 1111f), vec4<f32>(805f, -981f, -494f, -1452f), vec4<f32>(465f, 1000f, -560f, -640f), vec4<f32>(-1088f, 512f, -1979f, -1000f), vec4<f32>(443f, 1067f, -1659f, 2598f), vec4<f32>(1684f, 574f, 1471f, 349f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: f32, arg_1: Struct_5) -> u32 {
    let var_0 = Struct_2(min(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a.b.x, 1u, 1u), vec3<u32>(4294967295u, 1u, arg_1.a.b.x)), global0[_wgslsmith_index_u32(u_input.c.x, 22u)]), arg_1.a.b.x & arg_1.a.b.x, countOneBits(66039u), arg_1.a.b.x), u_input.c), Struct_1(arg_1.a.a, _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, u_input.d.x, u_input.e.x), arg_1.a.b), _wgslsmith_mod_vec3_u32(arg_1.a.b, min(arg_1.a.b, arg_1.a.b))), vec3<i32>(firstLeadingBit(41202i) & ~arg_1.a.c.x, _wgslsmith_dot_vec2_i32(arg_1.a.c.xz, arg_1.a.c.zz) & arg_1.a.c.x, ~(~(-15252i)))));
    global4 = array<vec4<f32>, 26>();
    global1 = _wgslsmith_f_op_vec2_f32(select(global2.zx, global2.wx, vec2<bool>(!arg_1.a.a.x, any(select(global3[_wgslsmith_index_u32(min(3524u, 4294967295u), 12u)], vec2<bool>(false, true), true)))));
    global3 = array<vec2<bool>, 12>();
    var var_1 = var_0.a.x;
    return ~(_wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.e.x, var_0.b.b.x), u_input.e.xx, !vec2<bool>(var_0.b.a.x, true)), arg_1.a.b.zx) >> (var_0.b.b.x % 32u));
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_4) -> bool {
    global4 = array<vec4<f32>, 26>();
    var var_0 = ~(~countOneBits(~arg_2.d.b.b.yx | reverseBits(u_input.d.zz)));
    var var_1 = arg_2.d.b;
    let var_2 = !(!vec2<bool>(arg_1, true));
    global3 = array<vec2<bool>, 12>();
    return false;
}

fn func_2() -> u32 {
    let var_0 = !vec4<bool>(true, func_4(~_wgslsmith_div_i32(1i, u_input.a), func_3(global1.x, Struct_5(Struct_1(vec4<bool>(false, false, false, false), u_input.c.wyw, vec3<i32>(u_input.b, 0i, 87629i)))) >= ~45762u, Struct_4(global0[_wgslsmith_index_u32(abs(u_input.c.x), 22u)], select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false)), global2.ww, Struct_2(vec4<u32>(u_input.e.x, 28685u, 0u, 27692u), Struct_1(vec4<bool>(true, true, true, false), vec3<u32>(u_input.d.x, 0u, 4294967295u), vec3<i32>(u_input.b, 0i, u_input.b))), firstLeadingBit(global0[_wgslsmith_index_u32(1u, 22u)]))), any(vec4<bool>(true, false, false, func_4(37161i, true, Struct_4(global0[_wgslsmith_index_u32(u_input.c.x, 22u)], vec4<bool>(true, true, true, true), global2.xy, Struct_2(u_input.c, Struct_1(vec4<bool>(false, false, false, true), u_input.d, vec3<i32>(1i, 26273i, u_input.a))), 43944u)))), true);
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * 1054f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(global2.x)))) + -3064f)));
    let var_1 = var_0.x;
    let var_2 = Struct_1(select(!vec4<bool>(true, all(vec3<bool>(false, var_0.x, true)), var_0.x, var_1), vec4<bool>(var_0.x, u_input.d.x > ~global0[_wgslsmith_index_u32(4294967295u, 22u)], var_1 | !var_1, true), vec4<bool>(!select(var_0.x, false, true), all(var_0.wz) && true, !var_0.x, true)), vec3<u32>(u_input.c.x, 98219u, 35496u ^ _wgslsmith_div_u32(~1u, u_input.c.x)), vec3<i32>(u_input.a, u_input.b, u_input.a));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(162f))), -733f)), global2.x);
    return 1276u & (_wgslsmith_mult_u32(91515u, _wgslsmith_mod_u32(firstLeadingBit(31561u), 4294967295u)) & (var_2.b.x ^ global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(15388u, _wgslsmith_mod_u32(0u, 68406u)), 22u)]));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2) -> vec3<f32> {
    var var_0 = arg_1.b.c.x;
    global4 = array<vec4<f32>, 26>();
    global4 = array<vec4<f32>, 26>();
    let var_1 = Struct_5(Struct_1(!arg_0.b, ~arg_1.b.b, select(arg_1.b.c, arg_1.b.c, arg_0.b.x)));
    var var_2 = select(arg_1.b.a.x, !arg_1.b.a.x, select(2147483647i <= -abs(u_input.b), _wgslsmith_div_f32(462f, _wgslsmith_div_f32(global1.x, global2.x)) >= _wgslsmith_f_op_f32(abs(arg_0.c.x)), all(select(vec2<bool>(false, arg_0.d.b.a.x), !arg_1.b.a.wx, var_1.a.a.x))));
    return vec3<f32>(_wgslsmith_f_op_f32(floor(573f)), global1.x, _wgslsmith_f_op_f32(-global2.x));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec3<f32>, arg_3: bool) -> i32 {
    var var_0 = 1i;
    let var_1 = ~firstLeadingBit(abs(u_input.b));
    var var_2 = _wgslsmith_f_op_vec3_f32(func_5(Struct_4(func_2(), select(!select(vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(arg_0, false, arg_3, false), vec4<bool>(false, true, arg_3, arg_0)), !select(vec4<bool>(true, false, arg_0, true), vec4<bool>(arg_0, true, false, false), vec4<bool>(arg_0, true, arg_3, false)), !(!vec4<bool>(true, false, arg_3, arg_3))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1068f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global2.yz, vec2<f32>(-364f, global2.x)))), Struct_2(min(firstTrailingBit(vec4<u32>(u_input.e.x, u_input.e.x, u_input.d.x, 33248u)), ~u_input.c), Struct_1(select(vec4<bool>(arg_0, false, false, arg_0), vec4<bool>(false, arg_0, arg_3, true), vec4<bool>(false, arg_3, true, false)), ~u_input.e, firstTrailingBit(vec3<i32>(-45934i, -2147483647i, 23917i)))), arg_1), Struct_2(vec4<u32>(arg_1, abs(18183u), 106523u, ~u_input.e.x), Struct_1(!select(vec4<bool>(true, arg_3, false, arg_0), vec4<bool>(true, true, true, true), vec4<bool>(arg_0, arg_0, false, arg_3)), vec3<u32>(_wgslsmith_sub_u32(12162u, arg_1), u_input.e.x, _wgslsmith_mult_u32(4294967295u, u_input.c.x)), vec3<i32>(14434i, u_input.b, u_input.a)))));
    global3 = array<vec2<bool>, 12>();
    let var_3 = Struct_1(select(!(!(!vec4<bool>(arg_0, arg_0, arg_0, false))), !(!select(vec4<bool>(false, arg_0, arg_0, false), vec4<bool>(arg_3, true, arg_0, arg_0), true)), !(!arg_0 || arg_0)), u_input.d, _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(-firstLeadingBit(vec3<i32>(-1i, 28585i, var_1)), vec3<i32>(u_input.a, ~(-1i), u_input.a)), _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(0i, -27237i, -14679i), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, -2147483647i, var_1), vec3<i32>(0i, 0i, var_1))), reverseBits(vec3<i32>(-2147483647i, var_1, 12621i) << (vec3<u32>(arg_1, 151u, 4574u) % vec3<u32>(32u))))));
    return var_3.c.x;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_add_u32(0u, ~(~(~(~arg_2.a.x))));
    let var_1 = arg_2.b.c.yx;
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.x, -1000f, global1.x, global1.x)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global1.x - 654f), _wgslsmith_f_op_f32(exp2(global2.x)), global1.x, _wgslsmith_f_op_f32(sign(global2.x))))));
    global4 = array<vec4<f32>, 26>();
    var var_2 = vec3<u32>(arg_1.b.x, 6575u, func_3(_wgslsmith_f_op_f32(min(537f, -830f)), Struct_5(Struct_1(!arg_2.b.a, arg_1.b >> (arg_2.b.b % vec3<u32>(32u)), arg_1.c))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(~u_input.c, Struct_1(!select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false)), true), ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(84906u, u_input.d.x, u_input.c.x), u_input.d)), vec3<i32>(~(~u_input.a), u_input.a, _wgslsmith_mult_i32(_wgslsmith_div_i32(-1i, u_input.a), countOneBits(-33600i)))));
    var var_1 = func_6(Struct_2(~var_0.a, Struct_1(var_0.b.a, vec3<u32>(1u, 65621u, abs(u_input.d.x)), vec3<i32>(func_1(true, u_input.c.x, vec3<f32>(-133f, global1.x, global1.x), var_0.b.a.x), reverseBits(-10188i), min(u_input.b, u_input.a)))), var_0.b, Struct_2(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(14279u, 13298u, 0u, 11464u), var_0.a), reverseBits(u_input.c), var_0.a ^ _wgslsmith_div_vec4_u32(vec4<u32>(26144u, 35121u, 50567u, global0[_wgslsmith_index_u32(37480u, 22u)]), u_input.c)), Struct_1(vec4<bool>(!var_0.b.a.x, var_0.b.a.x, var_0.b.a.x && false, all(vec3<bool>(false, false, var_0.b.a.x))), ~vec3<u32>(u_input.c.x, 21427u, global0[_wgslsmith_index_u32(var_0.a.x, 22u)]), firstLeadingBit(-vec3<i32>(u_input.a, u_input.a, u_input.b)))));
    global3 = array<vec2<bool>, 12>();
    let var_2 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(6372i, _wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.b, -23683i), var_1.b.c.x)), firstTrailingBit(~u_input.b));
    let var_3 = Struct_4(var_0.b.b.x, !vec4<bool>(any(!var_1.b.a), false, !any(vec2<bool>(var_1.b.a.x, true)), func_6(func_6(Struct_2(vec4<u32>(4294967295u, 4294967295u, var_1.a.x, 59325u), var_1.b), Struct_1(vec4<bool>(var_0.b.a.x, false, var_0.b.a.x, false), vec3<u32>(2710u, 0u, u_input.e.x), vec3<i32>(0i, var_0.b.c.x, -3889i)), Struct_2(vec4<u32>(0u, 124157u, var_0.b.b.x, 2165u), Struct_1(vec4<bool>(var_0.b.a.x, var_1.b.a.x, var_1.b.a.x, false), var_0.b.b, var_0.b.c))), var_0.b, Struct_2(vec4<u32>(4294967295u, 0u, var_0.a.x, global0[_wgslsmith_index_u32(var_0.a.x, 22u)]), var_1.b)).b.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(max(422f, global2.x)), global1.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global2.x, -223f)))))), Struct_2(_wgslsmith_clamp_vec4_u32(var_0.a, ~select(var_0.a, vec4<u32>(17114u, 76369u, 4294967295u, 4294967295u), vec4<bool>(true, false, var_1.b.a.x, false)), var_1.a), Struct_1(var_0.b.a, vec3<u32>(var_1.a.x, ~u_input.c.x, countOneBits(4294967295u)), abs(firstTrailingBit(var_0.b.c)))), ~(~global0[_wgslsmith_index_u32(9201u, 22u)]));
    global1 = vec2<f32>(global1.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(var_3.c.x * var_3.c.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(var_0.b.c, var_3.d.b.c, ~vec3<i32>(31099i, 2147483647i, 46855i) >> (u_input.c.zxw % vec3<u32>(32u))), firstTrailingBit(~func_2() << (_wgslsmith_mod_u32(~var_3.e, 1u) % 32u)), ~min(0u, ~(~global0[_wgslsmith_index_u32(u_input.d.x, 22u)])), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(919f - 1000f)))), global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * 1553f)) + global1.x)), ~func_6(Struct_2(u_input.c, func_6(Struct_2(var_1.a, Struct_1(var_0.b.a, vec3<u32>(7347u, var_1.a.x, u_input.c.x), var_3.d.b.c)), var_1.b, Struct_2(vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_3.e, 22u)], 22u)], 56159u, 16848u), Struct_1(vec4<bool>(true, true, true, false), vec3<u32>(0u, var_1.a.x, var_1.b.b.x), var_1.b.c))).b), Struct_1(select(vec4<bool>(var_3.b.x, true, false, var_0.b.a.x), var_3.d.b.a, var_0.b.a), vec3<u32>(27933u, var_1.a.x, 1u) | var_1.a.ywy, -var_3.d.b.c), Struct_2(var_0.a | u_input.c, Struct_1(vec4<bool>(true, false, var_0.b.a.x, false), var_0.a.zyy, vec3<i32>(var_1.b.c.x, -7362i, u_input.a)))).a.yy);
}

