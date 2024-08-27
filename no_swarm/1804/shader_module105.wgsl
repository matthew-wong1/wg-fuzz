struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: Struct_3) -> vec2<f32> {
    let var_0 = firstLeadingBit(~(-2147483647i));
    let var_1 = ~countOneBits(_wgslsmith_mod_u32(arg_0.d.a, ~arg_0.d.a)) >> (arg_0.d.a % 32u);
    var var_2 = Struct_3(false, arg_0.b, arg_0.c, arg_0.d);
    let var_3 = arg_0;
    var_2 = var_3;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-875f - var_3.c), var_3.c) * vec2<f32>(_wgslsmith_f_op_f32(max(-619f, _wgslsmith_f_op_f32(-arg_0.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c - -977f)))));
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    let var_0 = Struct_3(any(vec2<bool>(all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false))), false)), abs(~vec2<i32>(u_input.a, ~u_input.a)), _wgslsmith_f_op_f32(exp2(arg_0.x)), Struct_2(select(_wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, 1u, 1u, 41446u), vec4<u32>(0u, 60881u, 1u, 21441u), vec4<bool>(true, true, false, false)), vec4<u32>(1u, 1u, 1u, 1u)), 21909u, true), u_input.b.x));
    let var_1 = var_0;
    let var_2 = vec2<bool>(!(1u >= var_1.d.a), all(!vec2<bool>(false, !var_1.a)));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(Struct_3(true | var_0.a, var_1.b, _wgslsmith_f_op_f32(trunc(439f)), var_1.d)))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c + var_1.c) * _wgslsmith_f_op_f32(ceil(arg_0.x)))), var_0.c));
    var var_4 = var_1.b;
    return ~_wgslsmith_div_u32(~45828u, var_1.d.a << (_wgslsmith_dot_vec4_u32(select(vec4<u32>(17508u, var_1.d.a, var_1.d.a, 70696u), vec4<u32>(4294967295u, 25250u, var_1.d.a, 32373u), vec4<bool>(false, true, var_1.a, var_0.a)), ~vec4<u32>(18678u, var_1.d.a, var_0.d.a, 19656u)) % 32u));
}

fn func_1(arg_0: bool) -> Struct_2 {
    let var_0 = _wgslsmith_mod_vec3_u32(select(vec3<u32>(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(9203u, 4294967295u), vec2<u32>(21814u, 1u))), 2372u, ~firstLeadingBit(4294967295u)), vec3<u32>(~7673u, ~_wgslsmith_clamp_u32(0u, 16085u, 4294967295u), firstLeadingBit(~1u)), !(!select(vec3<bool>(false, true, arg_0), vec3<bool>(false, true, false), arg_0))), vec3<u32>(abs(68253u), 1u, func_3(_wgslsmith_f_op_vec2_f32(func_2(Struct_3(false, u_input.b.zx, -719f, Struct_2(1u, 26257i)))))));
    var var_1 = var_0;
    var_1 = max(firstLeadingBit(~_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, var_1.x, var_0.x), vec3<u32>(var_0.x, var_0.x, var_1.x))), ~(~vec3<u32>(var_1.x, 4294967295u, 4294967295u))) ^ vec3<u32>(var_0.x, var_1.x, ~_wgslsmith_mult_u32(4294967295u, 1u));
    var_1 = vec3<u32>(_wgslsmith_add_u32(func_3(vec2<f32>(1f, 1736f)), ~firstTrailingBit(84769u)), var_0.x, ~_wgslsmith_mod_u32(select(var_0.x, 4294967295u, arg_0), 2932u) | ~var_1.x);
    var_1 = var_0;
    return Struct_2(~1u, max(select(u_input.a, u_input.b.x, abs(u_input.b.x) <= _wgslsmith_div_i32(u_input.b.x, -31355i)), u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1173f * 1174f))))));
    let var_1 = func_1(all(vec4<bool>(false, true, false, any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false)))));
    var var_2 = var_1;
    var var_3 = abs(-1i) & u_input.a;
    let var_4 = select(_wgslsmith_mult_vec3_u32(max(vec3<u32>(var_2.a, select(60006u, 23573u, false), var_1.a ^ var_2.a), ~(~vec3<u32>(var_2.a, 4094u, 0u))), ~vec3<u32>(var_1.a, 1u, _wgslsmith_mult_u32(0u, 1u))), vec3<u32>(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a, 4294967295u, var_2.a), ~vec3<u32>(var_2.a, var_2.a, var_2.a))), 1u, var_2.a), vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), any(vec2<bool>(true, true)), select(!(1798f == var_0), true, !any(vec4<bool>(false, false, true, false)))));
    let var_5 = vec4<bool>(true, 4294967295u >= ~(~_wgslsmith_div_u32(4294967295u, var_1.a)), true, false);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_1.b, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b, var_2.b, var_2.b, var_2.b) ^ u_input.b, _wgslsmith_mod_vec4_i32(vec4<i32>(-31996i, -48891i, var_2.b, -23584i), vec4<i32>(u_input.a, -2147483647i, 0i, 41199i)))), -1i, -(u_input.a >> ((0u ^ var_1.a) % 32u))), var_4, _wgslsmith_clamp_u32(16322u, 46081u, 9043u));
}

