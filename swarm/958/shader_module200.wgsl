struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: f32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: vec4<bool>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_4) -> vec2<bool> {
    let var_0 = select(vec4<i32>(abs(-(u_input.b >> (37568u % 32u))), 1i, select(u_input.e, -1i, arg_2.b.a.b.x), u_input.b), abs(_wgslsmith_add_vec4_i32(min(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 66176i, 57156i, -9893i), vec4<i32>(u_input.e, u_input.a, 0i, u_input.b)), firstLeadingBit(vec4<i32>(u_input.a, -71376i, u_input.a, -2147483647i))), vec4<i32>(26472i, 2147483647i, u_input.a | u_input.a, _wgslsmith_mod_i32(u_input.a, 2147483647i)))), !(!(!(!vec4<bool>(arg_2.b.a.b.x, true, arg_2.b.a.b.x, arg_2.b.a.b.x)))));
    var var_1 = Struct_3(firstTrailingBit(max(u_input.c, max(vec3<u32>(71323u, 1u, u_input.c.x) ^ u_input.c, _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.a.x, 1u, u_input.c.x), vec3<u32>(4294967295u, 0u, 4294967295u), u_input.c)))), 292f, Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-651f + 986f))), arg_2.b.a.b, arg_2.b.a.d.x, _wgslsmith_f_op_vec4_f32(-arg_2.b.a.d))), 227f);
    var_1 = Struct_3(arg_2.a, _wgslsmith_f_op_f32(-1522f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(116f * arg_1) - _wgslsmith_f_op_f32(arg_2.b.a.d.x * var_1.d)))), Struct_2(arg_2.b.a), _wgslsmith_f_op_f32(select(arg_1, 171f, any(select(arg_2.b.a.b, select(var_1.c.a.b, arg_2.b.a.b, var_1.c.a.b), any(vec4<bool>(arg_0.x, var_1.c.a.b.x, arg_0.x, arg_2.b.a.b.x)))))));
    var var_2 = Struct_3(_wgslsmith_sub_vec3_u32(~(~min(vec3<u32>(var_1.a.x, 71853u, var_1.a.x), vec3<u32>(4294967295u, 1u, 4277u))), vec3<u32>(~arg_2.a.x, firstTrailingBit(var_1.a.x), firstLeadingBit(83351u)) << (_wgslsmith_mult_vec3_u32(abs(vec3<u32>(4294967295u, 3930u, 15186u)), arg_2.a) % vec3<u32>(32u))), _wgslsmith_div_f32(arg_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_1, _wgslsmith_div_f32(-1000f, var_1.b))), _wgslsmith_f_op_f32(-1f))), Struct_2(arg_2.b.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)));
    let var_3 = var_2.c.a.d.zyz;
    return vec2<bool>(any(vec2<bool>(true, all(var_1.c.a.b))), any(!vec4<bool>(true, true, all(vec4<bool>(var_1.c.a.b.x, arg_2.b.a.b.x, true, true)), true & var_2.c.a.b.x)));
}

fn func_2() -> Struct_1 {
    let var_0 = -(abs(-(~vec4<i32>(u_input.e, -5884i, 2995i, u_input.b))) << (min(select(~vec4<u32>(u_input.c.x, 2680u, u_input.d, u_input.c.x), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, u_input.d, 0u, u_input.d), vec4<u32>(4294967295u, 2280u, 0u, 0u)), vec4<bool>(true, true, true, true)), ~select(vec4<u32>(u_input.d, 19331u, 37263u, u_input.d), vec4<u32>(0u, u_input.d, 17040u, u_input.c.x), vec4<bool>(false, false, true, false))) % vec4<u32>(32u)));
    let var_1 = Struct_4(~vec3<u32>(firstLeadingBit(u_input.d), 146219u, _wgslsmith_add_u32(select(u_input.d, u_input.c.x, true), u_input.c.x)), Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -117f) + _wgslsmith_f_op_f32(-1954f - 1087f)), func_3(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), -2234f, Struct_4(u_input.c, Struct_2(Struct_1(138f, vec2<bool>(false, false), 959f, vec4<f32>(-1170f, -1799f, 680f, -297f))))), -231f, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-870f, -353f, 1167f, -653f) + vec4<f32>(323f, -393f, 2139f, -525f)))))));
    var var_2 = u_input.e;
    let var_3 = Struct_5(!(!var_1.b.a.b.x), !(!(!vec4<bool>(true, var_1.b.a.b.x, var_1.b.a.b.x, true))), vec3<u32>(~abs(~1u), max(firstLeadingBit(reverseBits(1693u)), _wgslsmith_sub_u32(u_input.c.x, 4294967295u)), 4294967295u));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b.a.c), _wgslsmith_f_op_f32(-367f + var_1.b.a.c))), var_1.b.a.c)), func_3(vec3<bool>(all(vec3<bool>(var_1.b.a.b.x, var_3.b.x, var_1.b.a.b.x)), !(var_3.c.x >= var_3.c.x), !var_3.b.x), var_1.b.a.d.x, Struct_4(var_1.a | _wgslsmith_mod_vec3_u32(vec3<u32>(7084u, u_input.c.x, 54330u), vec3<u32>(0u, 66973u, u_input.d)), Struct_2(var_1.b.a))), -146f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(371f, var_1.b.a.d.x, var_1.b.a.d.x, var_1.b.a.d.x))), _wgslsmith_f_op_vec4_f32(var_1.b.a.d + vec4<f32>(var_1.b.a.a, -356f, var_1.b.a.a, var_1.b.a.d.x))), vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.a.d.x), -456f, var_1.b.a.c, _wgslsmith_f_op_f32(trunc(var_1.b.a.a))))));
    return var_1.b.a;
}

