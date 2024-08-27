struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: f32,
    e: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: Struct_4,
    d: Struct_4,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 6>;

var<private> global1: array<vec3<f32>, 27> = array<vec3<f32>, 27>(vec3<f32>(969f, -700f, 713f), vec3<f32>(125f, 958f, -953f), vec3<f32>(1070f, -1507f, -1843f), vec3<f32>(-1801f, -646f, -444f), vec3<f32>(316f, 388f, 105f), vec3<f32>(-671f, 1451f, 1000f), vec3<f32>(-473f, 380f, 516f), vec3<f32>(620f, -1722f, -115f), vec3<f32>(-143f, 1426f, -524f), vec3<f32>(475f, -793f, -664f), vec3<f32>(508f, 1000f, -967f), vec3<f32>(-980f, 1000f, -977f), vec3<f32>(1000f, 606f, -276f), vec3<f32>(-409f, -1275f, -1340f), vec3<f32>(1264f, 316f, 1000f), vec3<f32>(-1000f, -1124f, -925f), vec3<f32>(477f, -779f, 645f), vec3<f32>(-479f, -695f, -764f), vec3<f32>(1404f, 806f, -573f), vec3<f32>(-1000f, 1679f, -2680f), vec3<f32>(-1305f, -195f, 957f), vec3<f32>(1000f, 1592f, -1000f), vec3<f32>(-435f, 1281f, 2212f), vec3<f32>(-363f, -624f, -1076f), vec3<f32>(712f, -932f, -624f), vec3<f32>(897f, 410f, 1392f), vec3<f32>(631f, 888f, -1000f));

var<private> global2: bool;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: u32) -> i32 {
    var var_0 = true;
    var var_1 = 979f;
    var var_2 = Struct_4(Struct_2(Struct_1(~select(u_input.a, u_input.a, true), (u_input.d >> (vec4<u32>(u_input.c, arg_0, u_input.c, 1u) % vec4<u32>(32u))) >> (vec4<u32>(arg_0, 0u, 29839u, u_input.b.x) % vec4<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(min(1269f, 1220f)), _wgslsmith_f_op_f32(-2076f + -946f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(u_input.c, 27u)]))), all(vec4<bool>(true, true, true, true)))), Struct_2(Struct_1(-2147483647i >> (_wgslsmith_dot_vec3_u32(vec3<u32>(9177u, u_input.c, u_input.c), u_input.b) % 32u), vec4<u32>(~u_input.b.x, ~u_input.c, ~29966u, _wgslsmith_dot_vec3_u32(u_input.d.wzw, vec3<u32>(0u, 4294967295u, arg_0))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1080f, 1546f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1411f, -1000f, -1000f))), true)));
    global2 = true;
    var_0 = var_2.a.a.e;
    return abs(_wgslsmith_mod_i32(firstLeadingBit(u_input.a), ~(_wgslsmith_mod_i32(var_2.a.a.a, u_input.a) ^ ~0i)));
}

fn func_2() -> i32 {
    var var_0 = Struct_5(func_3(firstLeadingBit(u_input.d.x ^ u_input.d.x)), Struct_1(-19623i, _wgslsmith_add_vec4_u32(u_input.d, vec4<u32>(max(u_input.c, 53294u), ~u_input.b.x, ~u_input.d.x, u_input.b.x)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(564f, 636f), vec2<f32>(147f, 542f), true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(745f, 1200f) + vec2<f32>(-951f, -604f)))))), global1[_wgslsmith_index_u32(max(min(u_input.c ^ 4294967295u, ~4294967295u), u_input.c), 27u)], any(vec2<bool>(false, true)) != true), Struct_4(Struct_2(Struct_1(u_input.a << (u_input.d.x % 32u), ~vec4<u32>(u_input.b.x, 1u, u_input.b.x, 4294967295u), vec2<f32>(-437f, 759f), global1[_wgslsmith_index_u32(~40579u, 27u)], true)), Struct_2(Struct_1(~u_input.a, vec4<u32>(42545u, 35969u, 66216u, u_input.b.x) << (vec4<u32>(0u, u_input.d.x, 1u, 128117u) % vec4<u32>(32u)), vec2<f32>(608f, -607f), _wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 27u)]), u_input.c >= u_input.c))), Struct_4(Struct_2(Struct_1(abs(u_input.a), countOneBits(u_input.d), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-764f, 1313f)), vec3<f32>(-1765f, 1008f, -1000f), all(vec4<bool>(false, false, true, false)))), Struct_2(Struct_1(abs(2147483647i), u_input.d, _wgslsmith_f_op_vec2_f32(vec2<f32>(1251f, 838f) * vec2<f32>(-1191f, -160f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-746f, 578f, 721f)), true))), abs(1u << (((u_input.c & u_input.c) | _wgslsmith_add_u32(26827u, 31216u)) % 32u)));
    var var_1 = var_0.d.b.a.c.x;
    var_0 = Struct_5(-u_input.a, var_0.c.a.a, Struct_4(Struct_2(Struct_1(u_input.a, vec4<u32>(var_0.e, u_input.b.x, var_0.d.b.a.b.x, 1u) | var_0.c.b.a.b, vec2<f32>(var_0.b.d.x, 1200f), vec3<f32>(var_0.b.d.x, -1054f, var_0.b.d.x), u_input.a >= u_input.a)), var_0.d.a), var_0.d, var_0.e);
    global0 = array<vec4<u32>, 6>();
    var var_2 = !vec2<bool>(select(all(vec4<bool>(var_0.d.a.a.e, var_0.d.b.a.e, var_0.c.a.a.e, var_0.d.b.a.e)), true, var_0.c.b.a.e) || (var_0.c.b.a.e | var_0.b.e), !var_0.b.e);
    return -2147483647i;
}

