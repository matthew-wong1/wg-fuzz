struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(195f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 539f))) + _wgslsmith_f_op_f32(f32(-1f) * -559f)));
    let var_1 = ~(~(97161u | u_input.d));
    var var_2 = _wgslsmith_f_op_f32(step(var_0, var_0));
    var var_3 = Struct_1(any(vec2<bool>(true, true)));
    var var_4 = 33182u & u_input.d;
    return select(vec2<bool>(false, ~select(u_input.e.x, 8478u, var_3.a) == u_input.e.x), select(select(select(vec2<bool>(var_3.a, true), !vec2<bool>(var_3.a, var_3.a), vec2<bool>(var_3.a, var_3.a)), !vec2<bool>(var_3.a, var_3.a), vec2<bool>(!var_3.a, false)), !(!(!vec2<bool>(var_3.a, var_3.a))), select(!select(vec2<bool>(var_3.a, var_3.a), vec2<bool>(var_3.a, true), vec2<bool>(var_3.a, true)), !(!vec2<bool>(var_3.a, var_3.a)), any(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1403f)) <= var_0);
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_2 {
    var var_0 = abs(2147483647i);
    var var_1 = Struct_2(~_wgslsmith_clamp_u32(u_input.d, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(6018u, arg_0, u_input.e.x), ~u_input.d), 4294967295u), ~(-2147483647i));
    var_0 = i32(-1i) * -2147483647i;
    let var_2 = u_input.c & var_1.b;
    var var_3 = select(vec2<bool>(true, true), select(!select(vec2<bool>(false, arg_2.a), vec2<bool>(true, true), !arg_2.a), select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(arg_2.a, false), true), func_3(), vec2<bool>(true, true)), vec2<bool>(true, var_1.a >= 4294967295u)), !func_3()), !(!(!arg_2.a)));
    return Struct_2(firstLeadingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.a, var_1.a, 0u, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(arg_0, 1u, var_1.a, 0u), ~vec4<u32>(1u, u_input.d, 0u, 36014u)))), abs(_wgslsmith_sub_i32(0i, 1i)));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1) -> u32 {
    let var_0 = u_input.e | vec2<u32>(~abs(~arg_0.a), arg_0.a);
    let var_1 = ~35158u;
    let var_2 = Struct_1(false);
    let var_3 = vec4<u32>(~(1u << (arg_0.a % 32u)), ~(~firstTrailingBit(26564u)), ~_wgslsmith_mod_u32(arg_0.a, (52362u & var_1) << (var_1 % 32u)), ~(u_input.d << (42292u % 32u)));
    let var_4 = Struct_3(var_2, u_input.e, var_2, vec2<u32>(~_wgslsmith_sub_u32(reverseBits(u_input.e.x), 4294967295u), _wgslsmith_div_u32(~0u, 4294967295u)), arg_2);
    return 4294967295u;
}

fn func_5(arg_0: u32, arg_1: u32) -> Struct_1 {
    var var_0 = select(select(!(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false))), select(vec4<bool>(true, any(vec2<bool>(true, false)), true, all(vec4<bool>(false, false, false, true))), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, true)), all(vec3<bool>(false, true, all(vec4<bool>(true, false, true, true))))), !select(vec4<bool>(select(true, false, true), true, true, true), vec4<bool>(true, true, true, true), any(select(vec2<bool>(true, false), vec2<bool>(false, true), false))), true);
    var var_1 = vec2<i32>(~(-u_input.b.x & 10606i) << (~firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.e, vec2<u32>(4294967295u, 4294967295u))) % 32u), _wgslsmith_mult_i32(-((i32(-1i) * -1339i) ^ u_input.c), u_input.b.x));
    let var_2 = !(!select(var_0.x, all(vec2<bool>(var_0.x, false)), true) | any(var_0.ww));
    var_0 = select(!(!select(!vec4<bool>(false, var_2, var_2, true), !vec4<bool>(false, var_2, true, var_2), true)), select(!select(vec4<bool>(var_2, false, false, true), !vec4<bool>(var_0.x, var_2, var_2, var_2), true), vec4<bool>(var_0.x, !var_0.x, select(var_0.x, false, false) && true, !any(vec2<bool>(false, var_2))), false && all(select(var_0.zx, var_0.xw, var_0.x))), true);
    var_1 = countOneBits(_wgslsmith_mod_vec2_i32(abs(~vec2<i32>(-42915i, -1i) & ~u_input.b.xz), u_input.b.yz));
    return Struct_1(var_0.x);
}

