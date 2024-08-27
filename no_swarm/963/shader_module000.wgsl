struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1111f, -1000f), vec2<f32>(1394f, -346f), vec2<bool>(arg_0.a.a.c, false)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(285f, 1000f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1006f, -264f), vec2<f32>(-167f, 1970f))) - vec2<f32>(-589f, -652f)) + vec2<f32>(963f, _wgslsmith_f_op_f32(357f + -288f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(117f, -1248f)), vec2<f32>(-189f, -1497f))))));
    let var_1 = abs(arg_0.a.a.a.x);
    var var_2 = arg_0;
    var var_3 = arg_0.b.x;
    var var_4 = _wgslsmith_mod_u32(~_wgslsmith_sub_u32(~0u, _wgslsmith_add_u32(arg_1.b.x, 21258u)), _wgslsmith_clamp_u32(var_2.a.a.b, _wgslsmith_clamp_u32(0u, max(1u, ~0u), 38631u), _wgslsmith_add_u32(arg_1.b.x, ~(~0u))));
    return -(~1i);
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    let var_0 = ~(vec3<u32>(4806u, 1u, firstTrailingBit(~1u)) ^ vec3<u32>(1u, 1u, 1u));
    var var_1 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~countOneBits(vec2<u32>(var_0.x, 4294967295u)), ~_wgslsmith_sub_vec2_u32(min(vec2<u32>(var_0.x, var_0.x), var_0.zz), min(vec2<u32>(46059u, 0u), vec2<u32>(49623u, 0u)))), max(max(97062u, ~_wgslsmith_add_u32(var_0.x, 0u)), ~var_0.x), _wgslsmith_clamp_u32(_wgslsmith_add_u32(var_0.x ^ var_0.x, var_0.x), firstLeadingBit(4294967295u), ~(~_wgslsmith_mult_u32(var_0.x, var_0.x))));
    let var_2 = arg_0.x;
    var_1 = _wgslsmith_mult_u32(~reverseBits(countOneBits(~var_0.x)), ~var_0.x);
    let var_3 = 4294967295u;
    return arg_0.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: Struct_5) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(414f - _wgslsmith_f_op_f32(-584f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(1f))))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(907f - _wgslsmith_f_op_f32(trunc(515f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -193f) * _wgslsmith_f_op_f32(func_3(vec4<f32>(-286f, 129f, 826f, 341f)))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var_0 = _wgslsmith_f_op_f32(-858f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1368f))))));
    let var_2 = arg_2.c.a.b;
    return -1207f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(~u_input.b ^ u_input.a.x, -2147483647i, -func_1(Struct_4(Struct_3(Struct_1(u_input.a, 10409u, true)), firstLeadingBit(vec3<u32>(30618u, 33439u, 28726u))), Struct_2(u_input.b | u_input.b, vec4<u32>(0u, 74438u, 4294967295u, 0u))));
    var var_1 = select(vec2<bool>(true, true), vec2<bool>(_wgslsmith_f_op_f32(func_2(u_input.a.zwz, vec3<bool>(true, true, true), Struct_5(vec3<u32>(65455u, 0u, 3861u), vec2<bool>(true, false), Struct_3(Struct_1(u_input.a, 93314u, true))))) >= _wgslsmith_div_f32(670f, _wgslsmith_f_op_f32(986f + -854f)), true), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), false));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1f + 2631f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1793f, -824f)) - _wgslsmith_f_op_f32(-1809f - -148f)), var_1.x)))));
    var_1 = vec2<bool>(any(vec3<bool>(false, !(var_2 > var_2), select(all(vec2<bool>(var_1.x, var_1.x)), true, false))), var_1.x);
    let var_3 = ~vec4<u32>(~(~1u), _wgslsmith_div_u32(_wgslsmith_mod_u32(1u, max(0u, 24502u)), ~44947u & _wgslsmith_clamp_u32(1u, 14796u, 36198u)), abs(0u >> (1u % 32u)), ~1u);
    let var_4 = Struct_4(Struct_3(Struct_1(u_input.a, 145088u, any(!vec2<bool>(true, var_1.x)))), vec3<u32>(~(reverseBits(var_3.x) & ~var_3.x), _wgslsmith_dot_vec2_u32(vec2<u32>(var_3.x, var_3.x), ~vec2<u32>(var_3.x, 4294967295u)), _wgslsmith_div_u32(0u, 345u)));
    var_1 = select(vec2<bool>(true, true), vec2<bool>(true, !all(!vec3<bool>(var_4.a.a.c, true, false))), select(vec2<bool>(!(var_1.x || var_4.a.a.c), true), !select(vec2<bool>(true, var_4.a.a.c), !vec2<bool>(false, var_1.x), select(vec2<bool>(true, var_1.x), vec2<bool>(false, var_4.a.a.c), vec2<bool>(true, true))), select(!(!vec2<bool>(true, var_4.a.a.c)), select(select(vec2<bool>(var_4.a.a.c, var_4.a.a.c), vec2<bool>(false, var_4.a.a.c), var_1.x), vec2<bool>(true, true), !vec2<bool>(var_1.x, var_1.x)), vec2<bool>(all(vec2<bool>(var_1.x, var_1.x)), var_4.a.a.c))));
    var var_5 = any(vec2<bool>(true, false));
    var_1 = !vec2<bool>(any(vec3<bool>(true, true, true)), all(select(select(vec3<bool>(var_4.a.a.c, var_4.a.a.c, false), vec3<bool>(false, true, var_4.a.a.c), vec3<bool>(var_4.a.a.c, false, true)), select(vec3<bool>(false, true, true), vec3<bool>(var_1.x, var_4.a.a.c, true), vec3<bool>(var_4.a.a.c, true, var_1.x)), all(vec4<bool>(var_1.x, var_1.x, false, var_1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-378f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_2, 412f))))), ~var_4.a.a.a.ww, _wgslsmith_dot_vec3_u32(~var_3.xzw, ~(var_4.b | var_3.zyy)));
}

