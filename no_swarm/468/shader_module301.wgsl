struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-451f)))), arg_0);
    return ~(~18329u);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec3<i32>) -> u32 {
    let var_0 = Struct_2(~u_input.b == max(func_3(_wgslsmith_f_op_f32(f32(-1f) * -470f), Struct_2(arg_0.x, false, true, u_input.b), Struct_2(arg_0.x, arg_0.x, true, u_input.b)), select(47398u, u_input.b << (67292u % 32u), false)), any(vec4<bool>(arg_0.x, ~u_input.b == _wgslsmith_clamp_u32(u_input.b, 28433u, u_input.b), arg_1.x, !all(vec3<bool>(arg_1.x, false, false)))), u_input.b <= 6020u, ~4294967295u);
    let var_1 = var_0.d;
    var var_2 = arg_2;
    let var_3 = arg_2;
    global0 = -263f;
    return firstLeadingBit(u_input.b);
}

fn func_1(arg_0: Struct_1) -> f32 {
    let var_0 = vec3<u32>(~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(1u, u_input.b)), _wgslsmith_sub_vec2_u32(vec2<u32>(38758u, 1u), vec2<u32>(u_input.b, 58633u))), func_2(vec2<bool>(true, false), vec3<bool>(true, true, true), Struct_1(-arg_0.a), arg_0.a.zxw), u_input.b) | ~(~firstLeadingBit(vec3<u32>(10808u, u_input.b, u_input.b) & vec3<u32>(u_input.b, 14097u, 0u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1f, 1f)));
    var var_2 = Struct_2(true, true, !(_wgslsmith_add_i32(firstLeadingBit(2147483647i), u_input.a) < abs(46199i)), var_0.x);
    global0 = var_1.x;
    let var_3 = var_2.c;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(925f * 1000f))))) - _wgslsmith_f_op_f32(ceil(-1180f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(~vec4<i32>(25090i, u_input.a, u_input.a, -2147483647i))))));
    var var_0 = ~0u;
    let var_1 = vec2<f32>(-1255f, -415f);
    let var_2 = 15327u;
    var_0 = ~(~(select(21287u, firstLeadingBit(49124u), true) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 8308u, var_2, 84855u) >> (vec4<u32>(148177u, var_2, var_2, u_input.b) % vec4<u32>(32u)), ~vec4<u32>(u_input.b, var_2, 4294967295u, var_2)) % 32u)));
    let var_3 = Struct_2(true, any(!(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true)))), any(vec3<bool>(!any(vec3<bool>(true, false, true)), true != all(vec2<bool>(false, true)), select(u_input.a <= -1i, true, true))), max(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(~38610u, ~95372u), _wgslsmith_sub_u32(~62134u, 0u), _wgslsmith_clamp_u32(abs(u_input.b), ~u_input.b, var_2)), var_2));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, countOneBits(~(-(~vec2<i32>(u_input.a, u_input.a)))), -vec4<i32>(max(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(82493i, -27730i, u_input.a), vec3<i32>(u_input.a, u_input.a, 53645i))), -1i, ~u_input.a, firstTrailingBit(u_input.a)), ~(~u_input.b) >> (var_2 % 32u), func_3(-287f, Struct_2(!var_3.c, all(!vec4<bool>(var_3.a, false, false, true)), false, 92655u), Struct_2(var_3.c, true, any(!vec2<bool>(var_3.c, var_3.b)), _wgslsmith_div_u32(_wgslsmith_div_u32(var_2, 140u), select(6751u, 17912u, var_3.a)))));
}

