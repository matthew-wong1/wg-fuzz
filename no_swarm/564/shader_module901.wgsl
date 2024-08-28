struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32, arg_1: vec3<u32>, arg_2: vec2<f32>) -> i32 {
    let var_0 = ~_wgslsmith_sub_vec4_u32(~abs(_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.x, 1u, 16370u, arg_0), vec4<u32>(arg_1.x, arg_1.x, 0u, 1u))), vec4<u32>(0u, countOneBits(arg_1.x), 31076u, 1u));
    let var_1 = _wgslsmith_clamp_i32(~(-u_input.a.x), 0i, -_wgslsmith_sub_i32(i32(-1i) * -u_input.a.x, _wgslsmith_div_i32(~u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.a.x), u_input.a.yz))));
    var var_2 = ~1u;
    var_2 = countOneBits(_wgslsmith_dot_vec3_u32(firstLeadingBit(abs(vec3<u32>(arg_1.x, 35727u, 34966u))), _wgslsmith_div_vec3_u32(u_input.c, vec3<u32>(~arg_1.x, _wgslsmith_add_u32(u_input.c.x, 1u), reverseBits(4294967295u)))));
    var var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(select(arg_2, vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_div_f32(-743f, arg_2.x), false))), vec2<bool>(any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), false)), all(vec2<bool>(true, true)) || false))), any(select(select(vec4<bool>(false, false, true, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true)), vec4<bool>(false, all(vec4<bool>(false, false, false, true)), u_input.a.x > -34959i, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))), _wgslsmith_dot_vec2_u32(reverseBits(~(~u_input.d)), ~vec2<u32>(_wgslsmith_add_u32(68705u, 1u), var_0.x)), Struct_1(1054f));
    return -23468i;
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> Struct_2 {
    var var_0 = arg_0;
    var_0 = _wgslsmith_f_op_f32(-arg_0);
    let var_1 = !(!any(vec3<bool>(false, true, false))) & false;
    let var_2 = (~(-min(u_input.b, u_input.a.x)) & -2147483647i) == u_input.b;
    return Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0))))))), _wgslsmith_mult_vec3_i32(vec3<i32>(-func_3(arg_2, vec3<u32>(4294967295u, arg_2, u_input.d.x), vec2<f32>(arg_0, 919f)), -u_input.a.x & u_input.b, u_input.a.x), -vec3<i32>(-58393i, -u_input.b, u_input.a.x | -25076i)), _wgslsmith_clamp_i32(u_input.a.x, -(~(-40740i)), -2340i) & -63393i, 0i);
}

fn func_1(arg_0: bool, arg_1: bool) -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) + _wgslsmith_f_op_f32(-1f));
    let var_1 = func_2(-1027f, 1u, 4294967295u, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(sign(-649f)))));
    let var_2 = var_1;
    let var_3 = Struct_1(var_0);
    let var_4 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_3.a, var_2.a)))), -1177f), !(!(_wgslsmith_mod_u32(u_input.c.x, u_input.d.x) == 73977u)), u_input.d.x, var_3);
    return !arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(abs(firstTrailingBit(u_input.c.x)) <= ~98955u, select(true, false, select(false, false, false) | func_1(false, true)), any(vec2<bool>(true, true)), all(vec3<bool>(true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(i32(-1i) * -2147483647i, -28639i ^ (~u_input.b ^ (u_input.a.x << (u_input.c.x % 32u))), u_input.a.x, _wgslsmith_mod_i32(_wgslsmith_mod_i32(-18907i, u_input.b), _wgslsmith_mod_i32(~2147483647i, _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, -20197i)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-891f + 773f), 1258f)), select(4294967295u, ~abs(u_input.c.x) >> (4294967295u % 32u), firstTrailingBit(0u & u_input.c.x) <= ~1u), _wgslsmith_dot_vec4_i32(firstLeadingBit(u_input.a), select(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b) >> (~vec4<u32>(u_input.d.x, 10496u, u_input.c.x, 33431u) % vec4<u32>(32u)), min(vec4<i32>(u_input.a.x, -2147483647i, u_input.b, 24180i), vec4<i32>(u_input.a.x, 1i, u_input.a.x, -1i)) | u_input.a, 4294967295u != (4294967295u >> (u_input.d.x % 32u)))));
}

