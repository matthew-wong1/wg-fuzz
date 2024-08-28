struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> i32 {
    var var_0 = ~(~(~1u));
    var var_1 = firstTrailingBit(vec2<i32>(-2147483647i, 1495i));
    let var_2 = Struct_1(~(~1u));
    var var_3 = vec3<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false))))), true, true);
    var_3 = vec3<bool>(!var_3.x, all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, all(var_3.yz)), true)), true);
    return _wgslsmith_mult_i32(var_1.x, ~0i);
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: Struct_3, arg_3: vec2<i32>) -> i32 {
    var var_0 = Struct_3(Struct_1(1u), _wgslsmith_mult_i32(-((i32(-1i) * -2147483647i) << (arg_2.c.b.a % 32u)), ~(~_wgslsmith_mod_i32(2147483647i, arg_3.x))), arg_2.c);
    var_0 = Struct_3(Struct_1(0u), _wgslsmith_mod_i32(u_input.a.x, ~firstTrailingBit(arg_3.x)), arg_2.c);
    var var_1 = vec2<u32>(21087u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.c.b.a, arg_0, arg_2.c.b.a), vec3<u32>(0u, 0u, arg_2.c.b.a)), vec3<u32>(var_0.a.a, 93522u, 103278u)), 0u | min(var_0.c.b.a, arg_0)) | ~var_0.c.b.a);
    let var_2 = !vec3<bool>(all(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))), any(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true))), true);
    let var_3 = vec4<i32>(~_wgslsmith_mult_i32(func_3() << (arg_0 % 32u), func_3()), 64882i, max(arg_3.x & firstLeadingBit(var_0.b), 2147483647i) << ((var_1.x << (~41337u % 32u)) % 32u), -19443i);
    return ~_wgslsmith_dot_vec2_i32(~abs(vec2<i32>(var_0.c.a, var_3.x)), vec2<i32>(var_3.x, u_input.a.x));
}

fn func_2(arg_0: f32, arg_1: f32) -> f32 {
    var var_0 = -1i;
    var_0 = u_input.a.x;
    var var_1 = Struct_2(u_input.a.x, Struct_1(~(~(~1u))));
    var_1 = Struct_2(min(-23652i, select(-1i, _wgslsmith_sub_i32(1i, -1i), false) >> ((4294967295u >> (_wgslsmith_mod_u32(92099u, var_1.b.a) % 32u)) % 32u)), Struct_1(23279u));
    var var_2 = func_4(~20882u, _wgslsmith_f_op_f32(floor(149f)), Struct_3(var_1.b, firstTrailingBit(_wgslsmith_mult_i32(-var_1.a, 0i)), Struct_2(func_3(), var_1.b)), -vec2<i32>(1i, 1i));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0), 945f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + arg_1)))))));
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: f32) -> Struct_2 {
    let var_0 = ~(~(~_wgslsmith_add_vec2_u32(vec2<u32>(75098u, 1u), firstLeadingBit(vec2<u32>(14926u, 0u)))));
    var var_1 = Struct_3(arg_0.b, u_input.a.x, arg_0);
    return Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(firstTrailingBit(arg_0.a), 1i), ~var_1.b, abs(-arg_0.a)), vec3<i32>(-2147483647i, 1i, -65524i)), Struct_1(~_wgslsmith_div_u32(24099u, ~var_0.x)));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = func_5(arg_1, ~0u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(trunc(-207f)))))));
    var_0 = Struct_2(~arg_1.a, func_5(arg_1, ~arg_1.b.a, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(trunc(arg_0.x)), arg_0.x))).b);
    let var_1 = arg_3;
    var_0 = Struct_2(u_input.a.x, var_0.b);
    let var_2 = ~arg_3.a;
    return select(select(select(vec4<bool>(true, arg_2.x, any(arg_2), arg_2.x), !vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x), arg_2.x), select(!(!vec4<bool>(true, arg_2.x, false, arg_2.x)), !vec4<bool>(false, arg_2.x, false, false), all(select(vec3<bool>(false, false, true), vec3<bool>(arg_2.x, arg_2.x, arg_2.x), false))), true), vec4<bool>(_wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -417f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_0.x)), arg_2.x, 54330u >= (arg_3.a | ~1u), true), ((374f < _wgslsmith_f_op_f32(-arg_0.x)) || all(!vec3<bool>(false, arg_2.x, arg_2.x))) & false);
}

