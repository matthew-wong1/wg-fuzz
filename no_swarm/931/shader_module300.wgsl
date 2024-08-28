struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: bool,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
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

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_5) -> bool {
    let var_0 = arg_0.yy;
    let var_1 = var_0.x;
    let var_2 = vec2<i32>(-2147483647i, firstTrailingBit(-3037i));
    let var_3 = _wgslsmith_f_op_f32(108f * 839f);
    let var_4 = !(!vec2<bool>(true, select(4294967295u <= arg_2.d.d.c, true, arg_2.b.a)));
    return true;
}

fn func_2() -> vec3<bool> {
    var var_0 = !select(vec4<bool>(true, true, true, true), vec4<bool>(false, select(true, true, true), true, false), false);
    var_0 = vec4<bool>(!any(vec3<bool>(u_input.b >= 2147483647i, all(var_0.zxz), all(vec4<bool>(var_0.x, false, true, var_0.x)))), _wgslsmith_mult_u32(_wgslsmith_div_u32(~u_input.c.x, u_input.c.x), ~abs(26550u)) <= 62320u, true, func_3(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, -2147483647i, 1i), vec3<i32>(~(-75789i), ~(-2147483647i), ~17627i), vec3<i32>(u_input.b, u_input.b, -1i)), Struct_1(2147483647i, u_input.a.x, ~0u << (_wgslsmith_add_u32(0u, u_input.c.x) % 32u), u_input.c.x, -801f), Struct_5(20083i, Struct_4(true), all(vec3<bool>(var_0.x, var_0.x, var_0.x)), Struct_3(Struct_2(u_input.b, 1117f, Struct_1(-51532i, u_input.a.x, 31812u, 4294967295u, -224f), 0u), Struct_1(2147483647i, u_input.a.x, 8969u, 4294967295u, 2224f), Struct_1(u_input.b, u_input.a.x, u_input.c.x, 0u, 240f), Struct_1(u_input.b, u_input.c.x, 1u, u_input.a.x, 405f), vec3<i32>(u_input.b, -33956i, -17795i) | vec3<i32>(31844i, 4304i, -2147483647i)))));
    var_0 = vec4<bool>(true, false, false, true);
    var var_1 = Struct_4(true);
    let var_2 = u_input.c.ywz;
    return select(select(select(!vec3<bool>(var_0.x, var_0.x, var_0.x), select(select(vec3<bool>(true, var_1.a, var_0.x), vec3<bool>(var_0.x, false, var_0.x), var_1.a), select(vec3<bool>(var_1.a, var_1.a, var_1.a), var_0.xwz, var_0.x), var_0.wyx), !select(vec3<bool>(var_0.x, false, true), vec3<bool>(false, var_1.a, true), true)), !var_0.zzz, select(false, true, var_1.a)), var_0.wzy, vec3<bool>(true | !(!var_1.a), true, var_0.x));
}

fn func_1(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    var var_0 = arg_1.xyx;
    var_0 = select(reverseBits(~u_input.a.xyx), arg_1.xyx, !(!select(!vec3<bool>(true, arg_0.a, arg_0.a), !vec3<bool>(arg_0.a, true, arg_0.a), arg_0.a && true)));
    var_0 = vec3<u32>(1u, _wgslsmith_dot_vec4_u32(select(~arg_1, vec4<u32>(0u ^ arg_3.c, 82024u, 4294967295u, u_input.c.x ^ arg_3.b), vec4<bool>(true, arg_0.a, all(vec3<bool>(arg_0.a, arg_0.a, arg_0.a)), u_input.a.x > 6577u)), ((vec4<u32>(arg_1.x, arg_2.c.b, 1u, var_0.x) ^ u_input.c) ^ vec4<u32>(1u, arg_2.c.b, var_0.x, 49123u)) ^ arg_1), 37268u << (~arg_2.d % 32u));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_3.e - -108f), _wgslsmith_f_op_f32(abs(1000f))));
    var var_2 = arg_0;
    return any(vec2<bool>(all(func_2()), !func_3(vec3<i32>(1i, u_input.b, 1i) ^ vec3<i32>(0i, -16449i, arg_3.a), Struct_1(39775i, arg_3.b, arg_3.c, arg_3.c, -725f), Struct_5(-8243i, Struct_4(arg_0.a), arg_0.a, Struct_3(Struct_2(-21915i, arg_2.c.e, Struct_1(u_input.b, var_0.x, 27105u, 0u, arg_3.e), arg_3.c), Struct_1(0i, var_0.x, var_0.x, 0u, var_1), Struct_1(arg_2.c.a, 20079u, arg_2.d, 4294967295u, var_1), Struct_1(u_input.b, arg_2.c.b, 1u, 42112u, -663f), vec3<i32>(arg_3.a, arg_3.a, -2147483647i))))));
}

