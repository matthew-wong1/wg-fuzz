struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: i32) -> vec4<bool> {
    let var_0 = ~(-6506i);
    let var_1 = arg_0;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -761f));
    var var_3 = arg_2;
    var var_4 = ~4294967295u;
    return var_1.a;
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> f32 {
    let var_0 = _wgslsmith_clamp_u32(((25636u << (1u % 32u)) ^ reverseBits(u_input.a.x)) | firstTrailingBit(_wgslsmith_mult_u32(1u, u_input.a.x ^ 1u)), _wgslsmith_mult_u32(~u_input.a.x, arg_1.b.x), ~4294967295u);
    var var_1 = !select(arg_1.a, func_3(arg_1, ~17648u, -1i), true);
    var_1 = select(arg_1.a, select(arg_1.a, select(!select(vec4<bool>(false, true, var_1.x, arg_1.a.x), arg_1.a, vec4<bool>(var_1.x, true, true, true)), vec4<bool>(var_1.x || var_1.x, !var_1.x, false, func_3(Struct_2(arg_1.a, vec4<u32>(0u, var_0, var_0, 1u)), var_0, 8805i).x), arg_1.a), !var_1.x), arg_1.a.x);
    let var_2 = vec2<bool>(true, arg_1.a.x);
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-163f)))), _wgslsmith_f_op_f32(-805f + _wgslsmith_f_op_f32(step(2078f, _wgslsmith_f_op_f32(-668f + -2911f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-288f)) + _wgslsmith_f_op_f32(525f * 187f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(815f, -678f, -1239f))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(510f))) * _wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(-var_3.x)));
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = abs(_wgslsmith_mult_vec3_u32(firstLeadingBit(max(~u_input.a.ywy, ~vec3<u32>(arg_1, u_input.a.x, arg_1))), ~max(vec3<u32>(u_input.a.x, arg_1, arg_1) << (u_input.a.xwz % vec3<u32>(32u)), ~vec3<u32>(30344u, 4294967295u, u_input.a.x))));
    return arg_2;
}

fn func_1(arg_0: vec2<f32>) -> Struct_2 {
    var var_0 = u_input.a.ww;
    let var_1 = _wgslsmith_f_op_f32(-arg_0.x);
    var var_2 = true;
    var var_3 = func_4(arg_0, ~u_input.a.x, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(-1i, Struct_2(vec4<bool>(true, true, true, false), u_input.a))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) * _wgslsmith_f_op_f32(var_1 * arg_0.x)))));
    var var_4 = _wgslsmith_add_u32(89352u, u_input.a.x);
    return Struct_2(!vec4<bool>(true, any(vec2<bool>(true, true)), var_0.x > 1u, all(vec3<bool>(true, false, true))), ~u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 588f))), _wgslsmith_f_op_f32(-360f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-809f, -723f, true)) - _wgslsmith_f_op_f32(-960f * 1807f)))));
    var var_1 = all(!var_0.a.xz);
    var var_2 = firstTrailingBit(~(~0u) | _wgslsmith_mult_u32(reverseBits(var_0.b.x), _wgslsmith_mult_u32(abs(0u), 35719u)));
    var var_3 = Struct_2(func_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-506f, -122f)))))).a, vec4<u32>(min(~var_0.b.x, 10289u), _wgslsmith_div_u32(u_input.a.x, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(33032u, u_input.a.x, 4294967295u, 23102u), u_input.a), ~u_input.a.x)), ~_wgslsmith_mod_u32(u_input.a.x, 33319u | u_input.a.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 17035u, u_input.a.x, 0u), min(min(vec4<u32>(var_0.b.x, 4294967295u, 0u, 0u), vec4<u32>(4294967295u, u_input.a.x, 8599u, u_input.a.x)), var_0.b))));
    var_1 = !func_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(ceil(2011f)), -1252f)))).a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-999f - _wgslsmith_f_op_f32(469f * 164f)) * _wgslsmith_f_op_f32(func_2(-2147483647i, Struct_2(var_3.a, vec4<u32>(1u, 0u, 29891u, 0u))))))), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, 1f))))).b);
}

