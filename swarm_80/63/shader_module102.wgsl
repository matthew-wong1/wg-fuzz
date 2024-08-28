struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 14> = array<vec3<f32>, 14>(vec3<f32>(1000f, -1568f, -588f), vec3<f32>(1004f, -1000f, -1491f), vec3<f32>(1960f, 563f, -300f), vec3<f32>(-213f, -354f, -2403f), vec3<f32>(-859f, -2492f, -677f), vec3<f32>(-1376f, -178f, 928f), vec3<f32>(-1238f, 1000f, -1630f), vec3<f32>(-430f, 572f, -562f), vec3<f32>(-842f, 1223f, -1000f), vec3<f32>(285f, -1123f, 787f), vec3<f32>(1901f, 164f, 242f), vec3<f32>(496f, -1543f, 1033f), vec3<f32>(-374f, -656f, -559f), vec3<f32>(265f, 388f, 1198f));

var<private> global1: array<vec2<f32>, 26>;

var<private> global2: vec4<u32> = vec4<u32>(0u, 46723u, 55600u, 86276u);

var<private> global3: array<vec3<u32>, 30>;

var<private> global4: vec4<bool>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec4<i32> {
    var var_0 = arg_1.c.xy;
    var var_1 = -623f;
    var var_2 = arg_1.a;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(u_input.b, 26u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(1u, 26u)] - vec2<f32>(2787f, arg_1.d)))))) + _wgslsmith_f_op_vec2_f32(round(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c.x, 66792u, arg_0), vec3<u32>(u_input.b, firstTrailingBit(global2.x), u_input.c.x >> (u_input.c.x % 32u))), 26u)])));
    var var_4 = false;
    return ~_wgslsmith_sub_vec4_i32((vec4<i32>(u_input.a.x, 2147483647i, -68043i, 19690i) << (~vec4<u32>(56502u, 0u, u_input.c.x, 0u) % vec4<u32>(32u))) ^ (vec4<i32>(-1i) * -vec4<i32>(26797i, u_input.a.x, 2147483647i, -2147483647i)), ~min(vec4<i32>(u_input.a.x, -47457i, 0i, 2048i), vec4<i32>(u_input.a.x, -2147483647i, -16048i, u_input.a.x)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1040f)));
    var var_1 = vec4<u32>(u_input.b, _wgslsmith_dot_vec4_u32(select(vec4<u32>(_wgslsmith_div_u32(u_input.c.x, 1u), 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(101123u, u_input.b), vec2<u32>(66564u, 4294967295u)), firstLeadingBit(27025u)), max(vec4<u32>(100347u, u_input.b, u_input.b, 8246u) & vec4<u32>(1u, 0u, 8828u, 21644u), vec4<u32>(4294967295u, 62797u, u_input.b, 30409u)), select(!vec4<bool>(false, true, false, global4.x), !vec4<bool>(global4.x, global4.x, global4.x, global4.x), global4.x)), firstTrailingBit(~vec4<u32>(global2.x, 4294967295u, u_input.c.x, global2.x)) | (firstTrailingBit(vec4<u32>(global2.x, 12613u, 1u, global2.x)) | countOneBits(vec4<u32>(45728u, global2.x, 4141u, global2.x)))), 4294967295u, ~(~(~4294967295u)));
    let var_2 = Struct_3(u_input.a.x);
    var var_3 = global4.x;
    var var_4 = Struct_2(_wgslsmith_dot_vec2_u32(~u_input.c, _wgslsmith_mod_vec2_u32(vec2<u32>(0u, var_1.x << (global2.x % 32u)), ~countOneBits(vec2<u32>(u_input.c.x, global2.x)))), _wgslsmith_f_op_f32(min(-1702f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0 - var_0), var_0)))), Struct_1(!(!global4.xz), global4.x, select(!select(vec4<bool>(global4.x, true, global4.x, true), vec4<bool>(global4.x, global4.x, global4.x, global4.x), vec4<bool>(global4.x, global4.x, true, global4.x)), select(!vec4<bool>(global4.x, global4.x, global4.x, global4.x), !vec4<bool>(false, global4.x, true, global4.x), vec4<bool>(global4.x, global4.x, true, false)), vec4<bool>(true, !global4.x, true, true)), var_0), arg_0.wz);
    return select(select(select(vec3<bool>(global4.x & false, !global4.x, !global4.x), vec3<bool>(global4.x, true, !global4.x), global4.x), select(var_4.c.c.yxx, vec3<bool>(false, u_input.a.x > var_4.d.x, true), vec3<bool>(var_4.c.a.x, any(vec4<bool>(var_4.c.b, false, var_4.c.b, var_4.c.c.x)), any(vec3<bool>(var_4.c.c.x, global4.x, global4.x)))), !global4.xxy), vec3<bool>(false, true, global4.x), global4.zxy);
}