fn func_1(arg_0: f32) -> vec2<f32> {
    var var_0 = ~vec4<i32>(1i ^ ~(u_input.a | u_input.a), _wgslsmith_clamp_i32(func_2(), 1i, max(-u_input.a, u_input.a)), (i32(-1i) * -1i) << (1u % 32u), -1i);
    var var_1 = Struct_5(-(~firstTrailingBit(_wgslsmith_clamp_i32(var_0.x, -796i, u_input.a))), Struct_1(func_2(), vec4<u32>(16782u, _wgslsmith_sub_u32(abs(u_input.b.x), 34154u), u_input.d.x, ~u_input.b.x), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(arg_0 + 232f), _wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(1u, 27u)] - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, -725f, -443f) * global1[_wgslsmith_index_u32(u_input.d.x, 27u)]))), !(_wgslsmith_f_op_f32(1000f * arg_0) >= arg_0)), Struct_4(Struct_2(Struct_1(~u_input.a, _wgslsmith_mult_vec4_u32(vec4<u32>(47203u, 32457u, u_input.c, u_input.c), global0[_wgslsmith_index_u32(4294967295u, 6u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2033f, 1000f) - vec2<f32>(601f, -1069f)), vec3<f32>(1349f, -185f, -639f), true)), Struct_2(Struct_1(_wgslsmith_mod_i32(-2147483647i, u_input.a), u_input.d, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, arg_0), vec2<f32>(arg_0, -706f), vec2<bool>(false, true))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, arg_0, arg_0), vec3<f32>(arg_0, arg_0, 2768f))), true))), Struct_4(Struct_2(Struct_1(-var_0.x, vec4<u32>(u_input.b.x, 44159u, u_input.d.x, u_input.d.x), _wgslsmith_div_vec2_f32(vec2<f32>(834f, arg_0), vec2<f32>(593f, 982f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(930f, -525f, arg_0)), true)), Struct_2(Struct_1(_wgslsmith_sub_i32(-30725i, var_0.x), reverseBits(vec4<u32>(u_input.c, 4294967295u, 71458u, 0u)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0, 879f))), _wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(4294967295u, 27u)]), all(vec3<bool>(true, false, true))))), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~u_input.b.x), vec2<u32>(0u, 49918u)));
    var var_2 = ((_wgslsmith_add_vec3_u32(u_input.b, ~var_1.b.b.xxw) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(1u, var_1.d.a.a.b.x, u_input.b.x), _wgslsmith_sub_vec3_u32(var_1.c.b.a.b.ywy, u_input.b)) % vec3<u32>(32u))) ^ ~_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.c, u_input.d.x, 24473u), firstTrailingBit(u_input.d.wzw))) ^ firstLeadingBit(vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(var_1.c.b.a.b.yw, vec2<u32>(1u, 24682u)), var_1.d.b.a.b.x), 0u, 135908u));
    global0 = array<vec4<u32>, 6>();
    let var_3 = var_1.b.d.x;
    return var_1.b.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(Struct_2(Struct_1(firstTrailingBit(i32(-1i) * -2147483647i), u_input.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(-1000f))), _wgslsmith_f_op_vec3_f32(step(global1[_wgslsmith_index_u32(38139u, 27u)], _wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(14507u, 27u)]))), any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false))))), Struct_2(Struct_1(u_input.a, u_input.d, _wgslsmith_f_op_vec2_f32(vec2<f32>(351f, 878f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(572f, -186f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1908f, -387f, 1162f)))), true)));
    global0 = array<vec4<u32>, 6>();
    global2 = true;
    let var_1 = _wgslsmith_div_f32(1f, var_0.a.a.d.x);
    let var_2 = 4294967295u;
    let var_3 = Struct_4(var_0.a, var_0.a);
    global1 = array<vec3<f32>, 27>();
    var var_4 = ~u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(16164u);
}

