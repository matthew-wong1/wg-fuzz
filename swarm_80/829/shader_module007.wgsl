struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<vec4<f32>, 1> = array<vec4<f32>, 1>(vec4<f32>(1392f, -284f, 516f, 566f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = ~abs(vec3<u32>(arg_0.a.x, arg_0.a.x, abs(48320u))) | _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, abs(max(14851u, arg_0.a.x)), 108062u), ~(~vec3<u32>(u_input.b.x, 1u, 36395u)));
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1490f - -184f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1573f, -666f)), 1568f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-425f)))))), arg_0.b.x));
    global1 = array<vec4<f32>, 1>();
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-582f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-761f)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-729f + -869f) * -369f)) - 1f));
    let var_2 = _wgslsmith_mult_vec4_u32(arg_0.a, ~countOneBits(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(30820u, var_0.x, arg_0.a.x, 0u), arg_0.a, arg_0.b.x), arg_0.a, arg_0.a)));
    return !vec4<bool>(arg_0.b.x, arg_0.b.x, false, arg_0.b.x);
}

fn func_2() -> Struct_2 {
    let var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-515f + 917f), _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(round(1000f)))))));
    let var_2 = var_1.x;
    var var_3 = -45158i;
    global1 = array<vec4<f32>, 1>();
    return Struct_2(0u, u_input.d, Struct_1(abs((vec4<u32>(u_input.b.x, 2226u, 60600u, 13544u) ^ vec4<u32>(37362u, 14817u, u_input.b.x, u_input.b.x)) | ~vec4<u32>(0u, 1u, u_input.b.x, u_input.b.x)), select(vec4<bool>(true, true, -805f == var_1.x, true), !func_3(Struct_1(vec4<u32>(u_input.c.x, 0u, u_input.c.x, 20569u), vec4<bool>(false, true, true, true))), true)), -2147483647i, Struct_1(vec4<u32>(~(~u_input.c.x), 40883u, u_input.b.x, u_input.c.x), vec4<bool>(firstLeadingBit(49743u) > u_input.b.x, !(-1765f != var_2), true || func_3(Struct_1(vec4<u32>(4294967295u, 4294967295u, u_input.c.x, u_input.b.x), vec4<bool>(false, false, true, true))).x, true)));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: u32, arg_3: vec2<bool>) -> u32 {
    global1 = array<vec4<f32>, 1>();
    let var_0 = arg_1.c.a.wzy;
    let var_1 = arg_0.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -586f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, -739f)), arg_0.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, arg_0.x, arg_0.x, -472f) + _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(1u, 1u)])) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(global1[_wgslsmith_index_u32(62621u, 1u)]))))));
    var var_3 = func_2();
    return _wgslsmith_mod_u32(arg_2, _wgslsmith_mult_u32(1u, arg_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(148f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1447f) * -288f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, -1654f))))));
    global0 = 4294967295u << (((func_1(vec2<f32>(-638f, 2659f), Struct_2(u_input.c.x, 25714i, Struct_1(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.c.x), vec4<bool>(false, false, false, false)), u_input.d, Struct_1(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 10666u), vec4<bool>(false, true, true, false))), ~105504u, select(vec2<bool>(false, true), vec2<bool>(false, true), false)) & func_2().e.a.x) | u_input.b.x) % 32u);
    var var_1 = Struct_2(u_input.c.x, -(~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.e), vec2<i32>(u_input.e, -20331i)) | u_input.a), Struct_1(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, 1u, 4294967295u) >> (vec4<u32>(0u, 0u, u_input.b.x, 0u) % vec4<u32>(32u)), ~vec4<u32>(85058u, 0u, 30931u, 0u)), _wgslsmith_dot_vec2_u32(func_2().c.a.yy, _wgslsmith_add_vec2_u32(u_input.c, u_input.b)), _wgslsmith_clamp_u32(u_input.c.x, ~u_input.b.x, u_input.b.x), func_1(vec2<f32>(-1936f, 1079f), func_2(), 4294967295u, func_2().c.b.zz)), !vec4<bool>(true, func_2().c.b.x, true, any(vec3<bool>(false, false, true)))), _wgslsmith_add_i32(u_input.a, abs(abs(0i)) & ~(-u_input.e)), Struct_1(_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(u_input.c.x, u_input.b.x, u_input.b.x, 32221u)), vec4<u32>(u_input.b.x & u_input.c.x, ~u_input.c.x, countOneBits(1u), ~7968u)), func_2().c.b));
    var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-986f, -415f)) + -573f)), -1123f));
    global1 = array<vec4<f32>, 1>();
    var var_2 = _wgslsmith_add_u32(~u_input.b.x << (0u % 32u), _wgslsmith_sub_u32(u_input.c.x, ~var_1.e.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(firstLeadingBit(var_1.e.a.x ^ u_input.c.x), countOneBits(25146u), countOneBits(0u)) << (u_input.c.x % 32u), var_1.c.a.zz, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1876f, _wgslsmith_f_op_f32(select(-820f, -1086f, false))))));
}

