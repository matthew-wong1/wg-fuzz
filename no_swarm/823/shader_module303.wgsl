struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: i32, arg_3: vec4<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-arg_0.b.x);
    var var_1 = arg_3.ywx;
    let var_2 = 25461u;
    var_0 = _wgslsmith_f_op_f32(390f + _wgslsmith_f_op_f32(arg_0.b.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-449f, -514f)))));
    var var_3 = select(true, !all(vec3<bool>(true, true, any(arg_3.wzy))), _wgslsmith_f_op_f32(min(arg_0.c, arg_0.b.x)) >= arg_0.b.x);
    return _wgslsmith_dot_vec2_u32(~u_input.b.yy, abs(vec2<u32>(countOneBits(30357u), _wgslsmith_clamp_u32(~29145u, 907u, ~u_input.d))));
}

fn func_2(arg_0: u32) -> Struct_2 {
    let var_0 = Struct_1(-u_input.a.x << (func_3(Struct_2(select(true, false, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-234f, -2359f, 1483f, 1428f)), _wgslsmith_f_op_f32(959f * 676f)), !all(vec3<bool>(false, false, false)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, 2147483647i, u_input.a.x), ~vec3<i32>(u_input.a.x, u_input.a.x, 24070i)), vec4<bool>(true, true, true, true)) % 32u), 1u, u_input.e);
    var var_1 = Struct_2(!(all(vec4<bool>(true, true, true, true)) & true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + -651f), -1121f), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-1000f)))), 2476f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-503f * 1f), -2014f, all(vec2<bool>(true, true)))));
    return Struct_2(!any(select(!vec4<bool>(false, var_1.a, false, var_1.a), select(vec4<bool>(var_1.a, false, var_1.a, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, var_1.a)), vec4<bool>(false, false, false, var_1.a))), _wgslsmith_f_op_vec4_f32(floor(var_1.b)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, -455f)) - _wgslsmith_f_op_f32(floor(var_1.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.b.x, 1985f))) + 426f))));
}

fn func_1(arg_0: i32) -> i32 {
    var var_0 = func_2(0u);
    let var_1 = Struct_2(var_0.a, var_0.b, var_0.c);
    var var_2 = Struct_1(u_input.a.x, u_input.b.x, -min(-14082i, u_input.e));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-364f)), -1000f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c, var_0.c) + 1012f)) + var_1.c), -719f);
    var_2 = Struct_1(((_wgslsmith_mult_i32(u_input.a.x, arg_0) ^ 0i) & (abs(var_2.c) >> (~5680u % 32u))) << (var_2.b % 32u), ~1u, u_input.a.x | min(-20484i, _wgslsmith_add_i32(1i, var_2.c)));
    return ~(-21346i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>((func_1(u_input.e) & u_input.e) >> (firstLeadingBit(16489u << (1u % 32u)) % 32u), abs(u_input.a.x ^ min(u_input.a.x, 20324i)), u_input.a.x, u_input.a.x) << (vec4<u32>(~u_input.c, 0u, firstTrailingBit(firstLeadingBit(u_input.d)), ~(~u_input.d)) % vec4<u32>(32u));
    var_0 = select(vec4<i32>(-4538i, -52930i, u_input.e, var_0.x), firstTrailingBit(select(firstLeadingBit(vec4<i32>(-1i, -5487i, 6387i, u_input.a.x)), vec4<i32>(-1i) * -vec4<i32>(1i, 22584i, var_0.x, var_0.x), vec4<bool>(true, func_2(1u).a, true, true))), true && any(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(func_2(~_wgslsmith_mod_u32(u_input.c, u_input.c) | u_input.d).b.x, u_input.e >> (u_input.b.x % 32u));
}

