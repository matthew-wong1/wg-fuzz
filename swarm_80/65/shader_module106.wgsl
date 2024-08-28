struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
    c: i32,
    d: bool,
    e: i32,
}

struct Struct_4 {
    a: u32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(vec3<i32>((countOneBits(u_input.d.x) << (0u % 32u)) | 35693i, -32040i, i32(-1i) * -48649i), !any(vec3<bool>(true, true, true)));
    var var_1 = Struct_2(-60704i, countOneBits(vec4<i32>(i32(-1i) * -u_input.a, _wgslsmith_sub_i32(i32(-1i) * -1i, abs(-1i)), abs(abs(var_0.a.x)), var_0.a.x)));
    var_1 = Struct_2(u_input.b, vec4<i32>(var_1.a, u_input.a, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.d.x, -20030i, -11386i, u_input.d.x), vec4<i32>(u_input.b, -2147483647i, 0i, 2147483647i)), _wgslsmith_mult_i32(0i, u_input.d.x) & 0i) | _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.a.x, var_1.a, 0i, u_input.b) | select(var_1.b, vec4<i32>(7601i, var_1.a, 2147483647i, u_input.d.x), var_0.b), vec4<i32>(abs(-2147483647i), max(var_0.a.x, var_0.a.x), u_input.d.x, ~17786i)));
    var var_2 = _wgslsmith_mult_u32(u_input.c, 41217u);
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(839f)) - _wgslsmith_f_op_f32(select(1060f, 1110f, true))), 461f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-972f)) + -165f) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(356f * -205f)))))));
    return 0u;
}

fn func_2(arg_0: Struct_4, arg_1: f32) -> i32 {
    let var_0 = any(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), false)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false)), all(vec4<bool>(true, true, false, false))), !vec4<bool>(true, true, -1756f <= arg_1, u_input.c > arg_0.b.x), true));
    global0 = u_input.a <= u_input.a;
    let var_1 = Struct_2(u_input.a << (_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.c, ~u_input.c), _wgslsmith_mult_u32(~1u, func_3())) % 32u), firstTrailingBit(-vec4<i32>(_wgslsmith_clamp_i32(u_input.a, -13110i, -2147483647i), -u_input.b, 1i, -u_input.d.x)));
    let var_2 = arg_0;
    let var_3 = select(select(!select(select(vec3<bool>(var_0, var_0, true), vec3<bool>(var_0, false, true), vec3<bool>(var_0, var_0, var_0)), vec3<bool>(false, false, false), vec3<bool>(true, var_0, true)), vec3<bool>(true, all(select(vec2<bool>(var_0, var_0), vec2<bool>(true, var_0), var_0)), !(false || var_0)), vec3<bool>(!var_0 || !var_0, any(!vec4<bool>(var_0, var_0, false, var_0)), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b.x, var_2.a, var_2.b.x), var_2.b.www) == ~arg_0.a)), select(select(select(!vec3<bool>(true, var_0, var_0), select(vec3<bool>(var_0, true, var_0), vec3<bool>(var_0, var_0, true), false), vec3<bool>(var_0, var_0, false)), !(!vec3<bool>(var_0, false, true)), vec3<bool>(var_2.b.x > u_input.c, false, var_0)), !vec3<bool>(var_0, var_0, !var_0), select(vec3<bool>(select(var_0, var_0, var_0), true, true), !(!vec3<bool>(var_0, true, var_0)), vec3<bool>(arg_1 < 941f, true, !var_0))), all(select(vec3<bool>(!var_0, false, var_2.b.x < var_2.a), !(!vec3<bool>(var_0, var_0, true)), vec3<bool>(true, true, !var_0))));
    return u_input.a;
}