fn func_1() -> Struct_3 {
    let var_0 = func_5(~4294967295u, _wgslsmith_div_u32(func_4(func_2(~u_input.e.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(-868f, -167f, -672f) - vec3<f32>(1017f, 1182f, -968f)), Struct_1(false)), ~_wgslsmith_div_u32(u_input.e.x, 4294967295u), Struct_1(true)), u_input.d));
    let var_1 = _wgslsmith_mult_i32(2147483647i, 1i);
    var var_2 = Struct_3(Struct_1(true || !var_0.a), vec2<u32>(u_input.e.x, abs(_wgslsmith_sub_u32(u_input.e.x, 1u & u_input.d))), var_0, vec2<u32>(abs(firstLeadingBit(u_input.e.x)) ^ u_input.e.x, 0u), Struct_1(1i <= _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 11684i, var_1), countOneBits(vec3<i32>(var_1, var_1, var_1)))));
    var_2 = Struct_3(Struct_1(any(select(select(vec2<bool>(true, var_0.a), vec2<bool>(var_0.a, true), var_0.a), select(vec2<bool>(var_2.c.a, var_2.c.a), vec2<bool>(true, var_0.a), false), var_2.a.a))), vec2<u32>(u_input.e.x, ~(~_wgslsmith_mult_u32(u_input.e.x, u_input.d))), var_0, vec2<u32>(1u, ~countOneBits(var_2.b.x)), func_5(~4294967295u, _wgslsmith_mult_u32(select(u_input.d, var_2.b.x, true), reverseBits(54604u)) | firstTrailingBit(1533u)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(198f, 636f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(836f, -444f, var_2.a.a))))));
    return Struct_3(Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_3.x * -1000f))) <= 532f), vec2<u32>(~(~37753u) >> (var_2.d.x % 32u), ~abs(abs(1u))), func_5(~4294967295u, u_input.d), var_2.d, Struct_1(!func_3().x));
}

fn func_6(arg_0: Struct_3, arg_1: f32, arg_2: i32) -> Struct_3 {
    return arg_0;
}

fn func_7(arg_0: Struct_3, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = vec2<bool>((func_1().a.a && !arg_0.c.a) || false, !(u_input.b.x == _wgslsmith_sub_i32(u_input.a >> (54956u % 32u), u_input.b.x & 2147483647i)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-282f, 1297f, 150f, 552f)), _wgslsmith_div_vec4_f32(vec4<f32>(764f, 990f, -2040f, -1944f), vec4<f32>(803f, 377f, -609f, 342f)), arg_1.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-692f, 146f, -270f, 1435f) - vec4<f32>(-345f, -278f, -1749f, 343f))))));
    var var_2 = vec2<bool>((_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(u_input.b, u_input.b), -11535i) <= -(~u_input.b.x)) || false, (_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1432f, var_1.x)))) | !arg_0.a.a);
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_1.x)))))));
    let var_4 = 19457u;
    return Struct_1(false);
}

fn func_8(arg_0: Struct_1, arg_1: bool, arg_2: Struct_3) -> i32 {
    var var_0 = func_2(min(abs(12966u), ~u_input.d), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-502f, 534f, -875f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2053f, 1061f, -768f)))), Struct_1(arg_2.e.a)).a < (u_input.d << (~arg_2.b.x % 32u));
    var_0 = any(vec4<bool>(false, arg_2.c.a || func_7(Struct_3(arg_0, arg_2.d, Struct_1(true), u_input.e, Struct_1(false)), vec2<bool>(false, arg_2.a.a)).a, true, !(arg_1 | true))) || false;
    var var_1 = 0i;
    let var_2 = vec4<i32>(15690i ^ (~func_2(50394u, vec3<f32>(782f, -584f, -728f), arg_2.c).b ^ u_input.c), u_input.a, _wgslsmith_dot_vec3_i32(abs(-u_input.b), _wgslsmith_div_vec3_i32(vec3<i32>(-4232i, u_input.a, -1i), vec3<i32>(u_input.a, u_input.c, u_input.c) ^ vec3<i32>(u_input.b.x, 81446i, u_input.a))) << (max(reverseBits(4294967295u), _wgslsmith_mod_u32(4294967295u, 13359u)) % 32u), 2147483647i);
    var_0 = arg_1;
    return reverseBits(-23762i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -633f)))), all(vec4<bool>(true, true, true, all(vec4<bool>(true, false, true, true)))) || all(vec4<bool>(true, true, true, true))));
    var var_1 = ~func_8(func_7(func_6(func_1(), 1f, _wgslsmith_mod_i32(u_input.b.x, 48654i)), func_3()), false, func_1());
    let var_2 = countOneBits(-firstLeadingBit(vec2<i32>(1i, 1i)));
    var_0 = 903f;
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-457f, -996f, -1034f, -115f) * vec4<f32>(-520f, 1000f, -1409f, 169f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(163f, 1334f, 2266f, -683f)))))));
    let var_4 = vec4<u32>(_wgslsmith_mult_u32(u_input.d, _wgslsmith_dot_vec3_u32(abs(firstLeadingBit(vec3<u32>(4294967295u, 4294967295u, 32217u))), select(vec3<u32>(1u, 1u, 29259u), abs(vec3<u32>(u_input.e.x, 4294967295u, u_input.e.x)), vec3<bool>(true, false, true)))), min(~select(14506u, u_input.e.x, any(vec2<bool>(false, false))), func_1().d.x), 0u, func_4(Struct_2(1u, -1i), 1870u, func_1().c));
    let var_5 = -func_2(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_4.x, 35323u, u_input.d, 11076u), var_4)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-754f))), _wgslsmith_f_op_f32(min(var_3.x, _wgslsmith_f_op_f32(var_3.x - var_3.x))), var_3.x), func_7(func_1(), !func_3())).b;
    let x = u_input.a;
    s_output = StorageBuffer(max(7186u, _wgslsmith_dot_vec3_u32(var_4.xxw, vec3<u32>(u_input.e.x, u_input.d, var_4.x))) ^ 9438u, var_4.x, _wgslsmith_f_op_f32(sign(var_3.x)), var_3.yz);
}

