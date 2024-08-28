struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec2<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec2<bool>,
    c: i32,
    d: i32,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: vec4<f32>,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>) -> u32 {
    let var_0 = Struct_4(select(false, any(select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), true))), true), select(vec2<bool>(true, true), select(vec2<bool>(all(vec4<bool>(false, true, false, true)), true), select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true), true), true), select(true, any(vec2<bool>(true, true)), true && select(false, true, false))), -(-u_input.b.x >> (arg_0 % 32u)), abs(-8532i), Struct_1(all(vec4<bool>(any(vec2<bool>(true, false)), true, true, all(vec3<bool>(false, true, true)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-161f + -1280f)))), true, firstTrailingBit(abs(vec4<u32>(87620u, arg_0, arg_0, arg_0)))));
    var var_1 = max(~vec4<i32>(var_0.d >> (_wgslsmith_sub_u32(1u, u_input.a.x) % 32u), -2147483647i, u_input.b.x << (select(arg_0, u_input.a.x, true) % 32u), ~firstLeadingBit(49458i)), select(_wgslsmith_div_vec4_i32(vec4<i32>(1i, firstLeadingBit(1i), -33012i, var_0.c), vec4<i32>(i32(-1i) * -2147483647i, -var_0.d, min(-16964i, u_input.b.x), countOneBits(var_0.d))), abs(u_input.b) & -u_input.b, (u_input.a.x <= ~40066u) & !all(var_0.b)));
    var var_2 = var_0.e.d.yz;
    let var_3 = Struct_4(true, select(select(!(!var_0.b), !vec2<bool>(var_0.e.c, true), !var_0.a), !select(!vec2<bool>(var_0.a, true), select(vec2<bool>(false, false), var_0.b, true), true), var_0.b), -var_0.d, arg_1.x, Struct_1(!(!any(vec2<bool>(false, var_0.e.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.e.b + 467f), -1661f))), !var_0.b.x, _wgslsmith_add_vec4_u32(var_0.e.d, var_0.e.d & vec4<u32>(81831u, 1u, 12309u, arg_0))));
    let var_4 = Struct_5(Struct_1(var_0.b.x, _wgslsmith_f_op_f32(exp2(var_3.e.b)), any(vec2<bool>(true, true | var_3.a)), vec4<u32>(var_2.x, ~(var_3.e.d.x ^ u_input.a.x), var_0.e.d.x, u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_3.e.b, 512f)), -630f) + _wgslsmith_f_op_f32(var_3.e.b * -1074f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.e.b - _wgslsmith_f_op_f32(-var_0.e.b)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.e.b * var_0.e.b)))), vec4<f32>(_wgslsmith_f_op_f32(-var_3.e.b), -140f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.e.b, var_3.e.b)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_3.e.b * var_0.e.b), -483f)), _wgslsmith_div_f32(1666f, _wgslsmith_f_op_f32(f32(-1f) * -1364f)), true))), countOneBits(abs(abs(22900u) & var_2.x)), var_3.e.c);
    return ~firstLeadingBit(firstLeadingBit(var_3.e.d.x));
}

fn func_2() -> Struct_5 {
    var var_0 = u_input.a.x;
    let var_1 = min(4294967295u, u_input.a.x);
    let var_2 = vec4<u32>(~0u, ~(~var_1), func_3(60900u, ~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, 2147483647i), -u_input.b.zyy)), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, firstLeadingBit(u_input.a.x), 0u, u_input.a.x), vec4<u32>(1u, var_1, _wgslsmith_mult_u32(25083u, u_input.a.x), 1u))));
    var_0 = 2623u;
    var var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1366f, -494f, 1000f, 269f) + vec4<f32>(-905f, 669f, 2326f, -503f)) - _wgslsmith_div_vec4_f32(vec4<f32>(-840f, -1000f, 466f, -822f), vec4<f32>(-163f, 855f, -610f, -1000f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(450f, -493f, 769f, 321f) - vec4<f32>(-1283f, -726f, 434f, -646f))))), vec4<f32>(_wgslsmith_f_op_f32(trunc(1166f)), _wgslsmith_f_op_f32(abs(196f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(448f))), 466f)));
    return Struct_5(Struct_1(select(true, true, all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)))), var_3.x, false | any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), false)), _wgslsmith_mod_vec4_u32(var_2, vec4<u32>(var_2.x >> (7810u % 32u), var_1 | 1u, countOneBits(5984u), var_2.x))), !(false & select(true, true, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_3.x, -1686f, 783f, var_3.x), vec4<f32>(1267f, var_3.x, var_3.x, var_3.x)))))), ~_wgslsmith_div_u32(var_1, ~15132u), all(!vec3<bool>(u_input.b.x >= u_input.b.x, false, true)));
}

fn func_1() -> vec4<f32> {
    var var_0 = -(~28876i);
    var_0 = countOneBits(u_input.b.x);
    var_0 = -u_input.b.x;
    let var_1 = func_2();
    var_0 = -u_input.b.x ^ _wgslsmith_mod_i32(~u_input.b.x, _wgslsmith_div_i32(1i, i32(-1i) * -2147483647i));
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, 1850f, 1157f, -518f), vec4<f32>(377f, -656f, 1272f, 614f)))))))));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-634f, _wgslsmith_f_op_f32(f32(-1f) * -1023f), _wgslsmith_f_op_f32(ceil(-358f)), _wgslsmith_f_op_f32(round(var_1.x))))) * vec4<f32>(var_1.x, _wgslsmith_f_op_f32(step(var_1.x, var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - 402f) - _wgslsmith_f_op_f32(abs(var_1.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.x + -411f))))));
    var_1 = vec4<f32>(var_1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) * -650f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(143f + var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -915f))))), -1561f);
    var_1 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1029f, var_1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.x - -341f))), _wgslsmith_f_op_f32(ceil(759f)))));
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 686f, -1219f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_1.x)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1733f))), var_1.x, 1123f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.x + 1838f), -996f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-1f)));
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)))) - vec4<f32>(var_1.x, var_1.x, var_1.x, _wgslsmith_f_op_f32(-func_2().c.x))), vec4<f32>(_wgslsmith_f_op_vec4_f32(func_1()).x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.x)) - 473f))), -934f, var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.wyw, _wgslsmith_clamp_vec2_i32(vec2<i32>(~40353i, 21764i) | _wgslsmith_mult_vec2_i32(max(u_input.b.wy, u_input.b.zy), _wgslsmith_add_vec2_i32(u_input.b.xx, vec2<i32>(-4519i, u_input.b.x))), u_input.b.ww, u_input.b.zx), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(575f + -169f) * _wgslsmith_f_op_f32(exp2(var_1.x))), var_1.x, var_1.x))), -_wgslsmith_sub_i32(-u_input.b.x, u_input.b.x));
}

