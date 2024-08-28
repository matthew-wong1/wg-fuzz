struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-623f, _wgslsmith_f_op_f32(round(-1362f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -114f), _wgslsmith_f_op_f32(f32(-1f) * -634f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2625f, 915f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -709f, -598f, 582f), vec4<f32>(162f, -792f, 1000f, 671f)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1462f, -1000f, 603f, 1315f), vec4<f32>(377f, -491f, 1124f, 1000f)))), vec4<f32>(1f, 1f, 1f, 1f), vec4<bool>(all(vec2<bool>(false, false)), false, any(vec2<bool>(false, false)), true))))));
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.x - -584f), var_0.x, _wgslsmith_f_op_f32(round(1416f)), 1570f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(-var_0.x), var_0.x, var_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(543f, -1365f, var_0.x, -1210f)))))), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), false), var_0.x <= var_0.x), !all(vec2<bool>(true, false))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 185f, var_0.x, -557f)))) * vec4<f32>(_wgslsmith_f_op_f32(var_0.x * -272f), var_0.x, var_0.x, var_0.x)))));
    var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1729f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))), -673f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2168f - _wgslsmith_f_op_f32(-var_0.x)) * 1204f))));
    var_0 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(step(319f, 371f)), _wgslsmith_f_op_f32(abs(373f)), _wgslsmith_f_op_f32(exp2(var_0.x)), -1000f), vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.x)), -710f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -455f))), 2012f)));
    var var_1 = any(vec4<bool>(false, true, true, all(vec2<bool>(true, true)) & all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false))));
    return var_0.x;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-730f, _wgslsmith_f_op_f32(func_3(~4294967295u))), 518f));
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-202f - _wgslsmith_f_op_f32(-333f - 1399f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -419f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(0u))), select(all(vec4<bool>(true, false, false, true)), true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1475f, _wgslsmith_f_op_f32(f32(-1f) * -458f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-822f + -786f)))))));
    var var_2 = all(vec2<bool>(true, all(vec3<bool>(true, true, true))));
    let var_3 = u_input.a;
    var_0 = _wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) - 1378f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) + var_1.a.x))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(983f, var_1.a.x, var_1.a.x, var_1.a.x), var_1.a))) * vec4<f32>(var_1.a.x, var_1.a.x, _wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(var_1.a.x * var_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)))));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    var_0 = Struct_2(var_0.a, func_2(), func_2(), func_2());
    var_0 = arg_1;
    var_0 = Struct_2(vec3<u32>(arg_1.a.x, min(abs(~4294967295u), ~_wgslsmith_div_u32(arg_1.a.x, u_input.d)), ~42492u), Struct_1(_wgslsmith_f_op_vec4_f32(ceil(arg_3.a))), Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(-660f, _wgslsmith_f_op_f32(f32(-1f) * -817f), arg_3.a.x, 2053f), vec4<f32>(_wgslsmith_f_op_f32(round(972f)), _wgslsmith_f_op_f32(floor(arg_3.a.x)), _wgslsmith_f_op_f32(round(arg_2)), -1000f))), Struct_1(vec4<f32>(arg_3.a.x, -339f, -1023f, -461f)));
    let var_1 = max(~(~vec4<u32>(u_input.d, _wgslsmith_add_u32(arg_1.a.x, arg_1.a.x), u_input.d, ~var_0.a.x)), ~vec4<u32>(20430u, 1u, 1u, ~var_0.a.x >> (74390u % 32u)));
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-arg_0.a.xyx), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x * 351f) * _wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(arg_0.a.x)), _wgslsmith_f_op_f32(arg_0.a.x - 753f)))))));
    let var_1 = select(!(!(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), true))), select(select(vec4<bool>(select(true, false, true), u_input.d >= 0u, true, true), vec4<bool>(true, true, true, all(vec3<bool>(true, false, false))), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), select(false, true, true))), vec4<bool>(true, true, u_input.d > u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -2147483647i, u_input.b.x), vec3<i32>(-5379i, u_input.a.x, arg_1)) <= countOneBits(u_input.b.x)), false), select(select(vec4<bool>(1i > u_input.a.x, true, true, all(vec2<bool>(false, false))), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false)), vec4<bool>(false, true, true, true), any(vec3<bool>(true, true, true)))), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true))));
    let var_2 = func_2();
    let var_3 = 7875u;
    var var_4 = var_3;
    return arg_0;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1318f, -723f) - 858f);
    var var_1 = Struct_2(vec3<u32>(_wgslsmith_mult_u32(abs(firstLeadingBit(u_input.c)), ~0u), 17897u, u_input.d), func_5(func_4(5294i, Struct_2(vec3<u32>(31174u, 4294967295u, 59120u), Struct_1(vec4<f32>(var_0, var_0, var_0, 921f)), Struct_1(vec4<f32>(var_0, -359f, var_0, 568f)), Struct_1(vec4<f32>(-430f, -1229f, var_0, 1123f))), var_0, func_2()), _wgslsmith_dot_vec4_i32(select(vec4<i32>(1i, u_input.b.x, -2147483647i, u_input.b.x), u_input.a, vec4<bool>(false, false, true, false)), _wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(u_input.b.x, -1i, u_input.b.x, 0i))) << (select(max(u_input.d, u_input.c), min(16905u, 660u), any(vec3<bool>(false, false, false))) % 32u)), func_2(), func_2());
    let var_2 = Struct_1(vec4<f32>(func_5(var_1.b, u_input.a.x).a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c.a.x), func_2().a.x), var_0, 191f));
    var_1 = Struct_2(firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, 93291u, u_input.d), var_1.a)) & ~(~var_1.a | vec3<u32>(0u, var_1.a.x, var_1.a.x)), func_4(_wgslsmith_div_i32(-_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), firstTrailingBit(_wgslsmith_mult_i32(-12648i, -59223i))), Struct_2(_wgslsmith_div_vec3_u32(~vec3<u32>(0u, 32417u, 1u), ~vec3<u32>(var_1.a.x, 4294967295u, u_input.d)), Struct_1(var_2.a), var_2, Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(651f, var_0, var_1.b.a.x, var_1.c.a.x))))), _wgslsmith_f_op_f32(var_0 * var_0), Struct_1(_wgslsmith_f_op_vec4_f32(min(var_2.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -2043f, -975f, 2124f) - vec4<f32>(908f, 1376f, -1002f, var_1.d.a.x)))))), func_2(), func_5(func_2(), 1i));
    let var_3 = Struct_2(var_1.a, var_1.d, func_5(Struct_1(var_1.b.a), -34742i), func_4(53835i, Struct_2(abs(vec3<u32>(4294967295u, 29405u, var_1.a.x)), var_2, func_4(-1i, Struct_2(var_1.a, var_2, var_2, var_1.d), _wgslsmith_f_op_f32(-var_2.a.x), var_2), func_4(u_input.a.x, Struct_2(var_1.a, var_2, var_1.d, Struct_1(vec4<f32>(var_0, var_2.a.x, var_0, var_2.a.x))), var_0, var_2)), _wgslsmith_f_op_f32(-func_4(u_input.a.x, Struct_2(var_1.a, var_2, var_2, Struct_1(vec4<f32>(-347f, -942f, 2141f, 660f))), _wgslsmith_div_f32(var_0, var_1.b.a.x), func_5(Struct_1(vec4<f32>(880f, -866f, -883f, -1000f)), -1i)).a.x), Struct_1(var_1.c.a)));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~0u;
    var var_1 = Struct_2(~_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(var_0, var_0), u_input.d, _wgslsmith_sub_u32(1u, 0u)), _wgslsmith_add_vec3_u32(~vec3<u32>(1u, 0u, 1u), max(vec3<u32>(75u, u_input.d, var_0), vec3<u32>(4294967295u, 4294967295u, u_input.d)))), func_1(), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-866f, -263f, 348f, -1354f)))) - _wgslsmith_f_op_vec4_f32(func_5(Struct_1(vec4<f32>(1123f, -963f, -1008f, -643f)), u_input.b.x).a - vec4<f32>(1f, 1f, 1f, 1f)))), func_5(func_5(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-478f, -1143f, 1124f, 267f) - vec4<f32>(-192f, 113f, -587f, 103f))), u_input.b.x), 20267i));
    var_1 = Struct_2(var_1.a, var_1.c, var_1.d, var_1.d);
    var_1 = Struct_2(firstLeadingBit(~(~(~var_1.a))), var_1.d, func_4(u_input.b.x, Struct_2(abs(min(var_1.a, vec3<u32>(4294967295u, 75077u, var_1.a.x))), var_1.b, func_4(u_input.b.x, Struct_2(var_1.a, var_1.c, Struct_1(var_1.c.a), var_1.b), var_1.d.a.x, Struct_1(var_1.b.a)), Struct_1(vec4<f32>(var_1.d.a.x, 484f, var_1.b.a.x, var_1.c.a.x))), 1362f, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_1.c.a, var_1.d.a, false))))), func_4(firstTrailingBit(~u_input.b.x), Struct_2(vec3<u32>(~6825u, _wgslsmith_div_u32(var_1.a.x, var_1.a.x), _wgslsmith_div_u32(u_input.d, var_0)), Struct_1(_wgslsmith_f_op_vec4_f32(var_1.b.a - vec4<f32>(-643f, var_1.c.a.x, 639f, 950f))), func_5(func_5(Struct_1(var_1.c.a), u_input.a.x), 0i), func_2()), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b.a.x, _wgslsmith_f_op_f32(trunc(var_1.b.a.x)))), func_5(var_1.d, -2147483647i)));
    let var_2 = var_1.d;
    var_1 = Struct_2(firstLeadingBit(vec3<u32>(4294967295u, ~var_1.a.x & 1u, ~(~u_input.c))), func_2(), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.a.x)), _wgslsmith_f_op_f32(-var_1.d.a.x), _wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(202f * _wgslsmith_f_op_f32(f32(-1f) * -141f)))), func_4(8654i, Struct_2(var_1.a, Struct_1(var_2.a), func_4(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.b.x), vec3<i32>(u_input.b.x, u_input.a.x, u_input.b.x)), Struct_2(var_1.a, var_1.b, Struct_1(vec4<f32>(var_1.c.a.x, -1249f, 300f, var_2.a.x)), Struct_1(vec4<f32>(var_2.a.x, 110f, var_2.a.x, var_1.c.a.x))), _wgslsmith_f_op_f32(trunc(458f)), func_4(0i, Struct_2(vec3<u32>(4294967295u, u_input.d, u_input.d), Struct_1(vec4<f32>(-1256f, var_2.a.x, -1095f, var_1.b.a.x)), var_1.b, Struct_1(vec4<f32>(187f, 1000f, var_2.a.x, var_2.a.x))), var_1.d.a.x, Struct_1(vec4<f32>(-1022f, var_2.a.x, -1000f, var_1.b.a.x)))), func_4(countOneBits(u_input.b.x), Struct_2(var_1.a, Struct_1(var_2.a), Struct_1(var_1.b.a), var_1.c), 468f, var_1.b)), _wgslsmith_f_op_f32(-var_2.a.x), var_1.c));
    let x = u_input.a;
    s_output = StorageBuffer((u_input.a.x >> (0u % 32u)) & -13007i, ~(~(~var_1.a)), ~(-_wgslsmith_add_vec2_i32(u_input.b, u_input.a.wy)), -(~(-_wgslsmith_dot_vec2_i32(u_input.a.yw, u_input.a.wx))));
}

