struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: i32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: vec2<f32>) -> vec4<bool> {
    var var_0 = 430f;
    var_0 = _wgslsmith_f_op_f32(min(arg_1.a.d, 390f));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-983f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(626f + -901f)) - _wgslsmith_div_f32(255f, _wgslsmith_f_op_f32(arg_1.a.d - arg_2.x)))) - _wgslsmith_f_op_f32(sign(arg_1.a.d)));
    let var_1 = arg_1.a;
    return select(!vec4<bool>(true, all(!vec3<bool>(false, arg_1.a.b, var_1.a.x)), arg_1.a.a.x, any(!vec4<bool>(false, arg_1.a.b, false, var_1.a.x))), select(!(!vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, arg_1.a.a.x)), vec4<bool>(!(false && var_1.a.x), true, false, _wgslsmith_f_op_f32(-var_1.d) != _wgslsmith_f_op_f32(abs(-481f))), select(select(!vec4<bool>(true, false, var_1.a.x, arg_1.a.b), select(vec4<bool>(var_1.b, true, false, false), vec4<bool>(false, arg_1.a.b, var_1.a.x, arg_1.a.a.x), var_1.b), vec4<bool>(true, true, true, true)), !select(vec4<bool>(var_1.a.x, arg_1.a.a.x, var_1.b, arg_1.a.a.x), vec4<bool>(false, arg_1.a.a.x, false, arg_1.a.b), vec4<bool>(false, false, var_1.a.x, true)), select(!vec4<bool>(true, false, false, arg_1.a.b), select(vec4<bool>(arg_1.a.b, false, arg_1.a.a.x, false), vec4<bool>(var_1.b, false, var_1.a.x, var_1.a.x), var_1.a.x), arg_1.a.b))), vec4<bool>(false, true == any(select(vec2<bool>(false, false), vec2<bool>(var_1.a.x, var_1.b), vec2<bool>(true, false))), true, any(select(select(arg_1.a.a, vec3<bool>(false, false, false), var_1.a.x), vec3<bool>(var_1.a.x, var_1.a.x, arg_1.a.a.x), arg_1.a.b))));
}

fn func_4(arg_0: u32, arg_1: vec4<bool>) -> bool {
    var var_0 = Struct_1(vec3<bool>(true, arg_1.x, func_3(firstTrailingBit(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(1u, 1u))), Struct_2(Struct_1(arg_1.zyz, arg_1.x, -6276i, 359f, -1i)), vec2<f32>(1229f, _wgslsmith_div_f32(377f, -246f))).x), false, max(_wgslsmith_mod_i32(firstLeadingBit(-10314i), u_input.d) & -24985i, u_input.a.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(390f, -529f)), -2908f, arg_1.x)), 588f)))), i32(-1i) * -7496i);
    var var_1 = var_0.e;
    var_0 = Struct_1(select(select(!select(var_0.a, var_0.a, vec3<bool>(false, var_0.a.x, arg_1.x)), var_0.a, var_0.a), var_0.a, func_3(arg_0, Struct_2(Struct_1(vec3<bool>(true, arg_1.x, var_0.a.x), var_0.a.x, 21643i, var_0.d, u_input.a.x)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-881f, var_0.d))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d, 1543f) + vec2<f32>(var_0.d, var_0.d))))).wzz), !(!(!all(arg_1))), ~(-u_input.a.x >> (42787u % 32u)), 412f, -1i);
    var_1 = reverseBits(_wgslsmith_clamp_i32(~(-1i), 2438i, reverseBits(~u_input.d)) >> ((~(~arg_0) & ~_wgslsmith_sub_u32(4294967295u, u_input.b)) % 32u));
    var_0 = Struct_1(!var_0.a, !func_3(arg_0, Struct_2(Struct_1(var_0.a, false, -1i, -973f, 0i)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.d, -1107f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.d, 100f), vec2<f32>(var_0.d, var_0.d), vec2<bool>(false, arg_1.x)))))).x, _wgslsmith_clamp_i32(~(-25193i & u_input.a.x), u_input.d, i32(-1i) * -(~(-13328i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-993f, var_0.d))), _wgslsmith_div_i32(35463i, 27902i) & firstLeadingBit(_wgslsmith_add_i32(-1i, -u_input.a.x)));
    return any(select(var_0.a, var_0.a, select(!(!vec3<bool>(var_0.a.x, false, false)), !arg_1.zww, u_input.a.x != 6059i)));
}