fn func_6(arg_0: vec4<bool>) -> u32 {
    var var_0 = 1i;
    var_0 = _wgslsmith_add_i32(func_4(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(2034u, 1u), vec2<u32>(26998u, 4294967295u), vec2<u32>(4294967295u, 6723u)), ~vec2<u32>(73445u, 4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(591f * 404f)), Struct_3(func_5(Struct_2(u_input.a.x, Struct_1(188246u)), 0u, -2090f).b, 1i, Struct_2(u_input.a.x, Struct_1(19387u))), ~(vec2<i32>(u_input.a.x, 26094i) & vec2<i32>(23674i, -33513i))) | u_input.a.x, u_input.a.x);
    var_0 = abs(reverseBits(u_input.a.x));
    var_0 = firstTrailingBit(_wgslsmith_add_i32(u_input.a.x, u_input.a.x | _wgslsmith_mult_i32(u_input.a.x, u_input.a.x)));
    let var_1 = Struct_3(Struct_1(~(~(~4294967295u))), _wgslsmith_sub_i32(u_input.a.x, ~min(abs(-10397i), -58956i)), func_5(Struct_2(u_input.a.x, func_5(Struct_2(1i, Struct_1(0u)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 64413u, 0u), vec4<u32>(1u, 0u, 50089u, 1u)), 337f).b), 55345u, -1448f));
    return var_1.c.b.a >> (_wgslsmith_mult_u32(~var_1.a.a >> (7390u % 32u), var_1.c.b.a) % 32u);
}

fn func_7(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: f32) -> Struct_1 {
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_div_u32(1u, ~3999u) << (1u % 32u));
    let var_1 = func_7(Struct_3(Struct_1(func_6(func_1(vec4<f32>(240f, 538f, 377f, 501f), Struct_2(u_input.a.x, Struct_1(1u)), vec2<bool>(false, true), Struct_1(63179u)))), 34656i ^ (~u_input.a.x >> (countOneBits(47755u) % 32u)), Struct_2(~_wgslsmith_dot_vec2_i32(u_input.a.zw, vec2<i32>(u_input.a.x, u_input.a.x)), Struct_1(firstLeadingBit(var_0.a)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1563f), _wgslsmith_f_op_f32(f32(-1f) * -510f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1124f, -1000f) + vec2<f32>(591f, -415f))), !select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-104f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1106f)), _wgslsmith_f_op_f32(709f - -141f))))));
    var var_2 = Struct_3(Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 6060u), vec2<u32>(var_0.a, var_1.a)), ~vec2<u32>(4294967295u, 131674u)), _wgslsmith_div_vec2_u32(vec2<u32>(0u, var_1.a), vec2<u32>(var_1.a, var_0.a)) ^ countOneBits(vec2<u32>(var_0.a, var_1.a)))), _wgslsmith_dot_vec3_i32(-vec3<i32>(1i, u_input.a.x, ~(-1i)), vec3<i32>(u_input.a.x, -2147483647i ^ u_input.a.x, _wgslsmith_add_i32(u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, 39192i)))), func_5(Struct_2(0i, func_7(Struct_3(Struct_1(10979u), u_input.a.x, Struct_2(-14108i, Struct_1(var_0.a))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(161f, -1045f))), _wgslsmith_f_op_f32(f32(-1f) * -1920f))), var_1.a, _wgslsmith_f_op_f32(-344f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(968f + 1270f)))));
    var_2 = Struct_3(Struct_1(abs(~(~2613u))), u_input.a.x, func_5(Struct_2(-22017i, var_2.a), var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-509f + _wgslsmith_f_op_f32(f32(-1f) * -210f)))));
    let var_3 = func_1(vec4<f32>(348f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1481f - 265f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-189f - -785f), _wgslsmith_f_op_f32(floor(610f))) - -318f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2270f))), func_5(func_5(var_2.c, ~(~1u), 526f), _wgslsmith_div_u32(32906u, _wgslsmith_mult_u32(1u, 4294967295u)), -2415f), vec2<bool>(false, any(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false), var_2.c.b.a >= 35717u))), func_5(var_2.c, var_1.a, -1514f).b).x;
    let var_4 = var_2.c.b;
    var_2 = Struct_3(func_7(Struct_3(Struct_1(4294967295u), max(u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(var_2.b, 30199i))), var_2.c), vec2<f32>(321f, _wgslsmith_f_op_f32(f32(-1f) * -325f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(408f, -1831f)) + 1f))), var_2.b, var_2.c);
    var var_5 = var_4.a;
    var_5 = ~(~(~40322u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(712f * -139f), -547f)), -1639f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(393f, -2114f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1846f))))));
}

