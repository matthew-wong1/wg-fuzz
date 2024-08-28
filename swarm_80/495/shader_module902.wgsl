struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: f32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    var var_0 = firstLeadingBit(-(~min(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(2147483647i, u_input.c.x))) | max(u_input.c.zy, reverseBits(firstTrailingBit(vec2<i32>(-1i, 61551i)))));
    let var_1 = Struct_1(22985u, min(0u & u_input.d, u_input.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) * _wgslsmith_f_op_f32(-1396f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-288f - -176f))))), _wgslsmith_f_op_f32(f32(-1f) * -252f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(467f, 919f, -1000f, -1371f) - vec4<f32>(700f, 574f, 644f, 686f)) * vec4<f32>(-257f, 643f, -719f, -211f))))));
    let var_2 = true && all(vec2<bool>(true, any(vec2<bool>(true, true))));
    let var_3 = u_input.b.zy;
    var var_4 = _wgslsmith_f_op_vec3_f32(-var_1.e.zyz);
    return _wgslsmith_sub_u32(~4294967295u, var_1.a) & u_input.b.x;
}

fn func_2(arg_0: vec4<u32>) -> u32 {
    var var_0 = -22869i;
    let var_1 = -28962i;
    var_0 = var_1;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-219f, -433f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-262f, 135f) * vec2<f32>(-2290f, 1418f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-751f, -1000f), vec2<f32>(-1421f, -278f), true))))));
    var var_3 = vec3<i32>(var_1, ~(var_1 << (arg_0.x % 32u)), _wgslsmith_add_i32(~var_1, ~_wgslsmith_clamp_i32(_wgslsmith_mod_i32(25479i, u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(u_input.c.x, -24467i)), var_1 | 0i)));
    return ~_wgslsmith_mult_u32(func_3(), u_input.b.x);
}

fn func_1(arg_0: i32) -> f32 {
    let var_0 = vec4<u32>(13710u, func_2(vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b), u_input.b.x, firstLeadingBit(u_input.d), ~4294967295u)), _wgslsmith_sub_u32(~u_input.b.x, u_input.b.x), 1u);
    var var_1 = Struct_1(u_input.b.x, var_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(2398f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, 1896f)) - _wgslsmith_f_op_f32(max(-245f, -749f)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(1f - -686f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1347f, 466f, false)) + _wgslsmith_div_f32(2108f, -191f)), 1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -318f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1258f - 1111f))))));
    return 735f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!all(vec2<bool>(true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(1318f, 1242f), ~reverseBits(vec4<u32>(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), ~4294967295u, ~3405u, ~u_input.b.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1411f + -1000f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2205f - -293f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1370f, 2583f)), _wgslsmith_f_op_f32(func_1(u_input.c.x))), 506f)));
}