fn func_1(arg_0: f32) -> vec3<bool> {
    global0 = true;
    var var_0 = 5212i & (-_wgslsmith_clamp_i32(-22105i, func_2(Struct_4(22815u, vec4<u32>(u_input.c, u_input.c, u_input.c, 1u)), arg_0), firstLeadingBit(0i)) >> (_wgslsmith_mod_u32(u_input.c, _wgslsmith_mult_u32(u_input.c, u_input.c) >> (1u % 32u)) % 32u));
    var var_1 = Struct_4(~u_input.c, ~min(countOneBits(vec4<u32>(85017u, 0u, u_input.c, u_input.c)), ~(~vec4<u32>(u_input.c, u_input.c, 85985u, 16101u))));
    var var_2 = _wgslsmith_add_vec3_i32(firstLeadingBit(max(~vec3<i32>(u_input.a, 39567i, u_input.b) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(1i, u_input.a, u_input.d.x), vec3<i32>(-49374i, 8644i, u_input.b)), firstLeadingBit(vec3<i32>(81187i, 2147483647i, u_input.a) & vec3<i32>(13745i, u_input.d.x, u_input.b)))), vec3<i32>(2147483647i, countOneBits(u_input.a | u_input.a) << (0u % 32u), u_input.d.x));
    var var_3 = Struct_1(-_wgslsmith_div_vec3_i32(max(-vec3<i32>(var_2.x, 0i, var_2.x), _wgslsmith_mod_vec3_i32(vec3<i32>(var_2.x, 24041i, -23937i), vec3<i32>(u_input.b, u_input.b, var_2.x))), max(abs(vec3<i32>(u_input.a, 15446i, 1i)), -vec3<i32>(-1i, u_input.d.x, var_2.x))), false || (_wgslsmith_f_op_f32(floor(-1451f)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0, -1872f)))));
    return select(!vec3<bool>(var_3.b, true, all(select(vec2<bool>(true, var_3.b), vec2<bool>(false, var_3.b), vec2<bool>(false, var_3.b)))), vec3<bool>(!var_3.b, select(true, _wgslsmith_mod_u32(var_1.a, u_input.c) <= ~0u, ~4294967295u != (u_input.c >> (11137u % 32u))), true), vec3<bool>(true, select(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 64530u), var_1.b.xw), 20052u, !var_3.b) != min(15916u ^ u_input.c, ~0u), all(select(vec4<bool>(var_3.b, var_3.b, var_3.b, false), vec4<bool>(true, true, true, var_3.b), false)) || false));
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_1, arg_3: Struct_4) -> StorageBuffer {
    let var_0 = Struct_2(-((countOneBits(u_input.d.x) << (~5521u % 32u)) << (8599u % 32u)), vec4<i32>(arg_2.a.x, -12945i << (u_input.c % 32u), -countOneBits(-63542i), u_input.b));
    global0 = false;
    global0 = all(func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -304f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-474f))))).yz);
    var var_1 = firstLeadingBit(_wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(arg_3.b.xx, arg_3.b.xz) & arg_3.b.x, arg_3.b.x ^ arg_3.b.x));
    let var_2 = select(vec4<bool>(!(!arg_0), func_1(_wgslsmith_f_op_f32(-940f * -1000f)).x, true, false), !select(vec4<bool>(true, true, arg_1, true), vec4<bool>(true, !arg_0, -5853i >= var_0.a, arg_1), (0u < arg_3.a) & (arg_2.b & arg_1)), !select(vec4<bool>(false, arg_2.b, arg_1, arg_0), !select(vec4<bool>(false, false, arg_2.b, arg_0), vec4<bool>(arg_1, true, arg_0, arg_1), vec4<bool>(arg_1, arg_0, false, arg_2.b)), !(!vec4<bool>(arg_2.b, true, arg_1, false))));
    return StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(644f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-742f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(642f - -462f) + _wgslsmith_f_op_f32(-314f - 298f))))), ~vec4<u32>(u_input.c, ~arg_3.a | u_input.c, 44762u, ~(~16901u)), -var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-179f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, 943f, -1483f, -1598f), vec4<f32>(-342f, -223f, -580f, 527f))), vec4<f32>(1181f, -1107f, -741f, -1133f), true))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(573f, 701f, 760f, -154f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-477f, 1672f, -1368f, -395f) * vec4<f32>(310f, -1094f, -1756f, 1359f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(787f, 330f, 707f, 516f) - vec4<f32>(846f, 496f, -1253f, -759f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-653f, -329f, -2433f, -169f))), !var_2))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    let var_0 = -(~(~(vec3<i32>(u_input.d.x, u_input.b, u_input.a) << (vec3<u32>(29189u, 68263u, u_input.c) % vec3<u32>(32u)))));
    var var_1 = -1i << ((1u >> (u_input.c % 32u)) % 32u);
    let var_2 = abs(min(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-16578i, -51568i, var_0.x, u_input.d.x), vec4<i32>(-1i, -28999i, 1i, 2147483647i)), vec4<i32>(1i, 1i, 2147483647i, -1i) << (vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c) % vec4<u32>(32u))), ~vec4<i32>(var_0.x, -2147483647i, u_input.b, u_input.a) | _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, u_input.d.x, -25256i), vec4<i32>(var_0.x, -38496i, -72813i, 37210i)))) | (countOneBits(vec4<i32>(-217i, 0i, i32(-1i) * -22663i, 0i)) | countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 2147483647i, var_0.x, u_input.b), vec4<i32>(-2147483647i, 28552i, u_input.d.x, 47705i))));
    global0 = true;
    let x = u_input.a;
    s_output = func_4(any(func_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-539f)))) >= _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(217f - 2176f) + _wgslsmith_f_op_f32(286f - -1779f))), Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, min(1i, u_input.d.x), 0i), vec3<i32>(~var_2.x, -2857i, select(u_input.a, 0i, true))), all(vec4<bool>(true, true, true, true))), Struct_4(1u, abs(abs(max(vec4<u32>(4294967295u, 4294967295u, u_input.c, 12666u), vec4<u32>(116176u, u_input.c, 34147u, 0u))))));
}

