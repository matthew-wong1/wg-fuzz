struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(-arg_2.c);
    let var_1 = arg_1;
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.b, 35364i, -arg_2.b, arg_2.b), vec4<i32>(max(arg_1.b, ~u_input.d.x) >> (_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.c, u_input.e), arg_1.a) % 32u), _wgslsmith_div_i32(1i, -29009i), _wgslsmith_dot_vec2_i32(~(u_input.b.xx ^ vec2<i32>(732i, -2415i)), vec2<i32>(~1i, arg_2.b)), -24112i));
    let var_3 = true;
    var var_4 = !var_3;
    return _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.c, 844f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1045f, 881f)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1.c, -859f))), !vec2<bool>(var_3, var_3))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2841f, var_1.c) * vec2<f32>(var_1.c, var_1.c))))) * vec2<f32>(arg_1.c, 135f)));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: vec3<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_3(~(~_wgslsmith_mod_u32(20049u, _wgslsmith_clamp_u32(arg_0.a, 1u, arg_0.a))), arg_0, arg_0));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_3.zz + vec2<f32>(_wgslsmith_f_op_f32(ceil(-1220f)), _wgslsmith_f_op_f32(floor(-318f)))));
    let var_1 = u_input.c;
    var_0 = vec2<f32>(_wgslsmith_f_op_vec2_f32(func_3(0u, Struct_1(_wgslsmith_dot_vec3_u32(select(vec3<u32>(23996u, 29391u, 17653u), vec3<u32>(arg_0.a, u_input.c.x, 1u), vec3<bool>(true, true, false)), firstTrailingBit(vec3<u32>(0u, var_1.x, 4450u))), arg_0.b, 607f), arg_0)).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec2_f32(func_3(arg_0.a >> (1u % 32u), arg_0, Struct_1(u_input.c.x, 41053i, arg_3.x))).x)) - arg_3.x));
    var var_2 = arg_0;
    return abs(var_1.x);
}

fn func_1(arg_0: Struct_1) -> vec4<i32> {
    let var_0 = func_2(arg_0, 244f, -1143f, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) * _wgslsmith_f_op_f32(-arg_0.c)) + 311f), arg_0.c, -802f));
    let var_1 = vec3<u32>(11881u, ~52141u, _wgslsmith_div_u32(var_0, (select(31866u, u_input.c.x, true) | arg_0.a) ^ countOneBits(~5667u)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, arg_0.c) + vec2<f32>(-785f, 784f))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.c, arg_0.c), vec2<f32>(542f, arg_0.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1057f, 291f))))) * vec2<f32>(-2509f, _wgslsmith_div_f32(177f, _wgslsmith_f_op_f32(sign(-1000f))))));
    var var_3 = _wgslsmith_f_op_f32(-1f);
    var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -956f))));
    return ~vec4<i32>(arg_0.b, _wgslsmith_mult_i32(firstLeadingBit(1i), _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.d.x, arg_0.b), arg_0.b << (var_1.x % 32u))), -37333i, _wgslsmith_mult_i32(min(u_input.b.x | 22423i, firstLeadingBit(-40365i)), 2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.x | u_input.b.x;
    let var_1 = u_input.e;
    let var_2 = vec4<i32>(2147483647i, _wgslsmith_div_i32(~(var_0 ^ var_0), reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -1i, 11166i, u_input.b.x), func_1(Struct_1(4294967295u, 8480i, 376f))))), _wgslsmith_div_i32(16607i, u_input.d.x), -u_input.b.x);
    let var_3 = 2147483647i;
    var var_4 = Struct_1(abs(~(0u ^ ~u_input.a.x)), var_0, 1f);
    var var_5 = abs(45774u);
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(~(~41272u)));
}

