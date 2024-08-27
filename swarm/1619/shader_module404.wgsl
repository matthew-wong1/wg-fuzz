struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 31>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_2) -> bool {
    let var_0 = ~(abs(0u) | arg_0);
    let var_1 = Struct_1(51958u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-1241f, -2086f)), _wgslsmith_div_f32(171f, _wgslsmith_f_op_f32(-546f + -245f))))));
    var var_2 = countOneBits(~4294967295u);
    var var_3 = var_1;
    let var_4 = Struct_2(vec4<bool>(arg_2.a.x, !(!arg_2.a.x), false, all(arg_2.a)));
    return true;
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    let var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-103f)), 1173f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1387f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -561f))), _wgslsmith_f_op_f32(max(-1000f, -1000f)))), _wgslsmith_f_op_f32(select(416f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1959f)), _wgslsmith_f_op_f32(f32(-1f) * -588f)), !func_3(1u, vec2<bool>(true, true), Struct_2(vec4<bool>(true, true, false, false))))));
    let var_1 = 1u;
    global0 = array<vec2<f32>, 31>();
    global0 = array<vec2<f32>, 31>();
    global0 = array<vec2<f32>, 31>();
    return Struct_2(vec4<bool>(all(vec4<bool>(true, true, true, false)), true || (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), u_input.c) > 1u), any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true))) && true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(var_0.x - var_0.x)) != -257f));
}

fn func_4(arg_0: Struct_2) -> bool {
    let var_0 = abs(select(vec4<i32>(i32(-1i) * -58061i, u_input.d, countOneBits(u_input.a.x), -36832i), -(~u_input.a), arg_0.a.x)) << (abs(_wgslsmith_mod_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.b, 1u, u_input.b), vec4<u32>(1u, 0u, 1u, u_input.c.x)), vec4<u32>(select(1u, u_input.c.x, arg_0.a.x), ~4294967295u, ~u_input.c.x, u_input.b & 27977u))) % vec4<u32>(32u));
    return (all(select(!vec3<bool>(true, arg_0.a.x, true), !arg_0.a.yxz, true)) == arg_0.a.x) | true;
}

fn func_1(arg_0: bool) -> vec3<bool> {
    global0 = array<vec2<f32>, 31>();
    global0 = array<vec2<f32>, 31>();
    let var_0 = arg_0 && !func_4(func_2(-vec3<i32>(u_input.d, u_input.a.x, u_input.d)));
    global0 = array<vec2<f32>, 31>();
    var var_1 = func_2(~u_input.a.zxy);
    return var_1.a.xwz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(~4294967295u, u_input.c.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u) ^ firstTrailingBit(vec3<u32>(u_input.b, 17736u, u_input.c.x)), ~(vec3<u32>(0u, u_input.b, u_input.c.x) >> (vec3<u32>(113289u, u_input.c.x, 6303u) % vec3<u32>(32u))))) < u_input.b;
    var var_2 = ~u_input.c;
    var var_3 = u_input.d;
    var_3 = 0i;
    global0 = array<vec2<f32>, 31>();
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(915f, 1326f)) * _wgslsmith_f_op_f32(931f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1176f + -1093f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(253f)) - _wgslsmith_f_op_f32(-2266f + -1788f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -406f), _wgslsmith_f_op_f32(select(1000f, 1452f, true)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1016f)), _wgslsmith_f_op_f32(-601f - 203f)) * 1167f)), 2047f);
    var var_5 = select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, all(vec3<bool>(false, true, true)))), vec2<bool>(all(select(func_1(false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_4.x + -167f))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.x) * var_4.x)), vec2<bool>(50518i >= ~u_input.d, true));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(-(~vec3<i32>(u_input.a.x, 2147483647i, 9251i)))), vec4<i32>(max(_wgslsmith_add_i32(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.d, 1i), u_input.a.yww)), _wgslsmith_clamp_i32(u_input.d, -1i, 2147483647i) | (u_input.d | -18456i)), -1i, -2147483647i, -2147483647i), vec3<i32>(~u_input.d, ~(-19400i), 1i), var_4.x, var_4.x);
}