fn func_4(arg_0: bool, arg_1: vec3<u32>) -> Struct_2 {
    let var_0 = vec2<bool>(!(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(640f)))) >= 1f), !any(vec2<bool>(true, arg_0)) | !(!func_2().x));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(319f, -795f, 1000f, 213f) + vec4<f32>(1321f, 353f, -168f, -367f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-823f, 1004f, -121f, 964f))))));
    let var_2 = arg_0;
    let var_3 = true;
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, _wgslsmith_f_op_f32(var_1.x + 1523f), var_1.x, var_1.x)) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 467f, var_1.x, 283f) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1222f, var_1.x, var_1.x, var_1.x))))))));
    return Struct_2(-1026i, var_1.x, Struct_1(~(-(-2147483647i ^ u_input.b)), 0u, 0u, 106006u, _wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -196f), select(u_input.c.x, 20825u, false) < arg_1.x))), _wgslsmith_sub_u32(~u_input.a.x, arg_1.x));
}

fn func_5(arg_0: Struct_3, arg_1: bool) -> Struct_2 {
    let var_0 = Struct_4(any(vec2<bool>(!any(vec2<bool>(arg_1, arg_1)), true)));
    var var_1 = Struct_5(~_wgslsmith_clamp_i32(2147483647i, -(arg_0.c.a >> (20122u % 32u)), max(-arg_0.e.x, _wgslsmith_sub_i32(0i, -12163i))), Struct_4(false), true, arg_0);
    var_1 = Struct_5(_wgslsmith_sub_i32(-13798i, u_input.b), Struct_4(!((43822i > arg_0.b.a) || false)), false, arg_0);
    return func_4(true, ~(vec3<u32>(~var_1.d.a.d, arg_0.d.b, u_input.c.x << (arg_0.d.b % 32u)) ^ select(vec3<u32>(15926u, u_input.c.x, u_input.c.x) | vec3<u32>(arg_0.a.c.b, u_input.a.x, arg_0.c.b), _wgslsmith_add_vec3_u32(vec3<u32>(49325u, 4294967295u, 75139u), vec3<u32>(1u, arg_0.a.c.c, 1u)), select(vec3<bool>(true, true, false), vec3<bool>(false, arg_1, true), vec3<bool>(true, arg_1, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_3(func_4(!func_1(Struct_4(true), u_input.a, Struct_2(u_input.b, 1000f, Struct_1(1i, 0u, u_input.a.x, 4294967295u, 227f), 4294967295u), Struct_1(-58853i, 1u, u_input.a.x, u_input.c.x, -638f)), _wgslsmith_clamp_vec3_u32(min(vec3<u32>(9762u, u_input.c.x, 0u), u_input.c.zxw), vec3<u32>(4294967295u, u_input.c.x, 1u), firstTrailingBit(u_input.a.xxz))), func_4(~u_input.a.x < _wgslsmith_add_u32(u_input.a.x, u_input.c.x), countOneBits(vec3<u32>(u_input.a.x, u_input.a.x, 33323u))).c, func_4(false, u_input.a.wxy).c, Struct_1(countOneBits(u_input.b), 1u, _wgslsmith_dot_vec3_u32(u_input.c.wzy, u_input.a.yzz) & (u_input.a.x & 0u), func_4(true, countOneBits(vec3<u32>(u_input.c.x, u_input.c.x, 0u))).c.b, -136f), vec3<i32>(-10132i, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 0i, -1i, u_input.b), vec4<i32>(u_input.b, -41533i, -37858i, u_input.b)), ~2147483647i), firstLeadingBit(u_input.b))), true);
    var var_1 = Struct_2(select(abs(-12671i), -var_0.a, true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_0.c.e)))), func_4(!(!all(vec3<bool>(true, true, false))), vec3<u32>(select(var_0.d, 1u, true), 63007u, func_4(any(vec4<bool>(false, false, false, false)), u_input.c.xyx).d)).c, ~var_0.c.d);
    var var_2 = Struct_5(min(_wgslsmith_sub_i32(var_1.c.a, var_1.c.a), u_input.b), Struct_4(true), true, Struct_3(Struct_2(var_1.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, var_1.c.e))), Struct_1(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d, var_1.d, var_0.d, 24595u), vec4<u32>(var_1.c.b, 26263u, var_1.c.c, 4294967295u)), u_input.a.x, 4294967295u, var_0.c.e), ~u_input.a.x), var_0.c, var_1.c, var_1.c, _wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(u_input.b, u_input.b, 1i)), -vec3<i32>(var_1.a, var_0.c.a, var_1.c.a) | _wgslsmith_div_vec3_i32(vec3<i32>(var_0.c.a, var_1.c.a, -18398i), vec3<i32>(var_0.a, var_1.c.a, -2147483647i)))));
    var var_3 = Struct_5(var_0.a, Struct_4(true), false, var_2.d);
    var var_4 = reverseBits(-vec4<i32>(-50808i, var_1.a, ~(u_input.b << (var_1.d % 32u)), ~u_input.b));
    var_4 = vec4<i32>(var_1.c.a, var_2.a, -2066i, 22774i);
    var_1 = Struct_2(86612i, _wgslsmith_div_f32(1000f, -1245f), func_4(false, u_input.c.yww).c, func_4(any(vec4<bool>(!var_3.b.a, any(vec4<bool>(true, true, true, var_3.c)), false, true)), ~vec3<u32>(1u, 1u, 1u)).c.c);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~(~1u)));
}