fn func_2(arg_0: i32, arg_1: bool) -> Struct_1 {
    let var_0 = Struct_1(!vec3<bool>(!(27330u == u_input.e), all(vec3<bool>(true, true, true)), false), func_4(_wgslsmith_mod_u32(u_input.c.x, _wgslsmith_div_u32(u_input.c.x, u_input.c.x)) << (1u % 32u), select(select(!vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(arg_1, false, arg_1, arg_1), true), !func_3(u_input.c.x, Struct_2(Struct_1(vec3<bool>(arg_1, false, arg_1), arg_1, -1i, -997f, arg_0)), vec2<f32>(1549f, -1000f)), select(func_3(u_input.b, Struct_2(Struct_1(vec3<bool>(arg_1, true, true), arg_1, 0i, -1593f, arg_0)), vec2<f32>(-176f, -1608f)), !vec4<bool>(false, arg_1, true, arg_1), arg_1))), -2147483647i, -952f, u_input.d);
    let var_1 = ~(-u_input.a.yxw);
    let var_2 = abs(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(var_1, min(u_input.a.xwx, vec3<i32>(arg_0, arg_0, var_0.c)) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.d, -14752i), var_1)), -(-u_input.a.x ^ arg_0), max(reverseBits(~arg_0), -857i)));
    var var_3 = Struct_1(vec3<bool>(select(arg_1, !arg_1, func_3(_wgslsmith_clamp_u32(u_input.c.x, 35159u, 66814u), Struct_2(Struct_1(vec3<bool>(arg_1, arg_1, arg_1), false, arg_0, -1845f, var_0.e)), _wgslsmith_div_vec2_f32(vec2<f32>(197f, 1095f), vec2<f32>(var_0.d, 1812f))).x), 1050f == _wgslsmith_f_op_f32(-var_0.d), any(!var_0.a)), arg_1, -((select(var_1.x, -2147483647i, false) << (~u_input.e % 32u)) ^ u_input.a.x), _wgslsmith_f_op_f32(var_0.d + var_0.d), _wgslsmith_sub_i32(var_2, countOneBits(-(~(-2147483647i)))));
    var_3 = var_0;
    return var_0;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = ~(~u_input.b);
    let var_1 = (~vec4<u32>(_wgslsmith_mult_u32(u_input.c.x, 1u), _wgslsmith_mult_u32(u_input.b, var_0), ~var_0, _wgslsmith_sub_u32(var_0, 19588u)) ^ vec4<u32>(_wgslsmith_add_u32(reverseBits(1u), abs(0u)), abs(u_input.b), var_0, 1u)) << (vec4<u32>(~_wgslsmith_sub_u32(u_input.b, u_input.b) & 67046u, u_input.e, u_input.b, 30372u & _wgslsmith_dot_vec2_u32(u_input.c, reverseBits(vec2<u32>(u_input.b, u_input.c.x)))) % vec4<u32>(32u));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1755f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d * -489f) * arg_0.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2278f - -206f)), 1000f));
    let var_3 = func_2(-1i << (u_input.b % 32u), any(arg_0.a.zz));
    let var_4 = -abs(vec4<i32>(arg_0.c, _wgslsmith_mod_i32(27787i | u_input.d, arg_0.e), abs(u_input.a.x), ~22358i));
    return func_2(arg_0.c, !(var_2.x == var_3.d));
}

