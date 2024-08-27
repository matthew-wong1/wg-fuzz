struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>) -> vec2<f32> {
    var var_0 = any(select(vec2<bool>(true, any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)))), select(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(false, true)), -(-2147483647i << (u_input.a % 32u)) == 1i));
    let var_1 = firstLeadingBit(abs(~abs(vec4<u32>(u_input.a, u_input.a, 94121u, u_input.a))));
    return _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1092f), _wgslsmith_f_op_f32(step(958f, _wgslsmith_f_op_f32(arg_0.x + arg_0.x))))));
}

fn func_2(arg_0: bool, arg_1: vec4<bool>, arg_2: vec3<f32>, arg_3: f32) -> vec4<f32> {
    var var_0 = ~(~(~vec3<u32>(u_input.a, countOneBits(0u), 4294967295u)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_3, 253f))))), vec2<f32>(_wgslsmith_f_op_f32(arg_2.x - 1744f), _wgslsmith_f_op_f32(round(-690f))))))));
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1766f, -602f, arg_3))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, 588f) - arg_2.zz), _wgslsmith_f_op_vec2_f32(-var_1.a), arg_1.yy)) + _wgslsmith_f_op_vec2_f32(select(arg_2.xx, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.a.x, arg_2.x))), arg_3 >= 680f)))));
    var_0 = ~(~vec3<u32>(~_wgslsmith_div_u32(37962u, 19356u), 1u, reverseBits(1u)));
    var var_2 = _wgslsmith_sub_i32(-46538i, _wgslsmith_add_i32(66856i, firstLeadingBit(-_wgslsmith_mod_i32(0i, -1i))));
    return _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -975f) + _wgslsmith_div_f32(arg_3, 150f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_f32(-616f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_3 * var_1.a.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(572f * arg_2.x) - _wgslsmith_f_op_f32(1027f - arg_3)), 809f))), vec4<f32>(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.a.x)))), -1340f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-979f, _wgslsmith_f_op_f32(trunc(arg_2.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2.x)) * _wgslsmith_div_f32(arg_3, -255f))), _wgslsmith_f_op_f32(-arg_2.x)), select(arg_1, select(select(select(vec4<bool>(true, arg_1.x, true, arg_0), arg_1, vec4<bool>(false, true, arg_0, arg_1.x)), !vec4<bool>(false, true, arg_1.x, arg_0), vec4<bool>(arg_1.x, arg_0, true, arg_1.x)), !select(arg_1, vec4<bool>(arg_1.x, arg_1.x, true, true), false), true), vec4<bool>(true, !arg_1.x, arg_1.x, var_0.x >= _wgslsmith_div_u32(var_0.x, 37589u)))));
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1421f, 327f, 235f, -415f) - vec4<f32>(-234f, -387f, -707f, -376f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(false, vec4<bool>(true, false, true, false), vec3<f32>(-221f, -2372f, 143f), 1787f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(275f, -2494f, -1172f, 862f))))))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(var_0.xz - var_0.xw), vec2<f32>(var_0.x, var_0.x)))))));
    var var_2 = Struct_2(true);
    var_2 = Struct_2(true);
    var_2 = Struct_2(var_2.a);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -654f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(-1099f, _wgslsmith_f_op_f32(abs(1118f)), -2477f, _wgslsmith_f_op_f32(func_1()));
    var var_1 = any(select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(all(vec3<bool>(false, false, false)), true), false), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(true, false), vec2<bool>(false, false), select(true, false, true))), select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, true), all(vec2<bool>(false, true))), vec2<bool>(true, true))));
    let var_2 = ~max(vec2<u32>(~0u, abs(~76888u)), max(vec2<u32>(_wgslsmith_clamp_u32(u_input.a, 1u, u_input.a), ~u_input.a), ~vec2<u32>(u_input.a, 15514u) ^ ~vec2<u32>(1383u, 18109u)));
    let var_3 = ~_wgslsmith_sub_vec4_u32(abs(vec4<u32>(~u_input.a, abs(u_input.a), _wgslsmith_div_u32(u_input.a, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, 4294967295u, 1u), vec4<u32>(var_2.x, var_2.x, var_2.x, 4294967295u)))), ~(vec4<u32>(1949u, var_2.x, var_2.x, 1u) >> (~vec4<u32>(4294967295u, 1u, 37017u, 71508u) % vec4<u32>(32u))));
    var var_4 = true;
    var var_5 = _wgslsmith_f_op_vec4_f32(func_2(true, vec4<bool>(true, _wgslsmith_mod_u32(u_input.a, u_input.a & 49766u) < ~firstLeadingBit(var_3.x), all(vec4<bool>(true, true, true, true)), any(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 474f, var_0.x) - vec3<f32>(var_0.x, 167f, var_0.x)))))), _wgslsmith_f_op_f32(f32(-1f) * -678f))).xwy;
    var var_6 = Struct_2(true);
    var var_7 = vec2<bool>(var_6.a, true);
    let var_8 = Struct_2(true);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.xxx, 1881f, var_3.zyy);
}

