struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: bool,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
    c: vec3<i32>,
    d: Struct_1,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> vec2<i32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(353f, -1000f, true)) - _wgslsmith_f_op_f32(f32(-1f) * -139f))) - -402f), 1395f, -2398f);
    var var_1 = _wgslsmith_clamp_vec4_u32(min(~(~vec4<u32>(1u, u_input.a, u_input.a, 21824u)) | vec4<u32>(~u_input.a, u_input.a, 1u, firstTrailingBit(0u)), select(vec4<u32>(33758u, ~13866u, 4294967295u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) | _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, 100192u), vec4<u32>(u_input.a, 0u, u_input.a, 4294967295u)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), u_input.a == u_input.a))), _wgslsmith_sub_vec4_u32(firstTrailingBit(select(~vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.a, u_input.a, u_input.a), vec4<u32>(4294967295u, 0u, u_input.a, 1u)), true)), ~vec4<u32>(u_input.a, 6085u, 4294967295u, u_input.a) | min(vec4<u32>(u_input.a, 30088u, u_input.a, u_input.a), _wgslsmith_div_vec4_u32(vec4<u32>(20241u, 10808u, 0u, u_input.a), vec4<u32>(0u, u_input.a, u_input.a, u_input.a)))), select(abs(_wgslsmith_add_vec4_u32(abs(vec4<u32>(7839u, u_input.a, 28785u, 4294967295u)), ~vec4<u32>(44475u, 82584u, u_input.a, u_input.a))), vec4<u32>(~u_input.a, 4294967295u, min(34452u, 13646u) >> (u_input.a % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) << (vec4<u32>(u_input.a, u_input.a, 25256u, u_input.a) % vec4<u32>(32u)), vec4<u32>(u_input.a, 845u, u_input.a, u_input.a) ^ vec4<u32>(18005u, 4294967295u, 4488u, u_input.a))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false)), true)));
    let var_2 = 1i;
    let var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(509f, var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, var_0.x, var_0.x, -740f)))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1769f), _wgslsmith_div_f32(var_0.x, -404f), _wgslsmith_f_op_f32(f32(-1f) * -2119f), _wgslsmith_f_op_f32(min(-1028f, -546f)))))));
    var_1 = vec4<u32>(12027u, ~_wgslsmith_sub_u32(min(max(var_1.x, 49452u), ~u_input.a), ~_wgslsmith_dot_vec2_u32(var_1.wy, var_1.wz)), 0u, firstTrailingBit(4294967295u));
    return abs(~max(-(vec2<i32>(arg_0, arg_0) >> (var_1.yx % vec2<u32>(32u))), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, var_2) ^ vec2<i32>(var_2, arg_0), -vec2<i32>(2147483647i, arg_0))));
}

