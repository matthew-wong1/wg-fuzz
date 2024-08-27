struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: f32) -> Struct_1 {
    return Struct_1(u_input.b.x, !(!select(vec2<bool>(true, true), vec2<bool>(true, false), all(vec2<bool>(false, true)))));
}

fn func_3() -> f32 {
    let var_0 = select(u_input.b.x, _wgslsmith_div_u32(107337u & u_input.b.x, 1u), any(vec3<bool>(true, true, true)) || true);
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-404f, 2329f, 450f, 816f) + vec4<f32>(442f, 1000f, -1456f, -1222f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(816f, -399f, 1451f, 1122f)), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(578f, -996f, -1907f, -1216f) + vec4<f32>(835f, -423f, -119f, 1010f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2172f, -1129f, 1095f, -426f), vec4<f32>(116f, 1292f, 684f, -782f), vec4<bool>(false, true, true, true))))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-128f, 939f))), _wgslsmith_f_op_f32(937f * _wgslsmith_div_f32(-1240f, 520f)))), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-939f - 3018f), _wgslsmith_f_op_f32(-466f * 1714f))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(878f, 1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(861f * -933f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -418f), _wgslsmith_f_op_f32(950f + -1501f)))))));
    let var_2 = abs(max(vec4<i32>(u_input.c.x, u_input.c.x, 1i, _wgslsmith_mod_i32(u_input.c.x, -21027i)) & select(abs(vec4<i32>(u_input.c.x, -2147483647i, -33435i, 1i)), reverseBits(vec4<i32>(u_input.c.x, u_input.c.x, 2147483647i, u_input.c.x)), !vec4<bool>(true, var_1.c.b.x, var_1.c.b.x, var_1.c.b.x)), select(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, 10751i, 30749i, -1i) >> (vec4<u32>(u_input.b.x, 108763u, 4294967295u, var_0) % vec4<u32>(32u)), vec4<i32>(u_input.c.x, 11229i, 11631i, 16680i), select(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(39565i, 0i, u_input.c.x, u_input.c.x), vec4<bool>(var_1.c.b.x, var_1.c.b.x, false, var_1.c.b.x))), countOneBits(vec4<i32>(29158i, -24630i, -2147483647i, u_input.c.x)), vec4<bool>(true, any(vec4<bool>(var_1.c.b.x, true, true, var_1.c.b.x)), true, true))));
    var var_3 = 0u;
    var_3 = ~_wgslsmith_mult_u32(~max(41924u, var_0) << (select(var_0, firstLeadingBit(u_input.a), true) % 32u), 28644u);
    return var_1.b.x;
}

fn func_2(arg_0: u32, arg_1: vec4<u32>, arg_2: f32, arg_3: Struct_1) -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3()), arg_2, _wgslsmith_f_op_f32(max(1678f, arg_2)), -650f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -799f, 1000f, 1000f))))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_2)), arg_2), -1000f), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(step(-1870f, arg_2)))), _wgslsmith_f_op_f32(arg_2 + _wgslsmith_div_f32(1000f, arg_2))))), Struct_1(~0u, arg_3.b), arg_2);
    let var_1 = _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~((vec2<u32>(var_0.c.a, 29545u) ^ vec2<u32>(arg_0, 4294967295u)) << (~vec2<u32>(arg_1.x, arg_0) % vec2<u32>(32u))), ~vec2<u32>(1u, ~19531u)), min(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, arg_3.a), select(vec2<u32>(20120u, 7363u), vec2<u32>(arg_3.a, var_0.c.a) | vec2<u32>(64554u, arg_3.a), !var_0.c.b)), var_0.c.a));
    let var_2 = all(!(!vec4<bool>(arg_3.b.x, true, var_0.c.b.x && arg_3.b.x, any(vec4<bool>(false, false, var_0.c.b.x, var_0.c.b.x)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(var_0.a * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 - 1153f) - _wgslsmith_f_op_f32(max(arg_2, -2832f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x + arg_2)), _wgslsmith_f_op_f32(select(arg_2, _wgslsmith_f_op_f32(floor(1000f)), true)), var_0.d), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.b.x - arg_2), -707f, _wgslsmith_div_f32(-726f, -748f), 255f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_0.a, var_0.a)))), var_0.c.b.x)));
    var var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_3 * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, -1000f, 447f, 682f) - var_0.a) + vec4<f32>(-1248f, -119f, var_3.x, var_0.a.x)))), var_3.xy, Struct_1(102909u, func_1(_wgslsmith_f_op_f32(f32(-1f) * -392f)).b), arg_2);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(min(-1078f, _wgslsmith_f_op_f32(round(105f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_2(4294967295u, select(vec4<u32>(var_0.a, 1u, 44453u, var_0.a), vec4<u32>(4294967295u, 8310u, 8354u, 0u), var_0.b.x), -1179f, func_1(-854f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-114f)), -489f)))), ~13505i);
}

