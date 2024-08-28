struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: i32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_1 = Struct_1(vec4<i32>(12000i, -51185i, 19914i, -30614i), 4294967295u, -1239f, vec2<i32>(2147483647i, 1i));

var<private> global2: array<vec2<f32>, 15> = array<vec2<f32>, 15>(vec2<f32>(-403f, -1436f), vec2<f32>(-227f, 2302f), vec2<f32>(639f, -167f), vec2<f32>(621f, -269f), vec2<f32>(593f, 1484f), vec2<f32>(970f, -525f), vec2<f32>(-528f, -1028f), vec2<f32>(-3736f, 159f), vec2<f32>(-283f, -1095f), vec2<f32>(1010f, -1019f), vec2<f32>(-469f, -198f), vec2<f32>(578f, 1000f), vec2<f32>(900f, -175f), vec2<f32>(1000f, -447f), vec2<f32>(-875f, -1000f));

var<private> global3: bool = false;

var<private> global4: i32 = -15966i;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: Struct_4, arg_3: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-739f + global1.c) * _wgslsmith_f_op_f32(global1.c - 618f));
    var var_1 = _wgslsmith_add_vec2_u32(arg_2.b, _wgslsmith_add_vec2_u32(arg_0.b, ~arg_2.b << (_wgslsmith_add_vec2_u32(vec2<u32>(arg_3.b, global1.b), vec2<u32>(2971u, arg_3.b)) % vec2<u32>(32u)))) & (arg_0.b << ((_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(arg_2.b, arg_2.b), arg_0.b) | (min(vec2<u32>(global1.b, 4294967295u), arg_2.b) << (arg_2.b % vec2<u32>(32u)))) % vec2<u32>(32u)));
    global3 = firstLeadingBit(select(abs(11830u), 1u, all(arg_1.zwy))) != 4786u;
    var var_2 = Struct_4(!(!arg_0.a), arg_0.b);
    let var_3 = arg_3;
    return -19545i;
}

fn func_4(arg_0: vec4<i32>, arg_1: u32) -> u32 {
    let var_0 = ~(~vec3<u32>(~(global1.b ^ 1u), arg_1, ~max(34696u, 1u)));
    let var_1 = 1u;
    var var_2 = _wgslsmith_sub_u32(global1.b, ~0u);
    let var_3 = Struct_2(vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.c, ~u_input.c), -(~arg_0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, 1i, arg_0.x, 41481i), select(vec4<i32>(global1.d.x, 2013i, u_input.c.x, global1.a.x), global1.a, vec4<bool>(false, true, false, false))) << (arg_1 % 32u), -2147483647i), select(select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(any(vec4<bool>(false, true, false, false)) || all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-global1.c) <= _wgslsmith_f_op_f32(abs(1910f))), vec2<bool>(all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true))), false)), arg_0.x);
    var var_4 = _wgslsmith_f_op_f32(ceil(global1.c));
    return _wgslsmith_clamp_u32(~_wgslsmith_mod_u32(_wgslsmith_div_u32(abs(var_0.x), arg_1), select(_wgslsmith_clamp_u32(var_1, 30652u, 1u), global1.b, false & var_3.b.x)), countOneBits(_wgslsmith_dot_vec2_u32(~(vec2<u32>(var_1, 42223u) | var_0.xz), vec2<u32>(83975u, var_0.x))), 39800u);
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: Struct_4) -> vec2<f32> {
    global1 = Struct_1(global1.a, func_4(vec4<i32>(~(-1i), func_3(arg_2, arg_2.a, Struct_4(arg_2.a, vec2<u32>(arg_2.b.x, arg_2.b.x)), Struct_1(global1.a, 70707u, -1233f, u_input.c.wy)), i32(-1i) * -2147483647i, ~(-50135i)), arg_2.b.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-420f - -1081f))), ~(~min(vec2<i32>(u_input.c.x, global1.d.x), ~vec2<i32>(1i, 1i))));
    global2 = array<vec2<f32>, 15>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(172f, 836f, 156f, global1.c), vec4<f32>(global1.c, global1.c, arg_1, arg_1))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c, -313f, global1.c, arg_1))))));
    global4 = _wgslsmith_div_i32(global1.a.x, ~33202i);
    let var_1 = arg_2.a;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, arg_1)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(global1.b, 15u)] * vec2<f32>(-534f, -450f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.yy, var_0.zx, var_1.x))))));
}