fn func_6(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    var var_0 = func_2(9453i, all(vec2<bool>(arg_1.x, any(!arg_1))));
    var_0 = arg_2;
    var_0 = Struct_1(func_5(arg_2).a, !var_0.b, -5674i, func_5(arg_2).d, _wgslsmith_mult_i32(func_5(Struct_1(vec3<bool>(true, true, arg_1.x), arg_2.b, 1i, -1093f, -8297i)).c, select(13944i, _wgslsmith_mod_i32(0i, 33078i), var_0.c != arg_2.c)) >> (~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 5586u, u_input.b, 20238u), vec4<u32>(4294967295u, 16675u, 1u, u_input.c.x)), u_input.c.x) % 32u));
    var_0 = func_2(_wgslsmith_sub_i32(max(var_0.c, var_0.e), _wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_mod_i32(arg_2.c, u_input.a.x), _wgslsmith_sub_i32(12616i, -58184i)), abs(var_0.e ^ var_0.c))), var_0.b);
    var_0 = arg_2;
    return Struct_1(arg_2.a, !(!any(!vec2<bool>(arg_2.a.x, true))), _wgslsmith_div_i32(abs(2147483647i), ~(min(1i, 2147483647i) & ~u_input.d)), -981f, arg_2.c);
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: f32) -> i32 {
    let var_0 = func_6(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-2162f, _wgslsmith_f_op_f32(-arg_2), 332f, _wgslsmith_f_op_f32(arg_2 + arg_2)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(971f, arg_2, -910f, arg_2) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1124f, arg_2, -1120f, -576f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-140f, arg_2, arg_2, -2105f), vec4<f32>(1000f, arg_2, 416f, arg_2))))), true))), vec2<bool>(arg_1, false), func_5(func_2(_wgslsmith_clamp_i32(u_input.d, -100739i, -arg_0), false)), func_5(func_5(func_2(u_input.a.x, arg_1))).d);
    let var_1 = var_0;
    let var_2 = vec4<i32>(var_0.e, countOneBits(abs(var_1.e)), -_wgslsmith_dot_vec2_i32(u_input.a.zz, vec2<i32>(var_1.c, -5324i)) ^ _wgslsmith_div_i32(func_6(vec4<f32>(var_0.d, var_0.d, 934f, -617f), var_0.a.yy, Struct_1(vec3<bool>(var_1.a.x, true, var_0.b), false, -1i, -1005f, 0i), -1571f).c | ~var_1.c, ~_wgslsmith_mult_i32(u_input.a.x, var_1.e)), 1i);
    var var_3 = -29299i;
    let var_4 = Struct_2(func_5(Struct_1(vec3<bool>(!arg_1, !var_1.b, var_0.b), arg_1, func_2(2147483647i, var_1.a.x).e & (2147483647i & var_2.x), _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(var_1.d * 146f)), var_1.e)));
    return abs(~(~var_2.x >> (27586u % 32u)) << (0u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(func_1(u_input.d, !(u_input.e <= u_input.c.x), 1765f), -2147483647i, ~(-(u_input.d >> (23573u % 32u)))) | u_input.a.zxw;
    let var_1 = Struct_1(func_5(func_5(func_6(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-918f, -1124f, 1358f, 834f)), vec2<bool>(true, true), Struct_1(vec3<bool>(true, false, true), true, 2147483647i, -188f, -17726i), _wgslsmith_f_op_f32(min(-988f, -401f))))).a, func_5(func_5(Struct_1(vec3<bool>(true, true, true), false, abs(-2147483647i), 482f, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, 2147483647i, var_0.x), u_input.a.xwz)))).b, var_0.x, -507f, u_input.a.x);
    var var_2 = var_0.x | ((i32(-1i) * -2147483647i) & var_1.c);
    var var_3 = ~vec3<u32>(abs(_wgslsmith_div_u32(abs(u_input.b), 1u)), u_input.c.x, ~u_input.c.x);
    let var_4 = 4263u;
    var_2 = -2368i >> (~u_input.e % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(~select(var_3.zy, ~vec2<u32>(33980u, var_3.x), vec2<bool>(var_1.b, false)), ~reverseBits(_wgslsmith_mod_vec4_u32(max(vec4<u32>(26779u, 0u, 1u, 58999u), vec4<u32>(u_input.e, 30827u, var_3.x, 4294967295u)), vec4<u32>(var_3.x, var_4, u_input.e, 4294967295u) | vec4<u32>(75866u, var_4, 4294967295u, var_3.x))), -41018i, _wgslsmith_mult_vec4_u32(~vec4<u32>(74663u, var_3.x, 49468u, var_3.x) << (~min(vec4<u32>(39919u, 51426u, 28409u, 0u), vec4<u32>(u_input.e, var_3.x, 0u, 4294967295u)) % vec4<u32>(32u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_4, var_3.x, u_input.c.x), vec4<u32>(13952u, u_input.c.x, u_input.b, var_4)) ^ ~vec4<u32>(66226u, 0u, 0u, 1u)));
}