fn func_2() -> Struct_3 {
    let var_0 = min(_wgslsmith_mult_vec2_i32(~func_3(463i), vec2<i32>(max(0i, 1i), select(1253i, 2147483647i, true)) & vec2<i32>(1i, -327i)), _wgslsmith_clamp_vec2_i32(func_3(-2147483647i), vec2<i32>(1i, 1i), countOneBits(~firstLeadingBit(vec2<i32>(-2147483647i, 7286i)))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1161f);
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-718f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f)))))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1145f - 1053f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1511f, -129f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(2323f, 316f)), _wgslsmith_f_op_f32(-1264f + -1475f))))));
    var_1 = _wgslsmith_f_op_f32(step(831f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(676f, 904f))) + _wgslsmith_f_op_f32(-1220f * _wgslsmith_div_f32(-196f, 1956f))))));
    var var_2 = vec3<i32>(-1i) * -(~_wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(-1i, -49159i, var_0.x)), firstTrailingBit(vec3<i32>(33501i, -9813i, var_0.x))));
    return Struct_3(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.a), vec3<u32>(u_input.a, u_input.a, 4294967295u)) ^ firstTrailingBit(0u), u_input.a, 1u, _wgslsmith_sub_u32(u_input.a, 58179u)));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: vec3<f32>) -> Struct_2 {
    var var_0 = -1i;
    var_0 = ~1i;
    let var_1 = countOneBits(_wgslsmith_add_i32(-1i, 0i));
    var_0 = 1i;
    var var_2 = Struct_1(true, arg_0.a.xw >> ((~vec2<u32>(1u, 31930u) | _wgslsmith_div_vec2_u32(~vec2<u32>(12465u, 4294967295u), vec2<u32>(22862u, u_input.a))) % vec2<u32>(32u)), _wgslsmith_clamp_i32(firstLeadingBit(var_1 | var_1), _wgslsmith_dot_vec3_i32(vec3<i32>(-10455i, 1i, var_1), vec3<i32>(var_1, var_1, var_1) << (vec3<u32>(u_input.a, 1u, 28627u) % vec3<u32>(32u))), abs(_wgslsmith_add_i32(var_1, 0i))) > 25143i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(arg_2.x)))), arg_2.x)), vec4<i32>(min(2147483647i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-1819i, var_1), var_1, abs(-2147483647i))), _wgslsmith_sub_i32(select(_wgslsmith_dot_vec3_i32(vec3<i32>(58518i, var_1, var_1), vec3<i32>(var_1, 30167i, 2147483647i)), -var_1, false), 1i), -_wgslsmith_add_i32(-var_1, _wgslsmith_mult_i32(var_1, var_1)), _wgslsmith_sub_i32(~(var_1 & var_1), -23099i)));
    return Struct_2(Struct_1(arg_1, _wgslsmith_clamp_vec2_u32(var_2.b ^ vec2<u32>(arg_0.a.x, 6539u), min(var_2.b, vec2<u32>(var_2.b.x, var_2.b.x)), var_2.b) & firstTrailingBit(var_2.b), var_2.d != _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1083f)), -954f), -1879f, -vec4<i32>(-24370i, _wgslsmith_mult_i32(var_1, var_2.e.x), _wgslsmith_mult_i32(var_2.e.x, 49451i), _wgslsmith_clamp_i32(0i, 0i, -2147483647i))), var_2.e.x, !vec4<bool>(_wgslsmith_mult_i32(var_2.e.x, 2147483647i) >= 1i, _wgslsmith_f_op_f32(179f * arg_2.x) > -564f, 101f == _wgslsmith_f_op_f32(max(-845f, var_2.d)), true));
}

fn func_1() -> Struct_1 {
    let var_0 = 2403f;
    let var_1 = ~vec3<u32>(1u, ~u_input.a, firstTrailingBit(~(u_input.a | 1u)));
    var var_2 = func_4(func_2(), !(!(max(var_1.x, 56972u) >= ~u_input.a)), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1298f, -232f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(558f, _wgslsmith_f_op_f32(var_0 + var_0)))), 781f));
    var_2 = Struct_2(var_2.a, 17365i, var_2.c);
    var var_3 = abs(0u);
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(firstTrailingBit(1i) ^ countOneBits(-45762i), ~(-1i)), select(vec2<i32>(19918i << (1u % 32u), ~0i), vec2<i32>(reverseBits(-2319i), i32(-1i) * -1i), true)));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f * -755f)));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -558f);
    let var_3 = Struct_4(Struct_2(func_1(), var_0.x >> (_wgslsmith_sub_u32(1u, u_input.a << (59046u % 32u)) % 32u), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false))), firstLeadingBit(~select(vec3<u32>(u_input.a, 28954u, 39537u), vec3<u32>(u_input.a, 0u, u_input.a), false)) << (~_wgslsmith_mult_vec3_u32(select(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<bool>(true, false, true)), select(vec3<u32>(0u, 0u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a), false)) % vec3<u32>(32u)), vec3<i32>(var_0.x, _wgslsmith_div_i32(2147483647i, 1i), abs(0i)) & vec3<i32>(var_0.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -2147483647i, var_0.x), vec3<i32>(-2147483647i, var_0.x, var_0.x)), i32(-1i) * -28019i), _wgslsmith_mod_i32(~var_0.x, var_0.x)), func_4(func_2(), true, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_2)), _wgslsmith_f_op_f32(sign(var_2))), -852f, -880f)).a, -reverseBits(~_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.x, -1i), var_0)));
    var var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(max(~var_3.d.b.x, ~var_3.d.b.x), var_4.b.x, u_input.a, ~(~u_input.a)));
}

