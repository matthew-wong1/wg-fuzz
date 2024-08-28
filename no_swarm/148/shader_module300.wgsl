struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: vec4<bool>,
    d: vec2<bool>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(100f, vec4<f32>(-622f, 967f, -991f, 446f), 1558f, true, -1i), Struct_1(-775f, vec4<f32>(-454f, -1000f, -449f, 303f), 418f, true, -31605i), Struct_1(-1133f, vec4<f32>(224f, 183f, -933f, -761f), 512f, false, 0i), Struct_1(1000f, vec4<f32>(-1000f, -779f, -1255f, 568f), 887f, false, i32(-2147483648)), Struct_1(293f, vec4<f32>(1381f, 1059f, -411f, 780f), 1000f, false, -1i), Struct_1(-3579f, vec4<f32>(-3915f, -1179f, 194f, 924f), 906f, false, -1i), Struct_1(3413f, vec4<f32>(-933f, 125f, 860f, -1758f), -1024f, false, 1i), Struct_1(1217f, vec4<f32>(-1345f, 216f, -1000f, -1511f), -1000f, true, -9016i), Struct_1(197f, vec4<f32>(-380f, -982f, -1273f, 240f), 691f, true, -1i), Struct_1(752f, vec4<f32>(585f, -726f, -191f, -1158f), -225f, false, i32(-2147483648)), Struct_1(-752f, vec4<f32>(-670f, 969f, 1229f, 684f), -211f, false, 6962i), Struct_1(-452f, vec4<f32>(-1219f, 681f, -225f, -1287f), -910f, true, i32(-2147483648)), Struct_1(582f, vec4<f32>(1000f, 713f, -1179f, 1121f), 1000f, true, 2147483647i), Struct_1(504f, vec4<f32>(742f, 658f, 367f, -1330f), 382f, false, 1i), Struct_1(1336f, vec4<f32>(-637f, -329f, 2798f, -124f), -352f, false, 1i), Struct_1(-642f, vec4<f32>(183f, -1199f, -805f, 395f), -939f, true, i32(-2147483648)), Struct_1(1000f, vec4<f32>(-281f, 648f, -229f, 963f), -1290f, false, -29534i), Struct_1(147f, vec4<f32>(421f, 1458f, 1544f, 994f), -396f, true, 39859i), Struct_1(2997f, vec4<f32>(395f, -1000f, 1000f, 1090f), -383f, true, 2147483647i));

var<private> global1: array<vec2<bool>, 24>;

