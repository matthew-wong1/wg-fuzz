struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec4<f32>,
    d: Struct_1,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
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

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec2<u32>) -> vec3<bool> {
    var var_0 = Struct_2(arg_2, arg_1, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1053f, _wgslsmith_f_op_f32(-arg_0.d.b))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2.x)) - arg_2.x)), -692f), arg_0.d, vec3<i32>(-28029i, _wgslsmith_sub_i32(u_input.d.x, firstTrailingBit(53938i) & -26558i), -21448i));
    var_0 = Struct_2(var_0.a, var_0.d, _wgslsmith_f_op_vec2_f32(vec2<f32>(-216f, _wgslsmith_f_op_f32(round(905f))) * vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.x + -819f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - _wgslsmith_f_op_f32(arg_0.d.b * -1140f)))), Struct_1(select(!vec3<bool>(false, arg_1.a.x, arg_0.d.a.x), arg_0.d.a, vec3<bool>(true, false, false)), _wgslsmith_f_op_f32(-arg_0.c.x)), ~(~vec3<i32>(u_input.b.x, 26006i, ~u_input.c)));
    var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(229f))))), _wgslsmith_f_op_f32(f32(-1f) * -1562f)), var_0.b, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1694f)) + var_0.b.b), _wgslsmith_f_op_f32(max(-639f, _wgslsmith_div_f32(var_0.b.b, 1000f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(475f, -393f)) + vec2<f32>(-377f, arg_1.b)))))), Struct_1(select(!vec3<bool>(false, arg_1.a.x, false), select(!vec3<bool>(var_0.d.a.x, false, arg_0.b.b.a.x), select(var_0.d.a, vec3<bool>(arg_1.a.x, arg_0.e.x, false), var_0.b.a.x), vec3<bool>(var_0.b.a.x, arg_1.a.x, arg_1.a.x)), vec3<bool>(arg_1.a.x, select(arg_1.a.x, false, var_0.b.a.x), !arg_1.a.x)), _wgslsmith_f_op_f32(-arg_1.b)), vec3<i32>(15353i, var_0.e.x, var_0.e.x));
    var var_1 = arg_3;
    var var_2 = arg_1;
    return !vec3<bool>(true, var_0.b.a.x, any(vec2<bool>(false, arg_0.d.a.x)));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-324f))))), 531f), Struct_1(select(func_3(Struct_4(-1482f, Struct_3(-975f, Struct_1(vec3<bool>(true, false, true), -288f)), vec4<f32>(1000f, 133f, 511f, 101f), Struct_1(vec3<bool>(false, false, true), 854f), vec4<bool>(true, true, false, false)), Struct_1(vec3<bool>(false, true, false), -1000f), vec2<f32>(-1079f, 1052f), abs(vec2<u32>(u_input.a, 35983u))), vec3<bool>(true, true, false), any(vec3<bool>(false, true, false))), _wgslsmith_div_f32(1006f, _wgslsmith_div_f32(-498f, _wgslsmith_div_f32(-682f, 2268f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1507f))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1744f, 1f)))), Struct_1(!vec3<bool>(select(false, true, false), true, false), -645f), vec3<i32>(firstTrailingBit(~u_input.d.x), -20550i, 1i));
    var var_1 = vec3<bool>(true, select(var_0.d.a.x, ~(-2147483647i) <= firstTrailingBit(-35158i), !var_0.d.a.x) == any(vec2<bool>(u_input.a < 35999u, var_0.b.a.x)), true);
    var var_2 = u_input.d;
    var var_3 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1008f, 2264f))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.d.b * -296f)))) + var_0.c.x), Struct_3(_wgslsmith_f_op_f32(floor(-1325f)), Struct_1(!select(vec3<bool>(false, false, false), var_0.b.a, vec3<bool>(var_0.b.a.x, true, true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-269f, 695f)))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2058f, -1137f, var_0.b.b, var_0.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, -1898f, -1128f, var_0.a.x)))), Struct_1(vec3<bool>((1i | u_input.c) > var_0.e.x, var_0.d.a.x, (u_input.a ^ 50860u) <= min(4294967295u, 0u)), _wgslsmith_f_op_f32(f32(-1f) * -803f)), !(!vec4<bool>(false & var_0.b.a.x, all(vec4<bool>(true, var_1.x, var_0.d.a.x, var_1.x)), var_1.x == true, var_1.x)));
    var var_4 = Struct_4(_wgslsmith_f_op_f32(select(var_3.b.b.b, 268f, all(select(vec3<bool>(var_1.x, false, true), select(var_3.e.yxx, vec3<bool>(var_0.b.a.x, false, false), var_3.e.x), true)))), Struct_3(_wgslsmith_f_op_f32(ceil(-1000f)), Struct_1(vec3<bool>(var_0.d.a.x, func_3(Struct_4(1776f, Struct_3(-539f, Struct_1(vec3<bool>(true, var_1.x, var_0.d.a.x), 1000f)), var_3.c, Struct_1(var_3.e.yww, var_3.a), vec4<bool>(false, false, var_3.e.x, var_3.d.a.x)), var_3.b.b, var_3.c.yx, vec2<u32>(u_input.a, u_input.a)).x, var_3.b.a > var_3.b.b.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -694f)))), vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(var_3.c.x, var_3.d.b, var_0.b.a.x)), _wgslsmith_f_op_f32(select(var_0.b.b, -1000f, var_0.d.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.d.b), var_0.b.b))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(547f * 575f), 1f, !var_3.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.a))))), var_0.d, vec4<bool>(any(!(!vec3<bool>(true, false, var_3.e.x))), !(!var_0.d.a.x), any(vec4<bool>(var_0.d.a.x, false, true, false)) | (true || (var_0.d.a.x || var_1.x)), false));
    return var_0;
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: u32, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(func_2().c.x + _wgslsmith_f_op_f32(arg_0.a.x * arg_0.c.x)), func_2().d);
    return Struct_1(!vec3<bool>(!any(vec2<bool>(arg_0.b.a.x, false)), false, func_3(Struct_4(1000f, var_0, vec4<f32>(-449f, var_0.b.b, -133f, 443f), Struct_1(vec3<bool>(true, true, true), arg_0.a.x), vec4<bool>(var_0.b.a.x, var_0.b.a.x, true, false)), func_2().b, _wgslsmith_div_vec2_f32(arg_0.a, arg_0.c), vec2<u32>(arg_3, arg_3)).x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -448f) - -557f));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-216f, -1222f) - vec2<f32>(-1000f, -526f))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(210f)) * _wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_f32(sign(1256f)))), func_4(func_2(), 1u, ~u_input.a, 40564u), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(max(-1214f, -218f)), _wgslsmith_f_op_f32(-1670f + 1000f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1505f, 1923f) * vec2<f32>(-882f, 449f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(553f, 1715f) - vec2<f32>(-1287f, -232f))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1302f, -1000f))))))), func_4(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -395f) * vec2<f32>(1849f, -1000f))), func_4(Struct_2(vec2<f32>(945f, -162f), Struct_1(vec3<bool>(false, true, false), 567f), vec2<f32>(2533f, -255f), Struct_1(vec3<bool>(false, true, true), 2179f), vec3<i32>(u_input.d.x, u_input.c, -1i)), u_input.a, max(3296u, 94157u), u_input.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1832f, 1078f), vec2<f32>(-447f, 499f))), func_2().d, vec3<i32>(u_input.d.x, min(4773i, u_input.d.x), 0i << (0u % 32u))), ~10485u, u_input.a, u_input.a << (u_input.a % 32u)), ~countOneBits(select(~vec3<i32>(-44310i, 1i, u_input.d.x), _wgslsmith_div_vec3_i32(vec3<i32>(53752i, -4741i, -3368i), vec3<i32>(u_input.d.x, 0i, 0i)), vec3<bool>(true, false, true))));
    let var_1 = func_2().d;
    let var_2 = var_1.a.x;
    var_0 = Struct_2(vec2<f32>(-442f, var_0.a.x), func_4(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a)), func_4(func_2(), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, 1u)), ~u_input.a, _wgslsmith_mult_u32(u_input.a, u_input.a)), var_0.a, func_2().d, select(var_0.e, vec3<i32>(u_input.b.x, -18890i, u_input.d.x), all(vec2<bool>(false, var_2)))), 72681u, abs(78273u), countOneBits(_wgslsmith_clamp_u32(u_input.a, 49246u, 4294967295u) & firstLeadingBit(17939u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_0.a)) + vec2<f32>(var_1.b, 559f)) * func_2().c) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.d.b, _wgslsmith_f_op_f32(sign(-2861f))), var_0.a, select(func_2().d.a.xx, vec2<bool>(var_2, var_2), var_2)))), func_2().d, reverseBits(var_0.e >> (vec3<u32>(u_input.a, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 44506u, u_input.a), vec3<u32>(u_input.a, 1u, u_input.a))) % vec3<u32>(32u))));
    var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(step(1837f, var_1.b)), -808f), func_2().d, var_0.c, Struct_1(func_4(func_2(), 1u, max(u_input.a, _wgslsmith_div_u32(0u, u_input.a)), firstTrailingBit(u_input.a) & 1u).a, -768f), func_2().e);
    return func_2().b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(26825u, 4294967295u << (u_input.a % 32u), u_input.a, _wgslsmith_mod_u32(u_input.a, 9705u)), ~(~vec4<u32>(27625u, u_input.a, u_input.a, 91154u))), u_input.a, ~4294967295u, ~1u);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(977f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-727f))))), func_1());
    let var_2 = !func_4(func_2(), var_0.x, ~(var_0.x >> (22175u % 32u)), ~_wgslsmith_add_u32(u_input.a, 82878u) & 51371u).a;
    var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.b.b), var_1.b.b, !var_2.x)) + var_1.a), Struct_1(vec3<bool>(true != !var_2.x, var_1.b.a.x, !func_4(Struct_2(vec2<f32>(316f, var_1.a), Struct_1(var_2, var_1.a), vec2<f32>(var_1.a, -729f), Struct_1(var_1.b.a, -2293f), vec3<i32>(u_input.d.x, u_input.b.x, u_input.d.x)), u_input.a, u_input.a, u_input.a).a.x), -1000f));
    var_1 = Struct_3(_wgslsmith_f_op_f32(min(782f, _wgslsmith_div_f32(161f, _wgslsmith_f_op_f32(-296f - -446f)))), Struct_1(var_2, _wgslsmith_f_op_f32(step(var_1.a, _wgslsmith_f_op_f32(var_1.a * 192f)))));
    var_1 = Struct_3(856f, Struct_1(vec3<bool>(var_2.x, var_2.x, max(1u, 0u) == var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a + func_1().b) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(var_1.a)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(~(~(~u_input.d)), vec2<i32>(2147483647i, i32(-1i) * -u_input.c)), ~_wgslsmith_sub_vec3_u32(reverseBits(select(var_0.yzy, var_0.ywx, vec3<bool>(var_2.x, false, var_1.b.a.x))), var_0.yxw));
}

