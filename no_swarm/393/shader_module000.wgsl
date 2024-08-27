struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<f32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: u32, arg_3: i32) -> i32 {
    global0 = Struct_2(vec2<f32>(860f, global0.a.x), reverseBits(4294967295u), Struct_1(69361u));
    var var_0 = Struct_2(global0.a, 26362u, Struct_1(51057u));
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1626f, global0.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(global0.a)))))), ~(~_wgslsmith_div_u32(~34074u, 44223u)), global0.c);
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a.x)))))), _wgslsmith_f_op_f32(floor(-108f)), arg_1.x));
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1512f, var_1))))) + vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-705f, -883f)))), arg_0.x, global0.c);
    return -2147483647i;
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> i32 {
    global0 = Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(477f, -1416f)), global0.a.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(global0.a.x, global0.a.x)), _wgslsmith_f_op_f32(203f * -198f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.a.x))), global0.a.x)), countOneBits(_wgslsmith_div_u32(~global0.c.a, arg_0.a) ^ global0.c.a), arg_0);
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1f)), abs(global0.c.a), Struct_1(_wgslsmith_mult_u32(24862u, u_input.b.x)));
    global0 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x - global0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) + _wgslsmith_div_f32(global0.a.x, -1229f)))), ~_wgslsmith_add_u32(~reverseBits(4294967295u), 78084u), Struct_1(global0.b));
    let var_0 = Struct_3(vec4<i32>(abs(31282i), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, 23824i, 1i), _wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(-46836i, 41366i, 1i)), vec3<i32>(-4953i, 16716i, 13132i))), arg_1, -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, 1512i, -20462i, arg_1), vec4<i32>(arg_1, 14255i, 2589i, -41198i))), vec2<i32>(~arg_1, arg_1) ^ vec2<i32>(firstTrailingBit(33956i), ~firstLeadingBit(arg_1)), arg_1);
    let var_1 = global0.a.x;
    return var_0.b.x;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_3(vec4<i32>(func_4(Struct_1(global0.b), ~func_3(vec3<u32>(0u, global0.c.a, global0.b), vec2<bool>(false, true), global0.b, 8793i)), _wgslsmith_dot_vec3_i32(select(~vec3<i32>(1278i, 0i, 2147483647i), min(vec3<i32>(34564i, 1i, -12366i), vec3<i32>(-11335i, 0i, 1i)), global0.b <= 4294967295u), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 2147483647i, -31434i), vec3<i32>(-1i, -2147483647i, 6554i) >> (vec3<u32>(4294967295u, 52950u, global0.c.a) % vec3<u32>(32u)))), _wgslsmith_sub_i32(-40281i, -4917i), countOneBits(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-2147483647i, 1i, -1i, -32477i), vec4<i32>(-2147483647i, 1i, -2147483647i, 0i), false), ~vec4<i32>(-17114i, -2147483647i, 2147483647i, 1i)))), vec2<i32>(_wgslsmith_div_i32(select(0i, -8134i, false), 49241i), select(_wgslsmith_div_i32(-23966i, 1i) << (max(global0.b, global0.c.a) % 32u), 0i, true)), ~(~(-1608i)) ^ (-_wgslsmith_add_i32(83690i, -2147483647i) << ((~0u >> ((27228u & u_input.a) % 32u)) % 32u)));
    var_0 = Struct_3(-vec4<i32>(_wgslsmith_mod_i32(var_0.c, 1i), ~(~var_0.c), i32(-1i) * -2147483647i, func_4(global0.c, ~1i)), ~(~var_0.a.zx), _wgslsmith_add_i32(2147483647i, max(~var_0.a.x, var_0.a.x)));
    global0 = Struct_2(global0.a, ~u_input.a, global0.c);
    let var_1 = Struct_3(vec4<i32>(var_0.a.x, ~(~1i), var_0.c, ~_wgslsmith_div_i32(1i, max(var_0.b.x, -2147483647i))), reverseBits(select(_wgslsmith_div_vec2_i32(vec2<i32>(var_0.b.x, 1i), ~vec2<i32>(var_0.b.x, var_0.c)), vec2<i32>(-1i) * -var_0.b, any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false))))), var_0.b.x);
    var var_2 = Struct_1(~66616u);
    return Struct_2(_wgslsmith_f_op_vec2_f32(step(global0.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(307f, global0.a.x), global0.a)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, -103f) - vec2<f32>(global0.a.x, global0.a.x))), global0.a))), 4294967295u, global0.c);
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_3 {
    global0 = func_2();
    global0 = func_2();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-756f, 621f, global0.a.x, arg_1.x), vec4<f32>(global0.a.x, 1633f, global0.a.x, arg_1.x)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1104f, -1152f, -1000f, -1775f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-2301f * 422f), _wgslsmith_f_op_f32(select(740f, global0.a.x, true)), _wgslsmith_f_op_f32(min(-1835f, -320f)), _wgslsmith_f_op_f32(floor(arg_1.x)))))));
    var var_1 = -813f <= global0.a.x;
    let var_2 = !select(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))), vec2<bool>(true, false), -633f == arg_1.x);
    return Struct_3(vec4<i32>(2147483647i, ~countOneBits(arg_0), -firstTrailingBit(arg_0), ~arg_0), vec2<i32>(0i, 2147483647i), (_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0, arg_0, -2147483647i), vec3<i32>(arg_0, 34179i, 1037i)), -vec3<i32>(14764i, -32287i, arg_0)) >> (~reverseBits(arg_3.a) % 32u)) & _wgslsmith_dot_vec4_i32(vec4<i32>(func_4(Struct_1(u_input.a), -12599i), ~arg_0, arg_0 & 29231i, arg_0), vec4<i32>(~arg_0, arg_0, abs(1i), arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a)))), ~_wgslsmith_add_u32(global0.b, ~1u), global0.c);
    var var_0 = Struct_1(0u);
    var var_1 = func_1(~(~_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, -34499i), vec3<i32>(1i, -7313i, -57429i)), _wgslsmith_dot_vec3_i32(vec3<i32>(17688i, 1i, 1i), vec3<i32>(-2147483647i, 1i, -1i)))), _wgslsmith_f_op_vec2_f32(step(global0.a, vec2<f32>(global0.a.x, -1906f))), ~(vec4<u32>(~var_0.a, global0.b, 4294967295u, var_0.a) | abs(_wgslsmith_sub_vec4_u32(vec4<u32>(23807u, u_input.a, var_0.a, 41029u), vec4<u32>(29884u, global0.c.a, 1u, 1u)))), Struct_1(global0.b));
    let var_2 = Struct_3(_wgslsmith_mult_vec4_i32(-var_1.a & var_1.a, ~(~var_1.a)), max(countOneBits(vec2<i32>(-1i) * -vec2<i32>(-34965i, 2147483647i)), (-vec2<i32>(-60231i, var_1.b.x) & vec2<i32>(var_1.b.x, -16145i)) << (u_input.b % vec2<u32>(32u))), 1i);
    let var_3 = global0.a.x;
    global0 = func_2();
    global0 = Struct_2(global0.a, abs(4294967295u), global0.c);
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.x, countOneBits(_wgslsmith_sub_vec2_i32(var_1.a.xw, -(~vec2<i32>(0i, 1i)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.a.x)))), _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(abs(func_2().a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1280f - _wgslsmith_f_op_f32(-global0.a.x)))), -2095i, var_2.b);
}

