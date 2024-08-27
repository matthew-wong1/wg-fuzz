struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = max(1i, i32(-1i) * -7076i);
    let var_1 = u_input.a.x;
    var var_2 = Struct_1(1u, vec2<bool>(!(_wgslsmith_f_op_f32(ceil(-943f)) > _wgslsmith_f_op_f32(232f + 348f)), true));
    let var_3 = arg_1;
    var_2 = arg_1;
    return var_2.b;
}

fn func_2(arg_0: Struct_1) -> bool {
    let var_0 = arg_0;
    var var_1 = !(!func_3(!var_0.b.x, Struct_1(_wgslsmith_add_u32(13859u, arg_0.a), arg_0.b)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -653f), _wgslsmith_f_op_f32(abs(-545f)), all(vec3<bool>(var_0.b.x, false, var_1.x)))) - _wgslsmith_f_op_f32(select(-639f, _wgslsmith_f_op_f32(min(-306f, -1000f)), any(vec3<bool>(var_0.b.x, false, arg_0.b.x)))))) - 395f);
    var_1 = var_0.b;
    var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1457f))) + 780f) + -525f), 408f));
    return true;
}

fn func_1() -> f32 {
    let var_0 = any(select(vec4<bool>(true, true, select(true, true, u_input.a.x <= 52068u), true), !vec4<bool>(true, true, func_2(Struct_1(u_input.a.x, vec2<bool>(false, true))), all(vec4<bool>(true, false, false, true))), vec4<bool>(!any(vec2<bool>(true, true)), true, false, true & all(vec4<bool>(true, true, true, true)))));
    let var_1 = _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a.xx, vec2<u32>(u_input.a.x, 4294967295u)), ~vec2<u32>(31870u, u_input.a.x)), select(u_input.a.yx, vec2<u32>(u_input.a.x, u_input.a.x), vec2<bool>(true, var_0)) ^ select(vec2<u32>(u_input.a.x, 16387u), u_input.a.yx, vec2<bool>(true, var_0))), 6464u, u_input.a.x, _wgslsmith_div_u32(~_wgslsmith_mult_u32(4015u, u_input.a.x), ~u_input.a.x)), _wgslsmith_div_vec4_u32(~select(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(31073u, 20172u, u_input.a.x, 16467u), var_0), ~reverseBits(vec4<u32>(u_input.a.x, 3227u, 0u, 1u) >> (vec4<u32>(u_input.a.x, 34549u, u_input.a.x, 4294967295u) % vec4<u32>(32u)))));
    var var_2 = -_wgslsmith_dot_vec4_i32(vec4<i32>(8409i, -(48670i << (var_1.x % 32u)), 1i, ~1i), max(vec4<i32>(i32(-1i) * -77882i, _wgslsmith_dot_vec3_i32(vec3<i32>(10524i, 1i, -1i), vec3<i32>(-11677i, 14816i, -2147483647i)), 1i, 1i), ~abs(vec4<i32>(-8526i, 2147483647i, -21156i, 10554i))));
    var_2 = ~(-2147483647i);
    var_2 = 1i;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(594f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - 1371f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -293f), _wgslsmith_f_op_f32(round(394f))) + _wgslsmith_f_op_f32(select(132f, -773f, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-244f, 678f))))));
    let var_1 = Struct_1(abs(_wgslsmith_div_u32(u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, 0u, 1u) << (max(u_input.a.x, u_input.a.x) % 32u))), !select(select(vec2<bool>(true, false), vec2<bool>(false, false), u_input.a.x >= u_input.a.x), vec2<bool>(true, true), vec2<bool>(true, true)));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0))), 1062f, -383f, var_0) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1923f, -275f, var_0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(778f, var_0, -670f, 964f) * vec4<f32>(-520f, var_0, var_0, -1037f)))) * vec4<f32>(1227f, var_0, var_0, _wgslsmith_f_op_f32(round(500f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-584f, var_0, 232f, -635f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-426f, -368f, var_0, var_0)))))));
    var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(sign(var_0)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * var_0)), _wgslsmith_f_op_f32(f32(-1f) * -205f), _wgslsmith_f_op_f32(func_1())) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.x, -441f, 247f, var_2.x)))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-192f, var_2.x, 1347f, -260f), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1175f, var_0, var_2.x, 1119f)))))))));
    let var_3 = var_1;
    var var_4 = ~(var_3.a & ~(~u_input.a.x));
    var_4 = firstTrailingBit(~_wgslsmith_mod_u32(101359u, max(~var_1.a, var_1.a)));
    let x = u_input.a;
    s_output = StorageBuffer(107f, _wgslsmith_div_vec2_f32(var_2.zz, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(322f, var_0)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2.x, var_2.x)))) - vec2<f32>(var_0, _wgslsmith_f_op_f32(var_2.x + -165f)))));
}