fn func_5(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_4, arg_3: vec4<i32>) -> Struct_1 {
    global4 = abs(_wgslsmith_sub_i32(~u_input.d.x, 73280i) | _wgslsmith_add_i32(4839i, u_input.b.x));
    let var_0 = true & any(vec3<bool>(select(true, arg_2.a.x, true) && true, -816f < _wgslsmith_div_f32(399f, arg_0.x), select(true, !arg_2.a.x, false)));
    global3 = all(arg_2.a.wx);
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.c + _wgslsmith_div_f32(global1.c, _wgslsmith_f_op_f32(abs(-1393f)))))), 1167f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.c)))) <= arg_0.x));
    return Struct_1(global1.a, 1u, _wgslsmith_f_op_f32(select(arg_0.x, -209f, true)), _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global1.d.x, -24409i), vec2<i32>(5782i, 23821i)) | arg_3.yy, vec2<i32>(2147483647i, 7856i) | _wgslsmith_mod_vec2_i32(vec2<i32>(arg_3.x, 36047i), vec2<i32>(arg_3.x, -74547i))), -global1.d, u_input.d));
}

fn func_1(arg_0: vec3<f32>) -> bool {
    global0 = true;
    var var_0 = func_5(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_2(all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c)), Struct_4(vec4<bool>(true, true, true, true), ~vec2<u32>(global1.b, global1.b)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.yz) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(arg_0.zz, arg_0.yy))))))), -47763i, Struct_4(select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(select(false, true, false), true, true, false), all(vec4<bool>(false, true, true, true)) | (u_input.a <= u_input.c.x)), _wgslsmith_mult_vec2_u32(~firstTrailingBit(vec2<u32>(58560u, global1.b)), ~(~vec2<u32>(global1.b, global1.b)))), vec4<i32>(-_wgslsmith_dot_vec3_i32(global1.a.wyz, u_input.b), _wgslsmith_sub_i32(-reverseBits(global1.a.x), 1i), _wgslsmith_div_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.c.x, 0i), vec3<i32>(u_input.b.x, -1i, -8027i)), ~u_input.c.x), -1i));
    var_0 = Struct_1(_wgslsmith_clamp_vec4_i32(func_5(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(85104u, ~1u, var_0.b), 15u)], ~(~40961i), Struct_4(vec4<bool>(true, true, true, true), ~vec2<u32>(4294967295u, global1.b)), u_input.c).a, ~min(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.a.x, 2147483647i, u_input.a, var_0.d.x), u_input.c), ~global1.a), countOneBits(min(vec4<i32>(var_0.d.x, 31091i, global1.a.x, global1.d.x), global1.a))), _wgslsmith_clamp_u32(global1.b, 24192u, ~select(0u, var_0.b & global1.b, select(true, true, false))), _wgslsmith_f_op_f32(floor(540f)), vec2<i32>(-(~2147483647i), _wgslsmith_sub_i32(abs(_wgslsmith_mod_i32(u_input.b.x, 1i)), -60669i)));
    global4 = abs(-31527i);
    var var_1 = u_input.b.x;
    return any(!vec3<bool>(global1.a.x >= -1i, var_0.c >= _wgslsmith_f_op_f32(f32(-1f) * -884f), (17305u & global1.b) > ~39065u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-648f, 1f, -207f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * vec3<f32>(global1.c, -608f, global1.c))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.c, -1048f, 1000f), vec3<f32>(global1.c, -1553f, -139f))) * vec3<f32>(-393f, _wgslsmith_f_op_f32(max(-1429f, global1.c)), _wgslsmith_f_op_f32(sign(global1.c))))));
    var var_1 = _wgslsmith_f_op_f32(exp2(global1.c));
    let var_2 = Struct_4(!(!vec4<bool>(var_0, !var_0, true, var_0 & var_0)), abs(min(~vec2<u32>(39447u, 66658u), _wgslsmith_mod_vec2_u32(vec2<u32>(global1.b, 4795u), vec2<u32>(1u, global1.b))) << ((vec2<u32>(global1.b, global1.b) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 11017u), vec2<u32>(global1.b, global1.b))) % vec2<u32>(32u))));
    let var_3 = 483f;
    global0 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(834f - global1.c) - -1082f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(825f, _wgslsmith_f_op_f32(round(500f)))) * _wgslsmith_div_f32(var_3, _wgslsmith_f_op_f32(-1356f + -1887f)))), global1.d, global1.a, ~90425u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, -1590f, -867f, global1.c) * vec4<f32>(global1.c, -1367f, 256f, global1.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c, -639f, global1.c, -271f)), select(vec4<bool>(var_0, var_0, var_2.a.x, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false)))) * vec4<f32>(-443f, _wgslsmith_f_op_f32(ceil(var_3)), _wgslsmith_f_op_f32(-global1.c), -1411f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.c, -142f, -198f, global1.c))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, -1251f, global1.c, 1000f) + vec4<f32>(1783f, 274f, var_3, -1136f))) + vec4<f32>(global1.c, _wgslsmith_f_op_f32(sign(var_3)), _wgslsmith_f_op_f32(f32(-1f) * -1250f), _wgslsmith_f_op_f32(var_3 * -278f)))));
}

