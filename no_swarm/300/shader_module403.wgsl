struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    var var_0 = Struct_2(Struct_1(33343i, ~(~(~u_input.c)), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(1020f)))), 1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -898f), _wgslsmith_f_op_f32(ceil(-1408f)))), _wgslsmith_f_op_f32(step(-664f, _wgslsmith_f_op_f32(select(-872f, 220f, true))))), 0u & u_input.b.x), vec4<u32>(31669u ^ _wgslsmith_sub_u32(1u, _wgslsmith_mult_u32(u_input.b.x, 0u)), ~37605u, ~_wgslsmith_add_u32(26920u, 38928u), 1u));
    var var_1 = 9348u;
    var var_2 = _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.c.x + -793f)))));
    var_2 = var_0.a.c.x;
    let var_3 = Struct_2(var_0.a, ~(~abs(vec4<u32>(var_0.a.d, u_input.b.x, var_0.a.d, var_0.b.x))));
    return u_input.a;
}

fn func_2(arg_0: bool, arg_1: vec4<i32>, arg_2: i32) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_clamp_i32(min(arg_2, arg_1.x) | u_input.c, select(_wgslsmith_add_i32(u_input.c, -1i), ~(-35935i), any(vec4<bool>(arg_0, arg_0, false, false))), _wgslsmith_add_i32(-u_input.c, arg_1.x >> (4294967295u % 32u))), abs(func_3()), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + vec4<f32>(-220f, 303f, -304f, -645f)))), _wgslsmith_div_u32(~u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(84838u, u_input.b.x, u_input.b.x) ^ vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u), ~vec3<u32>(u_input.b.x, 0u, 48030u)))), countOneBits(~(select(vec4<u32>(u_input.b.x, 0u, 1u, 8809u), vec4<u32>(0u, u_input.b.x, 2211u, u_input.b.x), arg_0) | vec4<u32>(13830u, 21009u, 4294967295u, u_input.b.x))));
    let var_1 = (u_input.b.x ^ ~4294967295u) < var_0.a.d;
    var var_2 = min(arg_1.yww, arg_1.wzx);
    let var_3 = Struct_2(Struct_1(1i, -1i, vec4<f32>(1f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1503f, var_0.a.c.x))), _wgslsmith_f_op_f32(var_0.a.c.x * -1556f), 1628f), countOneBits(0u)), var_0.b);
    var_2 = _wgslsmith_add_vec3_i32(arg_1.xxw, max(~(~firstLeadingBit(vec3<i32>(1i, var_2.x, 2413i))), arg_1.zzw));
    return var_3;
}