fn func_2() -> Struct_1 {
    global1 = array<vec2<f32>, 26>();
    let var_0 = _wgslsmith_f_op_f32(1174f - 283f);
    let var_1 = Struct_3(u_input.a.x);
    let var_2 = func_4(~abs(_wgslsmith_add_vec4_i32(func_3(u_input.b, Struct_1(vec2<bool>(global4.x, false), true, vec4<bool>(false, false, global4.x, global4.x), var_0)), vec4<i32>(var_1.a, -2147483647i, 1i, 2147483647i))), Struct_3(-461i));
    global2 = vec4<u32>(4294967295u, firstLeadingBit(firstTrailingBit(_wgslsmith_div_u32(~0u, _wgslsmith_clamp_u32(global2.x, u_input.c.x, global2.x)))), 4294967295u, global2.x);
    return Struct_1(!func_4(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, var_1.a, -1i, u_input.a.x), vec4<i32>(var_1.a, var_1.a, var_1.a, 1i))), var_1).zy, global4.x, vec4<bool>((!var_2.x & any(vec4<bool>(true, true, var_2.x, true))) && true, false, true, false || !(u_input.a.x <= var_1.a)), _wgslsmith_f_op_f32(select(1344f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1437f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1006f + -645f))), false)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(~20532u, _wgslsmith_f_op_f32(-414f + arg_3.d), arg_3, func_3(abs(global2.x), func_2()).xy >> (u_input.c % vec2<u32>(32u)));
    var var_1 = 302f;
    global2 = ~_wgslsmith_add_vec4_u32(~(~vec4<u32>(4294967295u, global2.x, 1u, 53520u)), vec4<u32>(0u, _wgslsmith_add_u32(4294967295u, ~global2.x), firstLeadingBit(global2.x) ^ global2.x, 92572u & max(0u, var_0.a)));
    global4 = select(vec4<bool>(arg_1.c.x, global4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2)) * _wgslsmith_f_op_f32(floor(var_0.b))) < arg_0.b, false & !var_0.c.a.x), arg_0.c.c, arg_0.c.c);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(308f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d))))), arg_3.d);
    return Struct_1(func_2().a, false, vec4<bool>(arg_1.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.d - -1195f))) == 1000f, true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-190f + -1179f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(round(692f)))) - _wgslsmith_f_op_f32(1278f - _wgslsmith_f_op_f32(801f - var_0.c.d)))));
}

