struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: vec4<f32>,
    d: u32,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: Struct_3,
    d: Struct_2,
    e: vec2<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<f32>,
    c: vec2<f32>,
    d: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec3<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(Struct_2(vec3<u32>(35413u, 21889u, 0u), true, vec4<f32>(-521f, 504f, 1000f, -1622f), 1u, vec2<i32>(-1i, 30220i)), vec3<i32>(-10269i, 30909i, i32(-2147483648))), Struct_3(Struct_2(vec3<u32>(47274u, 0u, 45514u), false, vec4<f32>(346f, -439f, 1000f, 869f), 1u, vec2<i32>(i32(-2147483648), 9071i)), vec3<i32>(34712i, 10516i, 49100i)), Struct_3(Struct_2(vec3<u32>(7659u, 1u, 1u), true, vec4<f32>(336f, -1494f, -549f, -2143f), 6151u, vec2<i32>(1i, 1i)), vec3<i32>(0i, -3960i, 0i)));

var<private> global1: array<vec2<i32>, 30> = array<vec2<i32>, 30>(vec2<i32>(9036i, -1i), vec2<i32>(2147483647i, -1i), vec2<i32>(13763i, 7270i), vec2<i32>(-12208i, 8669i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(3107i, -39910i), vec2<i32>(1i, 0i), vec2<i32>(2147483647i, 21130i), vec2<i32>(2147483647i, -63141i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(1i, 43878i), vec2<i32>(16420i, -18256i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-31140i, 2147483647i), vec2<i32>(-1i, 2147483647i), vec2<i32>(2147483647i, 1i), vec2<i32>(0i, -41369i), vec2<i32>(-1i, -89050i), vec2<i32>(0i, 70875i), vec2<i32>(0i, 0i), vec2<i32>(-1i, -1i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(0i, 1i), vec2<i32>(-38851i, 0i), vec2<i32>(1i, 17426i), vec2<i32>(26341i, 32244i), vec2<i32>(-3616i, -31173i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(2147483647i, 1i), vec2<i32>(1038i, -1i));

var<private> global2: Struct_2;

var<private> global3: array<vec4<i32>, 14> = array<vec4<i32>, 14>(vec4<i32>(-33985i, -1i, -1i, -1i), vec4<i32>(1i, 1i, i32(-2147483648), -39970i), vec4<i32>(-1i, 0i, 17234i, i32(-2147483648)), vec4<i32>(2147483647i, 1i, 26115i, -58785i), vec4<i32>(-1i, -2297i, -1i, -3544i), vec4<i32>(59911i, -35063i, 0i, -37682i), vec4<i32>(6140i, 2147483647i, -78668i, 30130i), vec4<i32>(-18306i, 1i, -1i, 1i), vec4<i32>(-9849i, 2147483647i, i32(-2147483648), -53601i), vec4<i32>(i32(-2147483648), 62819i, -32719i, 4322i), vec4<i32>(i32(-2147483648), -25472i, -19881i, -60024i), vec4<i32>(18483i, -8822i, -1i, 3702i), vec4<i32>(i32(-2147483648), 1i, -26380i, -1i), vec4<i32>(8751i, 0i, 1i, 0i));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_1(arg_0: f32, arg_1: i32) -> u32 {
    global1 = array<vec2<i32>, 30>();
    var var_0 = 0u;
    global3 = array<vec4<i32>, 14>();
    var var_1 = global2.c.yzx;
    global3 = array<vec4<i32>, 14>();
    return abs(1u);
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: vec3<i32>, arg_3: vec2<u32>) -> vec2<i32> {
    var var_0 = Struct_3(Struct_2(_wgslsmith_mod_vec3_u32(global2.a, ~(~vec3<u32>(global2.d, global2.d, 36121u))), true, _wgslsmith_f_op_vec4_f32(max(global2.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1745f, global2.c.x, global2.c.x, -1152f)))), _wgslsmith_mult_u32(~1u, arg_3.x) >> (~(arg_3.x | 26286u) % 32u), _wgslsmith_add_vec2_i32(global2.e, ~arg_2.zx)), min(vec3<i32>(i32(-1i) * -11805i, countOneBits(1i), 46184i) >> (_wgslsmith_div_vec3_u32(global2.a, vec3<u32>(global2.d, u_input.a, u_input.a)) % vec3<u32>(32u)), arg_2));
    global2 = var_0.a;
    global3 = array<vec4<i32>, 14>();
    global1 = array<vec2<i32>, 30>();
    var var_1 = !vec2<bool>(any(select(vec4<bool>(true, var_0.a.b, var_0.a.b, global2.b), select(vec4<bool>(false, var_0.a.b, global2.b, true), vec4<bool>(false, var_0.a.b, true, true), true), !global2.b)), true);
    return ~vec2<i32>(select(-arg_2.x, abs(_wgslsmith_sub_i32(1i, var_0.b.x)), false), -2147483647i);
}

fn func_2() -> Struct_1 {
    let var_0 = max(vec2<u32>(26349u, ~66353u), vec2<u32>(~(_wgslsmith_dot_vec4_u32(vec4<u32>(12445u, 0u, 3831u, u_input.c), vec4<u32>(128547u, 56553u, 1u, u_input.c)) | 0u), ~u_input.c));
    let var_1 = Struct_5(global0[_wgslsmith_index_u32(global2.a.x, 3u)], _wgslsmith_f_op_vec2_f32(-global2.c.yz), vec2<f32>(_wgslsmith_f_op_f32(-458f + -716f), 837f), Struct_4(6605u, Struct_1(func_3(false, global2.e.x, select(vec3<i32>(19285i, -48709i, 9567i), vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i), vec3<bool>(true, true, false)), _wgslsmith_clamp_vec2_u32(var_0, vec2<u32>(var_0.x, 1u), var_0)), vec3<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 38640u, 0u), global2.a), ~global2.d), vec4<f32>(_wgslsmith_f_op_f32(-global2.c.x), 1375f, 788f, _wgslsmith_f_op_f32(step(885f, -340f))), false, global2.b || !global2.b), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(min(u_input.c, var_0.x)), _wgslsmith_sub_u32(reverseBits(4294967295u), global2.a.x)), 3u)], Struct_2(global2.a, all(!vec4<bool>(global2.b, false, global2.b, global2.b)), vec4<f32>(_wgslsmith_f_op_f32(-global2.c.x), _wgslsmith_f_op_f32(round(global2.c.x)), -336f, _wgslsmith_f_op_f32(round(global2.c.x))), 4294967295u, _wgslsmith_mod_vec2_i32(select(global2.e, global1[_wgslsmith_index_u32(0u, 30u)], true), vec2<i32>(u_input.b.x, 40189i))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1568f, global2.c.x), _wgslsmith_f_op_f32(-global2.c.x)))));
    global2 = var_1.d.c.a;
    var var_2 = var_1.d.b;
    global0 = array<Struct_3, 3>();
    return var_1.d.b;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_5) -> vec4<f32> {
    let var_0 = func_2();
    global1 = array<vec2<i32>, 30>();
    return _wgslsmith_div_vec4_f32(arg_2.d.c.a.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.x, -1263f, _wgslsmith_div_f32(-1547f, _wgslsmith_f_op_f32(floor(107f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-979f + var_0.c.x))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(global2.c + var_0.c), _wgslsmith_div_vec4_f32(vec4<f32>(973f, arg_1.c.x, 285f, global2.c.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -406f, global2.c.x, 2155f) * vec4<f32>(-1910f, -1436f, -930f, global2.c.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(vec3<u32>(_wgslsmith_mod_u32(~39827u, ~u_input.c), global2.d, ~_wgslsmith_mult_u32(u_input.a, global2.d)), global2.b, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(func_4(func_1(global2.c.x, 16226i), func_2(), Struct_5(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, global2.d), 3u)], _wgslsmith_f_op_vec2_f32(round(global2.c.wx)), global2.c.xw, Struct_4(1u, Struct_1(global2.e, vec3<u32>(25342u, global2.d, 21132u), vec4<f32>(-182f, -1000f, -449f, global2.c.x), global2.b, false), Struct_3(Struct_2(vec3<u32>(4294967295u, global2.d, global2.a.x), true, vec4<f32>(-464f, global2.c.x, 438f, global2.c.x), 69202u, global2.e), vec3<i32>(0i, u_input.b.x, u_input.b.x)), Struct_2(global2.a, true, vec4<f32>(global2.c.x, global2.c.x, global2.c.x, 576f), 37724u, vec2<i32>(global2.e.x, global2.e.x)), vec2<f32>(-450f, global2.c.x))))))), select(u_input.a, 36191u, select(true, global2.b, global2.b || true)), ~(-(_wgslsmith_sub_vec2_i32(vec2<i32>(global2.e.x, -2147483647i), global2.e) ^ select(vec2<i32>(13365i, 34561i), vec2<i32>(-4894i, -1i), true))));
    global1 = array<vec2<i32>, 30>();
    let var_0 = Struct_4(_wgslsmith_mod_u32(func_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(global2.c.x)), _wgslsmith_f_op_f32(global2.c.x * global2.c.x), true)), -24618i), 72205u), Struct_1(_wgslsmith_mod_vec2_i32(countOneBits(u_input.b ^ global1[_wgslsmith_index_u32(global2.d, 30u)]), ~_wgslsmith_add_vec2_i32(global1[_wgslsmith_index_u32(1u, 30u)], vec2<i32>(global2.e.x, -16038i))), vec3<u32>(~(~global2.a.x), ~global2.d, u_input.c), vec4<f32>(global2.c.x, _wgslsmith_f_op_f32(-882f * global2.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.c.x)) - _wgslsmith_div_f32(-1336f, 436f)), -391f), true, global2.b), Struct_3(Struct_2(~(~vec3<u32>(u_input.a, 0u, 77563u)), all(select(vec4<bool>(global2.b, global2.b, true, global2.b), vec4<bool>(global2.b, global2.b, true, false), false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.c.x, global2.c.x, global2.c.x, 541f), vec4<f32>(global2.c.x, -420f, -1753f, 135f)))), abs(1u), countOneBits(select(u_input.b, u_input.b, vec2<bool>(false, global2.b)))), min(abs(max(vec3<i32>(u_input.b.x, -30504i, -2147483647i), vec3<i32>(global2.e.x, u_input.b.x, u_input.b.x))), vec3<i32>(global2.e.x << (u_input.c % 32u), 35740i, 1i))), Struct_2(vec3<u32>(_wgslsmith_sub_u32(global2.a.x, _wgslsmith_mult_u32(global2.a.x, 1u)), ~(~u_input.a), _wgslsmith_sub_u32(~0u, _wgslsmith_mult_u32(u_input.c, 4294967295u))), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.x, global2.c.x, global2.c.x, 2143f))), 4294967295u, -(global1[_wgslsmith_index_u32(global2.a.x, 30u)] ^ _wgslsmith_div_vec2_i32(vec2<i32>(global2.e.x, global2.e.x), vec2<i32>(-1i, 29043i)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global2.c.ww - global2.c.wz), vec2<f32>(2026f, -762f), vec2<bool>(global2.b, false)))))));
    global0 = array<Struct_3, 3>();
    let var_1 = var_0.c.a.c.yzz;
    global0 = array<Struct_3, 3>();
    var var_2 = var_0.d;
    var_2 = Struct_2(var_2.a, !all(vec2<bool>(var_0.b.d, !global2.b)), _wgslsmith_f_op_vec4_f32(-var_2.c), var_0.b.b.x, abs(_wgslsmith_add_vec2_i32(-global1[_wgslsmith_index_u32(~47244u, 30u)], _wgslsmith_add_vec2_i32(vec2<i32>(1i, -34557i), var_0.d.e))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_4(var_2.a.x, var_0.b, Struct_5(Struct_3(var_0.d, var_0.c.b), var_0.b.c.yz, var_2.c.xz, var_0))).x, _wgslsmith_f_op_f32(var_1.x + var_0.e.x))))), u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.x)) - -1987f), vec3<f32>(global2.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.c.x, 720f))) + func_2().c.x), _wgslsmith_f_op_f32(-var_1.x)), ~_wgslsmith_div_vec3_u32(var_2.a, ~var_0.c.a.a));
}

