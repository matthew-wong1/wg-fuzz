struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: bool,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_1, arg_3: bool) -> f32 {
    let var_0 = Struct_3(arg_1.a);
    return var_0.a.a;
}

fn func_2(arg_0: u32) -> vec2<u32> {
    let var_0 = vec2<i32>(0i, u_input.a);
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(-1024f, 1u)), Struct_3(Struct_2(1930f, 0u)), Struct_1(vec3<f32>(-528f, -1000f, -1315f), vec3<bool>(true, false, true), false, 279f, true), true))), 28650u));
    var var_2 = ~(vec3<u32>(~arg_0, firstLeadingBit(14494u) | _wgslsmith_clamp_u32(4762u, 4294967295u, arg_0), u_input.c) << (~((vec3<u32>(u_input.c, var_1.a.b, arg_0) << (vec3<u32>(arg_0, var_1.a.b, arg_0) % vec3<u32>(32u))) ^ vec3<u32>(1u, var_1.a.b, 52027u)) % vec3<u32>(32u)));
    var_2 = ~(~(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, u_input.c, var_1.a.b), vec3<u32>(u_input.c, 4294967295u, var_1.a.b) & vec3<u32>(8018u, 47066u, 1u))));
    let var_3 = Struct_1(vec3<f32>(var_1.a.a, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1016f), var_1.a.a), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), -752f), select(select(select(vec3<bool>(false, true, false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true)), vec3<bool>(true, true, any(vec2<bool>(true, false))), any(vec4<bool>(false, false, true, false))), vec3<bool>(all(vec2<bool>(true, true)), true, u_input.a == countOneBits(u_input.a)), !vec3<bool>(true, any(vec4<bool>(true, true, false, true)), false)), false, var_1.a.a, false);
    return abs(vec2<u32>(arg_0, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(0u, var_1.a.b, 0u)), ~vec3<u32>(41439u, var_1.a.b, arg_0)) << (u_input.c % 32u)));
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-949f))) * _wgslsmith_f_op_f32(f32(-1f) * -838f)))), u_input.c);
    let var_1 = _wgslsmith_div_vec4_u32(vec4<u32>(var_0.b, ~(~(~0u)), _wgslsmith_dot_vec2_u32(~arg_0.yy ^ arg_0.yz, func_2(_wgslsmith_add_u32(var_0.b, 4294967295u))), countOneBits(arg_0.x)), vec4<u32>(0u, u_input.c, _wgslsmith_mult_u32(var_0.b, _wgslsmith_dot_vec3_u32(arg_0, arg_0 & arg_0)), min(_wgslsmith_dot_vec2_u32(arg_0.zz, arg_0.yz ^ arg_0.zz), _wgslsmith_dot_vec3_u32(abs(arg_0), ~vec3<u32>(arg_0.x, 0u, 84692u)))));
    var var_2 = Struct_4(-vec4<i32>(u_input.a >> (49678u % 32u), select(_wgslsmith_add_i32(u_input.b, u_input.b), -u_input.a, true), u_input.a, 0i), -(~firstTrailingBit(vec4<i32>(u_input.b, u_input.a, u_input.b, u_input.b))) << ((vec4<u32>(firstLeadingBit(var_1.x), u_input.c, firstTrailingBit(var_1.x), 40102u) >> (max(~var_1, var_1) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_3 = ~(_wgslsmith_mult_u32(firstLeadingBit(0u) << (_wgslsmith_mod_u32(u_input.c, 1u) % 32u), ~33604u) ^ 4294967295u);
    var_3 = arg_0.x;
    return Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, -741f))), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a))), var_0.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a + var_0.a))))), vec3<bool>(all(vec3<bool>(true, true, true)) & true, true, any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false))) || true), true, _wgslsmith_f_op_f32(-238f - _wgslsmith_f_op_f32(min(var_0.a, _wgslsmith_f_op_f32(func_3(Struct_3(var_0), Struct_3(var_0), Struct_1(vec3<f32>(1026f, -1768f, 630f), vec3<bool>(false, false, true), true, -346f, false), 35391u < var_1.x))))), false);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_1 {
    return func_1(vec3<u32>(~abs(1u), u_input.c, 83421u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-740f, -1000f))), -2685f) * -762f), u_input.c);
    var var_1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1246f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - var_0.a)) + var_0.a)), var_0.b);
    let var_2 = func_4(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a * 596f) + var_1.a), ~(~_wgslsmith_sub_u32(u_input.c, 21558u))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-173f + 1046f)))), 55484u), !vec3<bool>(!any(vec3<bool>(false, true, true)), true, false), func_1(vec3<u32>(firstTrailingBit(1u), abs(1u), var_0.b)));
    var_1 = Struct_2(var_1.a, ~select(firstTrailingBit(countOneBits(var_0.b)), var_1.b, (281f < var_0.a) && var_2.c));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.yx);
}