fn func_1(arg_0: vec4<i32>) -> bool {
    let var_0 = Struct_2(u_input.b, _wgslsmith_f_op_f32(933f + _wgslsmith_f_op_f32(f32(-1f) * -673f)), func_5(Struct_2(18203u, -1078f, func_2(), _wgslsmith_sub_vec2_i32(u_input.a, _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, -10260i), vec2<i32>(22504i, -22269i)))), Struct_1(global4.xy, any(vec3<bool>(true, true, true)), func_2().c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(549f, -483f) * _wgslsmith_div_f32(-1031f, 224f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1314f, -1000f)))), func_2()), vec2<i32>(_wgslsmith_clamp_i32(2147483647i, _wgslsmith_add_i32(-u_input.a.x, u_input.a.x), 46862i), i32(-1i) * -func_3(u_input.b, Struct_1(vec2<bool>(false, global4.x), true, vec4<bool>(global4.x, true, true, global4.x), 258f)).x));
    global0 = array<vec3<f32>, 14>();
    var var_1 = Struct_2(firstLeadingBit(~_wgslsmith_mult_u32(global2.x, 0u)) & ((firstTrailingBit(var_0.a) >> (_wgslsmith_mult_u32(global2.x, 28441u) % 32u)) & u_input.b), var_0.c.d, Struct_1(func_2().a, !(_wgslsmith_dot_vec4_i32(vec4<i32>(32519i, u_input.a.x, -17971i, -35655i), vec4<i32>(34337i, u_input.a.x, -1i, u_input.a.x)) < 0i), select(select(vec4<bool>(true, true, true, true), var_0.c.c, !var_0.c.c), !vec4<bool>(false, false, var_0.c.a.x, true), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c.d, var_0.b) - 1434f))), vec2<i32>(u_input.a.x, arg_0.x));
    global2 = ~(~(~vec4<u32>(~var_1.a, 28386u, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, var_1.a, var_0.a, global2.x), vec4<u32>(5654u, var_0.a, 24871u, 19630u)), 1u)));
    let var_2 = vec2<i32>(0i ^ abs(firstTrailingBit(1i) >> (~0u % 32u)), _wgslsmith_mod_i32(~(~u_input.a.x), -(~(10295i & u_input.a.x))));
    return countOneBits(0u) == ~_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(4294967295u, 12931u), var_1.a >> (global2.x % 32u)), min(vec2<u32>(108215u, u_input.b) >> (vec2<u32>(var_1.a, var_1.a) % vec2<u32>(32u)), vec2<u32>(var_1.a, var_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = select(vec4<bool>(!func_1(firstLeadingBit(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), true, !(func_3(u_input.b, Struct_1(global4.yz, global4.x, vec4<bool>(global4.x, true, false, global4.x), -956f)).x > 6304i), _wgslsmith_mod_i32(min(1i, u_input.a.x), u_input.a.x | -1i) <= ~_wgslsmith_add_i32(0i, -15071i)), vec4<bool>(!all(global4.yz), global4.x, false, global4.x), true);
    global3 = array<vec3<u32>, 30>();
    var var_0 = Struct_3(_wgslsmith_dot_vec4_i32(~firstLeadingBit(vec4<i32>(-1i, u_input.a.x, -2147483647i, u_input.a.x)), vec4<i32>(~1i, u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-10111i, 0i, 0i), -vec3<i32>(u_input.a.x, -30066i, 1098i)), _wgslsmith_sub_i32(u_input.a.x << (global2.x % 32u), u_input.a.x))));
    let var_1 = Struct_2(~(~22457u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1526f, 458f) + 155f))), Struct_1(vec2<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, global2.x, global2.x), vec3<u32>(44044u, u_input.c.x, 73594u)) < global2.x, func_4(-vec4<i32>(35232i, 1i, 1i, u_input.a.x), Struct_3(var_0.a)).x), global4.x, func_2().c, -276f), vec2<i32>(2338i, u_input.a.x));
    let var_2 = Struct_3(var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(select(min(~vec4<u32>(1u, global2.x, 4294967295u, var_1.a), vec4<u32>(var_1.a, 4294967295u, var_1.a, 1u) & vec4<u32>(5112u, 1u, 0u, 1u)) << (vec4<u32>(var_1.a & 4294967295u, _wgslsmith_add_u32(1u, var_1.a), 41515u, u_input.c.x) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(abs(31283u), 37165u, _wgslsmith_div_u32(u_input.c.x, 33106u), ~19149u), ~(~vec4<u32>(1u, u_input.b, u_input.b, 0u))), true), global1[_wgslsmith_index_u32(var_1.a, 26u)], u_input.a.x, -_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-29515i, var_1.d.x), vec2<i32>(1i, 54039i)), vec2<i32>(-7883i, u_input.a.x)) & min(vec2<i32>(firstTrailingBit(0i), var_2.a), vec2<i32>(-1i, func_3(u_input.c.x, var_1.c).x)));
}

