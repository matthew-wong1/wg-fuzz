struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: vec2<f32>, arg_1: f32, arg_2: f32, arg_3: vec4<f32>) -> u32 {
    return 0u;
}

fn func_3(arg_0: i32, arg_1: vec3<u32>, arg_2: vec2<bool>) -> vec3<bool> {
    let var_0 = Struct_2(~reverseBits(select(vec3<u32>(0u, arg_1.x, 1u) & vec3<u32>(arg_1.x, arg_1.x, arg_1.x), vec3<u32>(arg_1.x, 1u, arg_1.x) & vec3<u32>(1u, arg_1.x, 80769u), true & arg_2.x)));
    var var_1 = var_0;
    var_1 = var_0;
    var_1 = Struct_2(countOneBits(~arg_1));
    var_1 = Struct_2(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.x, 45650u, var_1.a.x), vec3<u32>(var_1.a.x, 1u, 49657u), var_0.a), countOneBits(vec3<u32>(0u, var_1.a.x, var_0.a.x))), ~var_0.a & max(~vec3<u32>(57095u, 1u, 1u), ~vec3<u32>(arg_1.x, var_1.a.x, var_0.a.x)), ~(vec3<u32>(arg_1.x, 23477u, 86241u) << (var_0.a % vec3<u32>(32u)))));
    return !(!vec3<bool>(arg_2.x, !(!arg_2.x), arg_2.x));
}

fn func_2(arg_0: vec3<i32>, arg_1: u32) -> vec2<f32> {
    let var_0 = Struct_1(vec2<f32>(1560f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1033f) * _wgslsmith_f_op_f32(-905f - 295f))))), func_3(-reverseBits(-arg_0.x), vec3<u32>(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(63796u, 1u, arg_1, arg_1)), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, arg_1, 1u, arg_1), vec4<u32>(72368u, 1u, arg_1, 0u), vec4<u32>(arg_1, arg_1, 47781u, 39236u))), arg_1 ^ min(4294967295u, 45073u), 35865u), vec2<bool>(true, true)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, var_0.a.x)));
    let var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(~(-_wgslsmith_dot_vec2_i32(arg_0.xz, vec2<i32>(-34842i, arg_0.x))), u_input.a.x), u_input.a.yy);
    let var_3 = Struct_2(vec3<u32>(arg_1, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, arg_1, arg_1, arg_1), ~vec4<u32>(38392u, 0u, 4294967295u, 27648u)) ^ arg_1, ~(~_wgslsmith_clamp_u32(arg_1, 10921u, arg_1))));
    let var_4 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(var_0.a.x + -614f)), -864f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-677f + _wgslsmith_f_op_f32(f32(-1f) * -191f))), var_1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.x)) + var_0.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(302f, -144f, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, -1484f, -671f, var_1.x) * vec4<f32>(-643f, var_0.a.x, var_1.x, var_0.a.x)))))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_4.xx))) * var_4.zx));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(~148394u, 1u), vec2<u32>(select(~0u, countOneBits(0u), all(vec2<bool>(false, false))), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1532f, -1677f)), _wgslsmith_div_f32(1000f, 669f), _wgslsmith_f_op_f32(sign(-687f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(228f, -578f, 191f, -202f), vec4<f32>(1251f, -999f, -181f, 1504f)))))) | vec2<u32>(41587u, func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(239f, -304f) * vec2<f32>(-912f, -1558f))), _wgslsmith_f_op_f32(abs(-958f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1531f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1666f, -978f, -759f, -666f)))));
    var var_1 = _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, ~16016u, _wgslsmith_mod_u32(_wgslsmith_div_u32(0u, 17034u), var_0.x) & _wgslsmith_mult_u32(var_0.x, 1u)), ~_wgslsmith_add_vec3_u32(abs(vec3<u32>(4294967295u, 1u, 0u)), vec3<u32>(~4294967295u, 37732u, 1u)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1265f, 292f), vec2<f32>(-1000f, -616f), true)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-677f, -628f))))) - _wgslsmith_f_op_vec2_f32(func_2(-(vec3<i32>(u_input.a.x, 33588i, -39112i) << (vec3<u32>(2644u, var_0.x, 61564u) % vec3<u32>(32u))), 1u & ~var_1.x))), vec3<bool>(var_0.x == var_0.x, all(vec4<bool>(false, any(vec3<bool>(false, false, false)), any(vec4<bool>(true, true, false, true)), any(vec3<bool>(true, false, true)))), select(true, true, false)));
    var var_3 = !vec4<bool>(any(vec3<bool>(false, false, true)) | true, !(!var_2.b.x) | var_2.b.x, var_2.b.x, 9149i >= _wgslsmith_mod_i32(u_input.a.x, -1i));
    var var_4 = var_2;
    var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_4.a))), func_3(0i, _wgslsmith_clamp_vec3_u32(~select(vec3<u32>(1u, 73776u, var_1.x), vec3<u32>(var_1.x, var_0.x, var_0.x), var_3.wwy), vec3<u32>(var_1.x, firstLeadingBit(var_0.x), min(var_1.x, var_1.x)), vec3<u32>(var_0.x & 4674u, var_0.x, ~5320u)), vec2<bool>(true && (var_2.a.x >= var_4.a.x), var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(firstLeadingBit(abs(vec4<u32>(72201u, 0u, 44723u, var_1.x) << (vec4<u32>(var_1.x, var_0.x, 2077u, 1u) % vec4<u32>(32u))))), 753f);
}

