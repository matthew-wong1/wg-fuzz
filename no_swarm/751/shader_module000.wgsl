struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: u32,
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

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> u32 {
    return 13186u;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(-378f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-686f, -585f) * vec2<f32>(-1164f, -459f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(181f, 1015f))))))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(2128f, -1289f), vec2<f32>(428f, -391f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-949f, -543f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(280f, -1000f)))))), u_input.a);
    let var_1 = true;
    var var_2 = Struct_1(880f, var_0.b, (firstTrailingBit(u_input.a) >> (vec2<u32>(~29962u, var_0.c.x) % vec2<u32>(32u))) | var_0.c);
    let var_3 = vec4<bool>(any(select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, var_1), true), vec2<bool>(any(vec4<bool>(false, true, var_1, false)), true), vec2<bool>(var_1, true))), var_1, true, true);
    var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(321f, -1042f) * vec2<f32>(var_2.a, 1686f)) - var_0.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2424f, 2205f))))), reverseBits(_wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(var_2.c.x, 76143u))));
    return Struct_1(_wgslsmith_f_op_f32(ceil(var_2.b.x)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(134f)) * _wgslsmith_f_op_f32(sign(1182f))), 344f), vec2<u32>(~(~(~var_2.c.x)), ~(~func_3(var_0, -522f))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = func_2();
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-617f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(861f, -792f))) + _wgslsmith_f_op_f32(f32(-1f) * -1335f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-369f, -926f, arg_1.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.x) * -816f))));
    let var_2 = func_2();
    let var_3 = -(~vec4<i32>(~(-2147483647i) & _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 484i, -1938i, -23774i), vec4<i32>(0i, 37714i, -24244i, 788i)), -_wgslsmith_mod_i32(-54405i, -44987i), -13312i, -5872i << (abs(arg_2.c.x) % 32u)));
    var_0 = arg_2;
    return vec3<bool>(!(~arg_0.x >= arg_2.c.x), any(vec2<bool>(false, false)), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(!any(select(vec2<bool>(true, false), vec2<bool>(true, true), false)), any(select(vec3<bool>(true, true, true), func_1(vec3<u32>(u_input.a.x, u_input.a.x, 16599u), vec2<bool>(false, false), Struct_1(107f, vec2<f32>(204f, 627f), u_input.a)), vec3<bool>(true, true, true)))), vec2<bool>(false, true), u_input.a.x != _wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(56485u, u_input.a.x, 34635u, u_input.a.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(27496u, 47786u, u_input.a.x, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 0u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 22275u)))));
    let var_1 = -abs(-2147483647i >> (firstTrailingBit(abs(u_input.a.x)) % 32u));
    let var_2 = -1000f;
    let var_3 = vec2<i32>(-_wgslsmith_dot_vec4_i32(~min(vec4<i32>(var_1, var_1, var_1, -2147483647i), vec4<i32>(50625i, 0i, var_1, var_1)), ~vec4<i32>(-17338i, var_1, -1i, 2147483647i) | vec4<i32>(var_1, var_1, var_1, 1i)), 2147483647i & ~(0i & var_1));
    let var_4 = min(-(~(vec3<i32>(0i, -1i, -49071i) & _wgslsmith_add_vec3_i32(vec3<i32>(var_3.x, var_3.x, var_1), vec3<i32>(var_1, -54021i, 2147483647i)))), reverseBits(firstLeadingBit(vec3<i32>(-23394i, var_1, var_3.x))) ^ firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(var_1, 24373i, var_3.x) & vec3<i32>(50141i, var_1, 2147483647i), -vec3<i32>(12354i, -23534i, -2147483647i))));
    var var_5 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(414f, 1617f)) - _wgslsmith_div_f32(-238f, var_2)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2 + 1104f), var_2)), -542f), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(var_2)), var_2) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, -365f) + vec2<f32>(var_2, -484f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1418f, var_2))))), firstLeadingBit(vec2<u32>(u_input.a.x, ~u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_5.a, 739f, -976f, var_5.b.x) * vec4<f32>(var_5.a, var_5.a, -553f, var_2)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, 619f, var_2, -884f))), vec4<f32>(-1000f, var_2, _wgslsmith_f_op_f32(trunc(-706f)), -706f))), var_3.x, firstTrailingBit(u_input.a.x), func_3(func_2(), var_2));
}

