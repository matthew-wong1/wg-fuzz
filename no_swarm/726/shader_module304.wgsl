struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_1) -> u32 {
    return ~(~_wgslsmith_clamp_u32(0u, 32426u, 1u & _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 60712u, 4294967295u, 4294967295u), vec4<u32>(19111u, 4294967295u, 30952u, 1u))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: Struct_3) -> u32 {
    let var_0 = arg_2.a;
    var var_1 = arg_2;
    var_1 = arg_2;
    var_1 = arg_2;
    var_1 = arg_2;
    return arg_1.x;
}

fn func_1(arg_0: vec2<u32>, arg_1: i32) -> vec4<bool> {
    let var_0 = true;
    var var_1 = func_2(Struct_1(min(20048i, 0i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1007f, -628f, 1000f))), _wgslsmith_div_vec3_f32(vec3<f32>(-1408f, 546f, -1289f), vec3<f32>(-643f, 116f, 185f))))), vec3<bool>(var_0, all(!vec4<bool>(var_0, var_0, var_0, false)), var_0)));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(1682f)))), 1073f)) * _wgslsmith_f_op_f32(3519f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1341f)), _wgslsmith_f_op_f32(-951f + 597f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1587f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -980f)), func_3(vec2<i32>(34794i, arg_1), vec3<u32>(arg_0.x, 4294967295u, 1914u), Struct_3(Struct_1(52680i, vec3<f32>(-1538f, -939f, 1965f), vec3<bool>(var_0, false, var_0)), Struct_1(arg_1, vec3<f32>(-781f, -429f, -751f), vec3<bool>(false, var_0, var_0)))) >= (arg_0.x ^ 6251u))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(485f, 621f)))) * _wgslsmith_f_op_f32(f32(-1f) * -312f)));
    let var_3 = countOneBits(-2147483647i);
    var_1 = 37908u;
    return vec4<bool>(true, var_0, false, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!any(func_1(vec2<u32>(0u, 4294967295u), u_input.a))));
    var var_1 = 33024i;
    var_1 = -12114i;
    var_1 = abs(i32(-1i) * -1i);
    var var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(0u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(16156u, 4294967295u, 68957u), 1u), 28563u, 0u)), vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-228f * -556f), _wgslsmith_f_op_f32(ceil(1111f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1719f)))), _wgslsmith_f_op_f32(select(-1000f, 1f, false)), _wgslsmith_f_op_f32(abs(-122f))), (vec2<i32>(firstLeadingBit(2147483647i), u_input.a) ^ (vec2<i32>(24950i, u_input.a) & vec2<i32>(u_input.a, -2147483647i))) & ~vec2<i32>(-18475i, -2147483647i & u_input.a), max(firstTrailingBit(~vec2<i32>(u_input.a, u_input.a)) >> (select(vec2<u32>(38598u, 4294967295u), vec2<u32>(73369u, 17727u), vec2<bool>(true, true)) % vec2<u32>(32u)), vec2<i32>(1i, 1i)), _wgslsmith_f_op_f32(max(-434f, -1138f)));
}