fn func_1(arg_0: bool) -> f32 {
    let var_0 = func_2(arg_0, vec4<i32>(~(-48789i), _wgslsmith_clamp_i32(-10117i, -1i, _wgslsmith_clamp_i32(-2147483647i, u_input.c, abs(u_input.e))), _wgslsmith_mod_i32(select(u_input.e, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.e, u_input.e, -3710i), vec4<i32>(u_input.e, 0i, u_input.d.x, -2147483647i)), u_input.e == u_input.d.x), u_input.e), -u_input.d.x), ~(_wgslsmith_clamp_i32(1i, _wgslsmith_div_i32(28196i, -3489i), ~u_input.a) >> (1u % 32u)));
    return var_0.a.c.x;
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: u32, arg_3: Struct_2) -> i32 {
    let var_0 = func_2(!all(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true))), select(_wgslsmith_mult_vec4_i32(vec4<i32>(~(-6828i), firstLeadingBit(u_input.a), u_input.c, _wgslsmith_mult_i32(u_input.c, u_input.d.x)), vec4<i32>(arg_3.a.b, abs(34790i), _wgslsmith_add_i32(-64541i, 2147483647i), -arg_3.a.b)), -_wgslsmith_sub_vec4_i32(vec4<i32>(1191i, arg_3.a.a, -2147483647i, -10549i), vec4<i32>(-1i, arg_3.a.b, 1i, arg_3.a.a)) ^ vec4<i32>(arg_3.a.b, arg_3.a.b, ~2147483647i, arg_3.a.b), vec4<bool>(_wgslsmith_f_op_f32(1359f - 347f) < arg_1, false, true, true)), firstTrailingBit(2147483647i ^ arg_3.a.a)).a;
    let var_1 = all(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, var_0.a < -2147483647i, all(vec4<bool>(false, false, true, true)), any(vec3<bool>(true, true, true))), vec4<bool>(true, true, true, select(false, true, true))));
    let var_2 = -_wgslsmith_div_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(0i, var_0.b, arg_3.a.b) ^ vec3<i32>(30313i, 1i, -2147483647i), vec3<i32>(var_0.a, arg_3.a.a, 1i)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.e, 6675i, arg_3.a.a), vec3<i32>(_wgslsmith_add_i32(arg_3.a.a, u_input.d.x), 1i, -14627i)));
    var var_3 = var_2;
    var var_4 = 716f;
    return _wgslsmith_dot_vec4_i32(-vec4<i32>(_wgslsmith_mult_i32(func_2(true, vec4<i32>(var_0.b, var_2.x, var_0.a, -1i), var_3.x).a.b, 1i), ~(-1i), 2147483647i, var_3.x), vec4<i32>(2147483647i, firstLeadingBit(_wgslsmith_dot_vec4_i32(-vec4<i32>(6395i, arg_3.a.b, -1i, var_0.b), reverseBits(vec4<i32>(-14635i, -2147483647i, -104919i, -19171i)))), _wgslsmith_div_i32(-2147483647i, u_input.a), min(30171i, var_0.a)));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec4<f32>) -> Struct_2 {
    var var_0 = Struct_2(arg_0, ~_wgslsmith_div_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.d, 18881u, 4294967295u, 0u), vec4<u32>(4294967295u, 1u, 2248u, 0u)), vec4<u32>(13381u ^ u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, arg_0.d, u_input.b.x), vec3<u32>(39635u, arg_0.d, arg_0.d)), max(0u, 12148u), 0u)));
    var var_1 = func_2(true, ~(-vec4<i32>(arg_0.a, 1i << (u_input.b.x % 32u), -42058i, arg_0.a ^ var_0.a.a)), u_input.a);
    var_0 = func_2(!any(vec2<bool>(true, true)), ~(~vec4<i32>(firstTrailingBit(arg_1), ~var_0.a.a, func_4(arg_2, var_0.a.c.x, 49435u, Struct_2(Struct_1(18194i, u_input.e, arg_0.c, 1u), var_1.b)), ~arg_1)), firstTrailingBit(arg_1));
    var var_2 = func_2(!any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), false)) & (true || all(vec3<bool>(true, true, true))), abs(-vec4<i32>(func_2(true, vec4<i32>(u_input.e, -2968i, -31118i, var_1.a.b), 0i).a.b, countOneBits(-1i), countOneBits(var_0.a.a), ~var_1.a.b)), ~arg_1).a;
    var var_3 = func_2(true, reverseBits(_wgslsmith_clamp_vec4_i32(~vec4<i32>(2147483647i, 80257i, 1i, 27798i), ~_wgslsmith_div_vec4_i32(vec4<i32>(0i, arg_0.a, -9366i, u_input.c), vec4<i32>(-18556i, 5540i, u_input.e, 81700i)), vec4<i32>(u_input.d.x, 2147483647i, -1i, 32109i) | min(vec4<i32>(arg_0.a, arg_0.a, 2147483647i, 2147483647i), vec4<i32>(14057i, 0i, -21769i, arg_0.b)))), -1i).a;
    return func_2(false, min(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1, i32(-1i) * -1210i, 0i, _wgslsmith_add_i32(-6639i, arg_0.b)), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, -12561i, var_1.a.b, var_1.a.a) << (vec4<u32>(arg_0.d, 24801u, 0u, u_input.b.x) % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(u_input.e, 0i, -2147483647i, arg_1))), vec4<i32>(func_2(true, vec4<i32>(-69589i, u_input.e, 1i, -55475i), arg_1).a.a, ~(-68633i), -1i, -1707i)), vec4<i32>(-51319i ^ var_3.a, -2147483647i, var_1.a.b, 0i)), ~(i32(-1i) * -1991i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_1(u_input.d.x, func_4(vec4<f32>(-1777f, _wgslsmith_f_op_f32(abs(-878f)), _wgslsmith_f_op_f32(func_1(false)), _wgslsmith_f_op_f32(f32(-1f) * -1975f)), _wgslsmith_f_op_f32(-181f * 1000f), ~u_input.b.x, Struct_2(func_2(false, vec4<i32>(4310i, 0i, u_input.d.x, 1i), u_input.d.x).a, vec4<u32>(5507u, u_input.b.x, u_input.b.x, 1u) << (vec4<u32>(u_input.b.x, 12379u, 4294967295u, 0u) % vec4<u32>(32u)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-656f - 289f) * _wgslsmith_f_op_f32(min(1341f, 181f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-130f + -1000f) - 1000f), 535f, _wgslsmith_f_op_f32(f32(-1f) * -754f)), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_add_vec4_u32(vec4<u32>(100964u, 1u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 42475u)), select(vec4<u32>(9378u, u_input.b.x, u_input.b.x, 33501u), vec4<u32>(4294967295u, u_input.b.x, 7221u, 30987u), vec4<bool>(false, true, false, true))), max(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 106690u), vec4<u32>(1u, 4294967295u, 73279u, u_input.b.x), vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x)), vec4<u32>(u_input.b.x, 24296u, 0u, u_input.b.x)))), u_input.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(414f, -341f, -358f, 1000f) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-407f, -508f, -199f, -1373f)))))));
    let var_1 = Struct_2(func_5(func_2(true, firstLeadingBit(vec4<i32>(-1i, u_input.e, -7132i, 2147483647i) << (vec4<u32>(u_input.b.x, 0u, 41639u, u_input.b.x) % vec4<u32>(32u))), _wgslsmith_mod_i32(1i, var_0.a.b)).a, -(u_input.d.x & firstLeadingBit(var_0.a.a)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_0.a.c, var_0.a.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a.c)))).a, vec4<u32>(121295u, func_2(true, _wgslsmith_div_vec4_i32(vec4<i32>(var_0.a.a, 0i, 419i, -1i), vec4<i32>(-462i, u_input.d.x, var_0.a.b, 2147483647i) >> (vec4<u32>(51594u, 35921u, u_input.b.x, u_input.b.x) % vec4<u32>(32u))), ~var_0.a.b).a.d, _wgslsmith_mod_u32(~(~u_input.b.x), ~reverseBits(u_input.b.x)), ~select(u_input.b.x, ~var_0.b.x, any(vec4<bool>(true, false, true, false)))));
    let var_2 = vec3<u32>(var_0.a.d, max(1u, _wgslsmith_dot_vec4_u32(~func_5(var_1.a, 9448i, var_0.a.c).b, vec4<u32>(0u, 1u, ~u_input.b.x, var_1.a.d))), 1u);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(var_0.a.c.x, var_1.a.c.x)))));
    let var_4 = 51177i;
    var_0 = Struct_2(func_2(false, vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -23956i, -27590i, -17715i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, var_1.a.b, -10548i, 20537i), vec4<i32>(2147483647i, -35085i, 59166i, 43462i))), -19662i, firstLeadingBit(35135i | u_input.d.x), _wgslsmith_dot_vec2_i32(u_input.d, reverseBits(vec2<i32>(var_0.a.b, var_0.a.b)))), _wgslsmith_clamp_i32(var_1.a.a, -var_4, ~(-16062i))).a, vec4<u32>(~u_input.b.x, 4294967295u, var_0.a.d, ~_wgslsmith_mod_u32(~66661u, select(var_2.x, var_2.x, false))));
    let x = u_input.a;
    s_output = StorageBuffer(~(0u << (~4294967295u % 32u)), vec4<u32>(~1u, ~countOneBits(0u), _wgslsmith_add_u32(var_2.x, _wgslsmith_add_u32(~43528u, abs(var_2.x))), 0u));
}

