struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: u32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: vec4<u32>,
    d: bool,
}

struct Struct_5 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: bool, arg_3: vec4<i32>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, arg_0) + vec4<f32>(arg_0, arg_0, arg_0, arg_0)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(-218f + -724f), arg_0, arg_0))));
    var var_1 = arg_1;
    var var_2 = Struct_1(true, !select(vec3<bool>(false, arg_2, any(vec3<bool>(arg_2, arg_2, false))), !(!vec3<bool>(arg_2, arg_2, arg_2)), select(!vec3<bool>(false, arg_2, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false))));
    var var_3 = _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.a, ~_wgslsmith_add_u32(88457u, u_input.a | arg_1)), 9989u);
    let var_4 = abs(vec3<u32>(_wgslsmith_div_u32(~44781u, u_input.a), abs(abs(~22828u)), arg_1));
    return !var_2.b.zx;
}

fn func_2(arg_0: Struct_5) -> Struct_1 {
    let var_0 = true;
    var var_1 = vec4<bool>(any(select(func_3(-817f, firstTrailingBit(4294967295u), false, vec4<i32>(2147483647i, -15930i, 35538i, u_input.b)), vec2<bool>(var_0, all(vec4<bool>(true, true, var_0, var_0))), select(select(vec2<bool>(var_0, false), vec2<bool>(var_0, false), vec2<bool>(var_0, true)), func_3(-636f, u_input.a, false, vec4<i32>(-2147483647i, arg_0.a, -2147483647i, -2147483647i)), all(vec2<bool>(var_0, var_0))))), true, true, select((~arg_0.a ^ -arg_0.a) > arg_0.a, any(select(!vec4<bool>(var_0, var_0, false, var_0), select(vec4<bool>(var_0, false, var_0, var_0), vec4<bool>(false, var_0, var_0, true), true), !vec4<bool>(true, true, false, var_0))), true));
    var var_2 = -vec3<i32>(_wgslsmith_sub_i32(~(arg_0.a & u_input.b), -arg_0.a ^ ~(-10245i)), 1i, countOneBits(-u_input.b));
    var var_3 = Struct_2(Struct_1(func_3(_wgslsmith_f_op_f32(-371f * 1471f), arg_0.b, (var_0 && true) | !var_1.x, _wgslsmith_clamp_vec4_i32(~vec4<i32>(1i, u_input.b, -2539i, 0i), vec4<i32>(var_2.x, 36305i, -3591i, arg_0.a) ^ vec4<i32>(var_2.x, arg_0.a, u_input.b, arg_0.a), countOneBits(vec4<i32>(-14752i, u_input.b, arg_0.a, arg_0.a)))).x, vec3<bool>(true, true, true)), ~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, arg_0.b), vec3<u32>(arg_0.b, u_input.a, 4294967295u) & vec3<u32>(arg_0.b, 5500u, 4294967295u)), ~1u), u_input.a);
    var var_4 = Struct_2(Struct_1(!all(var_1.zx), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, var_1.x, var_1.x), true))), vec2<u32>(~_wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, arg_0.b), vec3<u32>(0u, 6388u, 1u))), 9146u), firstLeadingBit(~(~var_3.c)));
    return var_4.a;
}

fn func_1(arg_0: Struct_5, arg_1: f32) -> Struct_2 {
    let var_0 = Struct_2(func_2(arg_0), ~vec2<u32>(27005u, u_input.a), _wgslsmith_sub_u32(~14659u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, 1u, 1u, arg_0.b) & vec4<u32>(arg_0.b, arg_0.b, 24713u, 13709u)), countOneBits(~vec4<u32>(arg_0.b, 4294967295u, 4294967295u, arg_0.b)))));
    let var_1 = Struct_3(all(vec3<bool>(any(var_0.a.b), var_0.a.b.x, func_3(_wgslsmith_f_op_f32(456f - arg_1), ~0u, true, vec4<i32>(arg_0.a, arg_0.a, u_input.b, u_input.b) << (vec4<u32>(83530u, 67072u, var_0.c, 60856u) % vec4<u32>(32u))).x)));
    let var_2 = arg_0;
    let var_3 = var_0.a;
    var var_4 = vec4<bool>(false, false, var_0.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-651f - -2050f), 1139f)) + arg_1) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_1)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-645f + arg_1), _wgslsmith_f_op_f32(-arg_1)))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_5(~22334i, 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-830f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1155f, -286f), -1820f)), _wgslsmith_f_op_f32(max(-1660f, _wgslsmith_f_op_f32(sign(-720f)))), false))));
    var var_1 = _wgslsmith_mult_u32(var_0.b.x, ~(~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0.b.x), vec2<u32>(4294967295u, u_input.a)), 19870u)));
    let var_2 = 1f;
    let x = u_input.a;
    s_output = StorageBuffer(72052u);
}

