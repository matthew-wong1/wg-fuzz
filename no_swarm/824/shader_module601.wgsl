struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool, arg_1: bool) -> vec3<u32> {
    var var_0 = 107f;
    var_0 = _wgslsmith_f_op_f32(min(-1974f, -381f));
    var var_1 = Struct_1(-1115f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -1322f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1778f, -1083f, _wgslsmith_f_op_f32(-263f - 108f)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1396f, -1263f, -790f))))))));
    var_1 = Struct_1(var_1.b, 1840f, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(-var_1.c.x))), 1129f, var_1.c.x));
    var var_2 = vec4<i32>(_wgslsmith_dot_vec4_i32(-(~(-vec4<i32>(-1i, 1i, -2147483647i, 27355i))), ~vec4<i32>(0i, _wgslsmith_add_i32(-2147483647i, 1i), 1i, _wgslsmith_add_i32(11952i, 10574i))), _wgslsmith_dot_vec2_i32(reverseBits(~(~vec2<i32>(-3638i, -2310i))), -vec2<i32>(-27921i, 1i)), 2147483647i, 22561i);
    return u_input.b.yzy;
}

fn func_3() -> u32 {
    let var_0 = -2727f;
    var var_1 = vec3<u32>(4294967295u, 131325u, ~_wgslsmith_div_u32(~(u_input.a.x | 18466u), 1u));
    var_1 = vec3<u32>(76238u ^ _wgslsmith_clamp_u32(u_input.a.x, 4114u, max(~u_input.a.x, ~1u)), var_1.x, ~_wgslsmith_sub_u32(var_1.x, 11215u));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(427f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(157f + var_0) * var_0)))));
    var_1 = max(min(u_input.b.wwx, vec3<u32>(~(~4294967295u), ~(~34491u), var_1.x)), ~u_input.b.wyx >> (vec3<u32>(~_wgslsmith_mod_u32(var_1.x, u_input.a.x), ~(~var_1.x), 58309u) % vec3<u32>(32u)));
    return u_input.a.x;
}

fn func_1(arg_0: i32) -> f32 {
    let var_0 = select(vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(true, true)), true, min(select(15391i, 19015i, true), -arg_0) == ~_wgslsmith_dot_vec2_i32(vec2<i32>(7314i, arg_0), vec2<i32>(2147483647i, -1i))), !(!any(vec4<bool>(true, true, true, true))));
    let var_1 = _wgslsmith_dot_vec3_u32(~(~((u_input.b.wyw | vec3<u32>(u_input.b.x, 4294967295u, 1u)) ^ abs(vec3<u32>(1129u, 32859u, 26143u)))), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(~func_2(true, var_0.x), vec3<u32>(11034u, func_3(), u_input.b.x << (u_input.b.x % 32u))), max(u_input.b.ywz, ~(~vec3<u32>(u_input.b.x, u_input.a.x, u_input.b.x)))));
    var var_2 = select(var_0.x, !var_0.x, !(!any(!vec4<bool>(false, true, false, var_0.x))));
    let var_3 = ~71286u;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(935f * -694f), -571f))))) - _wgslsmith_f_op_f32(sign(1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(546f - _wgslsmith_f_op_f32(913f + -231f)))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(316f, 781f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(-63393i)), -747f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2527f))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_clamp_i32(-38865i, ~2147483647i, ~reverseBits(2147483647i)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2847f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0)) + var_1) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(734f)), -306f)))));
    var_2 = var_0;
    let var_3 = ~(~_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(5261u, u_input.a.x, 38163u), ~u_input.b.wwz), u_input.b.zxy));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1), 15264i);
}