fn func_1() -> Struct_4 {
    var var_0 = -741f;
    let var_1 = func_2();
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.x) * _wgslsmith_f_op_f32(var_1.d.x * var_1.c)))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-765f, var_1.d.x)))));
    var var_2 = Struct_2(func_2());
    var_0 = var_1.d.x;
    return Struct_4(max(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(62035u, u_input.c.x, 17963u, u_input.d), vec4<u32>(1u, 23390u, u_input.d, u_input.c.x)), 3924u), ~u_input.c.x, ~_wgslsmith_mult_u32(2231u, u_input.d)), u_input.c), Struct_2(Struct_1(_wgslsmith_f_op_f32(var_2.a.a - _wgslsmith_f_op_f32(round(var_1.d.x))), func_3(select(vec3<bool>(var_1.b.x, var_2.a.b.x, true), vec3<bool>(true, var_2.a.b.x, true), false), _wgslsmith_div_f32(-792f, var_1.a), Struct_4(u_input.c, Struct_2(Struct_1(1086f, vec2<bool>(true, var_1.b.x), var_1.d.x, var_2.a.d)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-586f - var_1.c), var_2.a.d.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_2.a.d, var_1.d)))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3) -> Struct_5 {
    let var_0 = -(~(abs(vec3<i32>(u_input.b, u_input.b, 0i)) ^ vec3<i32>(u_input.b, u_input.e, u_input.e)) | (vec3<i32>(-1i) * -vec3<i32>(2147483647i, u_input.e, u_input.b)));
    var var_1 = arg_0.b.a;
    var_1 = func_1().b.a;
    var var_2 = 0u;
    var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(1u, ~(~u_input.c.x), _wgslsmith_mult_u32(u_input.d, 19898u) ^ firstLeadingBit(9005u)), _wgslsmith_add_u32(1u, _wgslsmith_div_u32(arg_1.a.x, 4294967295u)) | u_input.d, 41569u, ((arg_1.a.x << (0u % 32u)) << (_wgslsmith_sub_u32(u_input.d, 22941u) % 32u)) | (firstLeadingBit(u_input.c.x) ^ ~arg_1.a.x)), firstLeadingBit(~(vec4<u32>(u_input.d, 53351u, 5886u, 1u) ^ min(vec4<u32>(117614u, arg_1.a.x, arg_0.a.x, 41742u), vec4<u32>(66124u, 66874u, 235u, 4294967295u)))));
    return Struct_5(var_1.b.x, select(vec4<bool>(any(select(vec4<bool>(false, arg_1.c.a.b.x, var_1.b.x, false), vec4<bool>(false, false, false, true), true)), any(arg_0.b.a.b), any(select(vec3<bool>(arg_0.b.a.b.x, var_1.b.x, false), vec3<bool>(var_1.b.x, arg_0.b.a.b.x, true), vec3<bool>(true, true, arg_1.c.a.b.x))), var_1.b.x), vec4<bool>(var_1.b.x, all(select(vec4<bool>(arg_1.c.a.b.x, arg_0.b.a.b.x, arg_0.b.a.b.x, false), vec4<bool>(true, false, arg_1.c.a.b.x, var_1.b.x), false)), var_1.b.x, _wgslsmith_div_f32(var_1.a, arg_0.b.a.a) > arg_1.d), select(!select(vec4<bool>(arg_0.b.a.b.x, false, var_1.b.x, true), vec4<bool>(var_1.b.x, false, arg_0.b.a.b.x, false), vec4<bool>(false, var_1.b.x, false, arg_0.b.a.b.x)), vec4<bool>(all(vec2<bool>(false, arg_0.b.a.b.x)), true, u_input.c.x >= u_input.c.x, true), select(!vec4<bool>(false, var_1.b.x, var_1.b.x, true), vec4<bool>(false, false, var_1.b.x, arg_0.b.a.b.x), true))), u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.e;
    let var_1 = func_4(func_1(), Struct_3(_wgslsmith_mod_vec3_u32(u_input.c, ~vec3<u32>(u_input.d, u_input.c.x, u_input.c.x)), _wgslsmith_f_op_f32(floor(2097f)), Struct_2(func_1().b.a), 911f));
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(func_1().b.a.d.ww));
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + func_2().d.x))), var_2.x);
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), -1049f);
    let var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.x, var_2.x, var_2.x, 491f), vec4<f32>(var_2.x, 425f, var_2.x, 928f)))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(689f, var_2.x, 136f, 538f), vec4<f32>(var_2.x, -1713f, var_2.x, var_2.x)))))))));
    var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3.wy)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(-1699f, var_3.x), var_3.yz))))), var_3.ww));
    let var_4 = !(var_2.x <= 2060f);
    let var_5 = Struct_3(_wgslsmith_add_vec3_u32(~(~u_input.c), var_1.c | ~_wgslsmith_add_vec3_u32(u_input.c, var_1.c)), -565f, func_1().b, _wgslsmith_f_op_f32(ceil(var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(~vec2<i32>(~u_input.e, -80300i & u_input.b), select(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0, u_input.a), vec2<i32>(-18329i, u_input.a), vec2<i32>(-16386i, -14687i)) ^ vec2<i32>(u_input.a, 12219i), firstTrailingBit(vec2<i32>(79746i, -46744i)), func_2().b)), ~0i, ~vec3<u32>(_wgslsmith_sub_u32(79927u, var_5.a.x), 1u, ~var_1.c.x), _wgslsmith_mod_i32(abs(2147483647i), u_input.e));
}

