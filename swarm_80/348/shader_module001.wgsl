struct Struct_1 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: i32,
    d: f32,
    e: i32,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: vec2<u32>, arg_3: Struct_1) -> f32 {
    var var_0 = reverseBits(arg_2);
    var_0 = min(_wgslsmith_div_vec2_u32(max(vec2<u32>(35869u, ~1u), abs(vec2<u32>(1u, 4294967295u) & arg_2)), ~(~arg_2)), ~vec2<u32>(~arg_0.b, max(var_0.x & arg_2.x, firstLeadingBit(var_0.x))));
    let var_1 = ~firstTrailingBit(vec3<u32>(select(_wgslsmith_mult_u32(arg_2.x, arg_0.b), u_input.b, true), var_0.x, _wgslsmith_add_u32(arg_0.b, 1u) & 33903u));
    var var_2 = _wgslsmith_f_op_vec2_f32(-arg_1.yy);
    var var_3 = arg_1.x;
    return 1000f;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: vec2<bool>) -> Struct_3 {
    var var_0 = Struct_2(-3382f, ~36297u, arg_2);
    var var_1 = Struct_3(any(vec2<bool>(arg_2.x, all(!vec3<bool>(arg_2.x, false, false)))), u_input.b | (~u_input.d >> (1u % 32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-717f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_0.a)), _wgslsmith_f_op_f32(func_3(Struct_3(true, var_0.b, vec4<f32>(448f, -1657f, arg_1.x, 999f)), arg_1.xxz, vec2<u32>(4294967295u, u_input.d), Struct_1(true, vec2<bool>(arg_2.x, true)))))), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(sign(var_0.a)))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(792f, 774f, arg_1.x, var_0.a)))))));
    var_0 = Struct_2(var_1.c.x, ~u_input.b, select(!vec2<bool>(var_0.c.x, !var_0.c.x), arg_2, !var_0.c));
    var var_2 = select(vec4<bool>(true, var_1.a, select(false, var_0.c.x, true), 50642u != _wgslsmith_mod_u32(select(var_0.b, 15021u, var_1.a), ~u_input.b)), vec4<bool>(true, true | var_0.c.x, var_1.a, true), var_1.a || true);
    let var_3 = ~vec2<i32>(22633i, -19860i);
    return Struct_3(false, firstTrailingBit(4294967295u), arg_1);
}

fn func_1(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: i32) -> Struct_3 {
    var var_0 = 34u;
    return func_2(u_input.a.zx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-883f, 1042f, -2091f, arg_0.a) * vec4<f32>(-295f, -1277f, 545f, arg_0.a)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(786f, arg_0.a, 153f, arg_0.a))))))), arg_0.c);
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(func_2(u_input.a.zy, arg_0.c, vec2<bool>(true, true)).c.x + _wgslsmith_f_op_f32(arg_0.c.x * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.c.x * 360f))))), u_input.d << (_wgslsmith_clamp_u32(6943u, 11274u >> (~arg_0.b % 32u), arg_0.b ^ u_input.b) % 32u), vec2<bool>(false, true));
    var var_1 = 1u;
    let var_2 = func_2(u_input.a.yy, vec4<f32>(-1329f, _wgslsmith_f_op_f32(select(var_0.a, _wgslsmith_f_op_f32(min(arg_0.c.x, _wgslsmith_f_op_f32(round(arg_0.c.x)))), !any(vec4<bool>(arg_0.a, false, arg_0.a, arg_0.a)))), -1873f, -1130f), vec2<bool>(true, true));
    let var_3 = 572f;
    var_1 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~min(~vec3<u32>(81731u, u_input.d, var_0.b), vec3<u32>(var_0.b, arg_0.b, 19552u) << (vec3<u32>(1u, 25414u, arg_0.b) % vec3<u32>(32u))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(33404u, var_0.b, arg_0.b), vec3<u32>(var_2.b, var_0.b, var_0.b))), ~(~arg_0.b), ~var_2.b);
    return Struct_2(func_2(_wgslsmith_add_vec2_i32(u_input.a.zx, u_input.a.zz), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(366f, _wgslsmith_f_op_f32(trunc(arg_0.c.x)), 233f, 305f), _wgslsmith_f_op_vec4_f32(vec4<f32>(697f, 477f, -1061f, 529f) + vec4<f32>(-412f, var_0.a, -2112f, arg_0.c.x)), vec4<bool>(all(vec4<bool>(true, false, var_0.c.x, true)), all(vec3<bool>(arg_1, true, true)), u_input.c <= -1i, var_0.c.x))), !vec2<bool>(arg_1, 483f < var_3)).c.x, arg_0.b, !select(vec2<bool>(!var_2.a, select(true, arg_1, true)), vec2<bool>(u_input.a.x < u_input.a.x, select(var_0.c.x, false, true)), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    let var_1 = u_input.a.x;
    let var_2 = func_4(func_1(Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(231f - -183f), -1175f), ~u_input.d, vec2<bool>(true, false)), vec3<bool>(true, !select(true, false, false), true), _wgslsmith_add_i32(firstTrailingBit(-58005i), -2147483647i) & 8619i), any(vec3<bool>(false, false, true)));
    let var_3 = ~abs(select(u_input.a.wyz, u_input.a.xxz, var_2.c.x));
    var_0 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, -101f)), vec2<f32>(941f, -2082f)) + vec2<f32>(_wgslsmith_div_f32(1098f, -442f), var_2.a)) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2.a, 840f))) - vec2<f32>(1107f, -703f))))), _wgslsmith_sub_vec4_i32(u_input.a | u_input.a, ~_wgslsmith_div_vec4_i32(u_input.a, u_input.a) << (vec4<u32>(var_2.b, var_2.b, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.d, var_2.b), vec3<u32>(var_2.b, u_input.d, u_input.d)), u_input.d) % vec4<u32>(32u))), -46105i, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-385f, var_2.a))))), ~(i32(-1i) * -42487i));
}