var<private> global2: i32 = 42119i;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec4<bool> {
    var var_0 = u_input.b;
    let var_1 = Struct_2(1212f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-583f, 236f)))) * vec2<f32>(1459f, _wgslsmith_f_op_f32(f32(-1f) * -788f)))), vec4<bool>(!all(vec4<bool>(true, false, false, false)), true, !all(vec4<bool>(true, true, true, true)), all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true))), vec2<bool>(all(vec3<bool>(u_input.a.x > var_0.x, select(true, false, false), true)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1794f + _wgslsmith_f_op_f32(-1224f * -1000f)), _wgslsmith_f_op_f32(105f + _wgslsmith_f_op_f32(358f - -1000f))))));
    var var_2 = ~4294967295u;
    var_2 = ~firstLeadingBit(~30673u);
    return vec4<bool>(!all(vec3<bool>(true, true, true)), !all(select(select(vec3<bool>(false, true, var_1.d.x), var_1.c.zwz, var_1.c.x), var_1.c.yxy, var_1.c.zxy)), select(any(vec3<bool>(false, false, true)), any(select(vec2<bool>(var_1.c.x, true), vec2<bool>(var_1.c.x, var_1.c.x), false)), all(!vec3<bool>(var_1.c.x, var_1.c.x, false))) || var_1.d.x, any(global1[_wgslsmith_index_u32(1u, 24u)]));
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: u32) -> Struct_1 {
    var var_0 = select(_wgslsmith_add_vec2_u32(~(max(vec2<u32>(arg_1, 15053u), vec2<u32>(0u, arg_1)) << (vec2<u32>(arg_1, 0u) % vec2<u32>(32u))), ~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, arg_1), vec2<u32>(arg_1, arg_1)) & vec2<u32>(~arg_1, 1u)), vec2<u32>(_wgslsmith_sub_u32(1021u, 1u), arg_2), false & arg_0.d.x);
    global0 = array<Struct_1, 19>();
    global1 = array<vec2<bool>, 24>();
    let var_1 = select(select(!select(arg_0.c, arg_0.c, true), func_3(), arg_0.d.x), !(!arg_0.c), select(false, false, abs(reverseBits(arg_2)) == 31302u));
    var var_2 = firstLeadingBit(countOneBits(u_input.a.x));
    return global0[_wgslsmith_index_u32(var_0.x, 19u)];
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> Struct_2 {
    var var_0 = abs(u_input.b.wz);
    var_0 = vec2<i32>(-36201i, -31569i);
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-636f))))))));
    let var_2 = _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(~select(vec3<u32>(1u, 1u, 1u), vec3<u32>(1905u, 4294967295u, 76545u), select(vec3<bool>(arg_1.d, arg_1.d, true), vec3<bool>(arg_1.d, false, arg_1.d), vec3<bool>(false, arg_1.d, true))), vec3<u32>(4294967295u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(22812u, 21049u, 96524u), vec3<u32>(14616u, 1u, 14565u)), reverseBits(66098u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(25405u, 42814u, 33415u, 1u), vec4<u32>(6504u, 29834u, 14679u, 1u)))), ~(~_wgslsmith_div_vec3_u32(vec3<u32>(0u, 18644u, 12060u), max(vec3<u32>(3850u, 4294967295u, 4390u), vec3<u32>(70238u, 1u, 29238u)))));
    let var_3 = all(select(vec4<bool>(arg_1.d, all(func_3().xx), arg_1.d, arg_1.d), func_3(), vec4<bool>(func_3().x, any(vec4<bool>(false, arg_1.d, arg_1.d, false)), !arg_1.d, true)));
    return Struct_2(func_2(Struct_2(625f, vec2<f32>(_wgslsmith_div_f32(arg_1.c, arg_1.c), _wgslsmith_f_op_f32(exp2(var_1))), !func_3(), select(!global1[_wgslsmith_index_u32(var_2.x, 24u)], select(global1[_wgslsmith_index_u32(var_2.x, 24u)], global1[_wgslsmith_index_u32(var_2.x, 24u)], vec2<bool>(false, true)), arg_1.c >= 416f), _wgslsmith_f_op_f32(abs(209f))), ~22652u, _wgslsmith_add_u32(var_2.x, 1u)).c, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(arg_1.b.yy)))), vec4<bool>(all(!vec4<bool>(arg_1.d, false, false, var_3)), true, var_3, var_3), vec2<bool>(any(!vec2<bool>(var_3, arg_1.d)), !var_3), 610f);
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: bool, arg_3: f32) -> u32 {
    var var_0 = min(_wgslsmith_clamp_i32(_wgslsmith_add_i32(~21770i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -36978i, 44925i), ~vec3<i32>(-2147483647i, u_input.a.x, u_input.b.x))), u_input.b.x, ~(u_input.a.x | 0i) & u_input.b.x), -func_2(func_4(_wgslsmith_f_op_f32(round(arg_1.b.x)), func_2(arg_1, 4294967295u, 55161u)), arg_0, ~_wgslsmith_clamp_u32(0u, 1u, 17595u)).e);
    var var_1 = 17052i;
    var var_2 = _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(~(~5384i), u_input.a.x, 1i)), u_input.b.yyy);
    var var_3 = 239f;
    let var_4 = true;
    return arg_0;
}

fn func_1() -> i32 {
    var var_0 = func_5(1u, func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(1f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -927f) - _wgslsmith_f_op_f32(f32(-1f) * -1268f))), func_2(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -997f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(405f, 998f))), vec4<bool>(true, true, true, true), !global1[_wgslsmith_index_u32(77329u, 24u)], 663f), 1u, 32448u)), true, -1000f);
    let var_1 = vec3<f32>(1084f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(363f - 491f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1078f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(434f)), 1000f)))));
    var var_2 = var_1.x;
    global2 = (firstLeadingBit(-28113i) | u_input.a.x) ^ _wgslsmith_div_i32(_wgslsmith_mod_i32(2147483647i << (0u % 32u), reverseBits(2147483647i)) & u_input.a.x, ~_wgslsmith_div_i32(~u_input.a.x, -2147483647i));
    let var_3 = func_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -956f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -704f))))), Struct_1(756f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, -172f, -377f, 800f), vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(291f, var_1.x, var_1.x, 1169f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-431f, -180f, 158f, 571f)))), _wgslsmith_f_op_f32(round(1763f)), func_4(var_1.x, func_2(Struct_2(1272f, vec2<f32>(1381f, var_1.x), vec4<bool>(false, true, true, false), global1[_wgslsmith_index_u32(29432u, 24u)], 1043f), _wgslsmith_mult_u32(11197u, 21883u), ~14868u)).c.x, -29288i));
    return _wgslsmith_div_i32(14783i, u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(1i, _wgslsmith_div_i32(countOneBits(-13049i), u_input.b.x)), vec3<f32>(1f, 1f, 1f), 4294967295u, countOneBits(vec2<i32>(~(-1i), func_1())));
}

