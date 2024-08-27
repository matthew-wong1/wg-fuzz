struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 22> = array<vec4<f32>, 22>(vec4<f32>(-1335f, 1236f, 872f, -933f), vec4<f32>(-1135f, 592f, 1000f, 577f), vec4<f32>(-1656f, -475f, -1000f, -792f), vec4<f32>(-964f, 801f, 1000f, -1062f), vec4<f32>(814f, -295f, 100f, -321f), vec4<f32>(-1522f, -1000f, 1000f, -867f), vec4<f32>(-785f, 1594f, 634f, 1245f), vec4<f32>(1036f, 427f, 1050f, 732f), vec4<f32>(2730f, -1052f, 208f, 1000f), vec4<f32>(-728f, -980f, -517f, -1430f), vec4<f32>(1522f, 249f, -258f, -947f), vec4<f32>(-305f, -810f, 1000f, -435f), vec4<f32>(955f, -376f, 1000f, -380f), vec4<f32>(1462f, -601f, 636f, 111f), vec4<f32>(2366f, -398f, -1000f, 1135f), vec4<f32>(-1000f, 1415f, -1865f, -202f), vec4<f32>(111f, 838f, 881f, 1612f), vec4<f32>(-1525f, 371f, -326f, 112f), vec4<f32>(-893f, -988f, 311f, 1462f), vec4<f32>(-455f, -570f, 1690f, -1167f), vec4<f32>(592f, 1559f, -1000f, -1000f), vec4<f32>(-1881f, 176f, -642f, 1129f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = array<vec4<f32>, 22>();
    global0 = array<vec4<f32>, 22>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1114f, _wgslsmith_f_op_f32(-625f * _wgslsmith_div_f32(820f, 789f)))));
    global0 = array<vec4<f32>, 22>();
    let var_1 = Struct_1(33081i);
    return Struct_1(arg_0.a);
}

fn func_1(arg_0: vec4<bool>, arg_1: f32, arg_2: vec4<u32>) -> Struct_1 {
    global0 = array<vec4<f32>, 22>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f - 735f), 457f))) - vec2<f32>(arg_1, arg_1)));
    global0 = array<vec4<f32>, 22>();
    global0 = array<vec4<f32>, 22>();
    let var_1 = arg_2.xw;
    return func_2(Struct_1(abs(select(_wgslsmith_div_i32(-6801i, u_input.b.x), -2147483647i, true))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<i32>) -> vec2<f32> {
    let var_0 = _wgslsmith_div_u32(~u_input.a, u_input.c);
    let var_1 = arg_0;
    global0 = array<vec4<f32>, 22>();
    var var_2 = Struct_2(arg_1.a);
    global0 = array<vec4<f32>, 22>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-448f, _wgslsmith_div_f32(var_2.a.x, 1205f)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.x, 143f))))) * vec2<f32>(_wgslsmith_f_op_f32(var_2.a.x * _wgslsmith_f_op_f32(sign(1660f))), _wgslsmith_f_op_f32(var_2.a.x + var_2.a.x))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x));
    global0 = array<vec4<f32>, 22>();
    global0 = array<vec4<f32>, 22>();
    let var_1 = any(select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(select(false, true, true), true)), vec2<bool>(true, true), ~_wgslsmith_div_u32(u_input.a, 4294967295u) < _wgslsmith_clamp_u32(~u_input.c, 38548u << (u_input.a % 32u), u_input.c ^ 49255u)));
    var var_2 = u_input.b.x;
    return _wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(666f - _wgslsmith_f_op_f32(max(1272f, _wgslsmith_f_op_f32(abs(var_0)))))));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: Struct_1) -> u32 {
    global0 = array<vec4<f32>, 22>();
    global0 = array<vec4<f32>, 22>();
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), true)), 1116f, vec4<u32>(4294967295u, 20897u, 0u, _wgslsmith_sub_u32(73791u, 1u)));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(848f, -158f), vec2<f32>(113f, -939f), false)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(140f, 1184f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(127f, 421f) + vec2<f32>(1461f, 197f)))))));
    var var_2 = 533f;
    let var_3 = func_5(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1633f, _wgslsmith_f_op_f32(f32(-1f) * -707f))), _wgslsmith_f_op_f32(func_4(Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1427f, 745f) + var_1.a)), func_1(vec4<bool>(true, false, true, false), _wgslsmith_f_op_f32(trunc(1591f)), countOneBits(vec4<u32>(5820u, 22501u, u_input.c, 1u))), _wgslsmith_f_op_vec2_f32(func_3(func_2(Struct_1(var_0.a)), Struct_2(vec2<f32>(-790f, var_1.a.x)), -u_input.b)))), _wgslsmith_f_op_f32(1000f + var_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.a.x)) + var_1.a.x))), vec2<i32>(reverseBits(~min(var_0.a, u_input.b.x)), ~(~var_0.a)), Struct_1(u_input.b.x));
    var var_4 = !all(!vec2<bool>(true, all(vec2<bool>(false, true))));
    var_4 = all(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true))), true), vec4<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true)), true | any(vec2<bool>(false, true)), any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false)), true), vec4<bool>(any(vec4<bool>(true, true, true, true)), any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true)), true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x - -290f)))), u_input.b, var_3, abs(select(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 38027u, 1u, var_3), vec4<u32>(66926u, u_input.a, u_input.c, 53545u)), _wgslsmith_add_vec4_u32(vec4<u32>(2233u, 4294967295u, u_input.a, 0u), vec4<u32>(var_3, 22353u, var_3, u_input.c)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true))) << (abs(vec4<u32>(var_3, u_input.c, var_3, u_input.a)) % vec4<u32>(32u))));
}

