struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 14>;

var<private> global1: i32 = -35184i;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: i32) -> vec2<f32> {
    var var_0 = arg_0;
    global0 = array<vec3<i32>, 14>();
    var_0 = Struct_4(_wgslsmith_sub_u32(max(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a, var_0.a), ~vec2<u32>(u_input.c, u_input.e))), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(u_input.b, 4294967295u)), ~countOneBits(vec2<u32>(4294967295u, 30633u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.b)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(1075f)), _wgslsmith_f_op_f32(arg_0.b.x + 2203f))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - var_0.b.x) + 1f), _wgslsmith_f_op_f32(floor(507f)))), 864f, ~u_input.d >> (~max(arg_0.a, select(1u, var_0.a, true)) % 32u), vec3<f32>(-1066f, _wgslsmith_div_f32(-823f, 758f), -1000f));
    var var_2 = !select(vec3<bool>(true && (u_input.c != var_1.c), true, arg_0.b.x != var_1.d.x), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true)), vec3<bool>(true, false, true), false), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), vec3<bool>(true, false, false), select(vec3<bool>(true, false, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), true)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.d.x, var_1.d.x) + vec2<f32>(-223f, arg_0.b.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(537f, var_1.d.x)), false)) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1342f, var_1.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(390f, 1000f)), !var_2.yz))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-320f, 124f) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1295f, -1442f)))))));
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: vec3<f32>, arg_3: bool) -> Struct_2 {
    global1 = ~(~(-8276i));
    let var_0 = Struct_3(Struct_2(29649u, ~(vec4<i32>(-1i) * -vec4<i32>(2147483647i, 11539i, u_input.a.x, u_input.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_4(~41592u, _wgslsmith_f_op_vec3_f32(arg_2 * vec3<f32>(arg_2.x, 1000f, arg_2.x))), ~13762i))));
    let var_1 = vec3<u32>(~(~u_input.d), select(~(~u_input.b), _wgslsmith_dot_vec2_u32(select(vec2<u32>(0u, 1u), abs(vec2<u32>(1u, var_0.a.a)), !arg_3), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(55507u, u_input.d, var_0.a.a), vec3<u32>(var_0.a.a, var_0.a.a, 0u)), ~var_0.a.a)), true), (var_0.a.a << (~1u % 32u)) & u_input.e);
    let var_2 = var_1.zx;
    var var_3 = Struct_3(Struct_2(countOneBits(abs(_wgslsmith_dot_vec2_u32(var_1.yz, var_2))), ~(var_0.a.b | firstTrailingBit(vec4<i32>(u_input.a.x, var_0.a.b.x, u_input.a.x, u_input.a.x)))), vec2<f32>(_wgslsmith_f_op_f32(select(1381f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -108f))), true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(491f + var_0.b.x)))))));
    return var_3.a;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: u32, arg_3: u32) -> bool {
    var var_0 = Struct_3(Struct_2(reverseBits(arg_1.a) | countOneBits(select(arg_1.a, 0u, false)), min(vec4<i32>(countOneBits(arg_1.b.x), 1i, -1i, _wgslsmith_div_i32(arg_1.b.x, 3102i)), vec4<i32>(-arg_1.b.x, ~u_input.a.x, -2147483647i >> (0u % 32u), arg_1.b.x >> (4795u % 32u)))), _wgslsmith_f_op_vec2_f32(round(arg_0.zy)));
    var_0 = Struct_3(Struct_2(select(~(~4294967295u), ~(4294967295u >> (arg_2 % 32u)), true && all(vec4<bool>(true, false, true, true))), _wgslsmith_div_vec4_i32(firstLeadingBit(_wgslsmith_mult_vec4_i32(arg_1.b, arg_1.b)), vec4<i32>(abs(-2147483647i), _wgslsmith_mod_i32(2147483647i, -53746i), var_0.a.b.x, -22709i))), var_0.b);
    global0 = array<vec3<i32>, 14>();
    let var_1 = ~(~0u) >> ((_wgslsmith_mod_u32(_wgslsmith_mult_u32(9263u, 69011u), 8061u) << (~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_2, arg_1.a, var_0.a.a), vec3<u32>(var_0.a.a, var_0.a.a, arg_2)), vec3<u32>(arg_1.a, arg_2, arg_1.a) << (vec3<u32>(1668u, arg_2, u_input.e) % vec3<u32>(32u))) % 32u)) % 32u);
    global1 = -u_input.a.x << (5379u % 32u);
    return all(vec4<bool>(select(true, any(select(vec2<bool>(true, true), vec2<bool>(false, false), true)), false), max(abs(u_input.a.x), arg_1.b.x) >= -461i, all(vec4<bool>(true, false, all(vec3<bool>(false, false, false)), var_0.a.b.x >= 18511i)), true));
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    return arg_2;
}

fn func_1(arg_0: i32) -> f32 {
    global0 = array<vec3<i32>, 14>();
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-330f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1167f + 999f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-961f, -342f))))));
    let var_1 = func_5(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(399f, 129f, 1000f) - vec3<f32>(var_0.x, 235f, var_0.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(495f, -1307f, -1071f))), func_2(vec2<bool>(true, true), _wgslsmith_f_op_f32(round(var_0.x)), vec3<f32>(609f, -167f, var_0.x), true), ~firstTrailingBit(4294967295u), ~(u_input.b >> (4294967295u % 32u))) && false, Struct_2(u_input.e, _wgslsmith_add_vec4_i32(vec4<i32>(-1i, i32(-1i) * -14353i, func_2(vec2<bool>(false, false), 1000f, vec3<f32>(var_0.x, -181f, var_0.x), false).b.x, -20371i), vec4<i32>(arg_0 << (42071u % 32u), arg_0, u_input.a.x | -2147483647i, abs(arg_0)))), Struct_1(_wgslsmith_f_op_vec2_f32(var_0 + vec2<f32>(_wgslsmith_f_op_f32(var_0.x + -1560f), var_0.x)), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-var_0.x)), u_input.e, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1663f, 131f, var_0.x), vec3<f32>(455f, 904f, var_0.x), false))))), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, firstLeadingBit(u_input.b), abs(u_input.b)), select(vec3<u32>(u_input.e, 58933u, 21625u), vec3<u32>(14726u, 4294967295u, u_input.b) >> (vec3<u32>(1u, u_input.e, 1u) % vec3<u32>(32u)), vec3<bool>(true, true, true))), 10419u));
    global1 = arg_0;
    var var_2 = !(!vec2<bool>(!any(vec4<bool>(true, true, true, false)), (-855f > var_0.x) | true));
    return var_1.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2405f)) - 1074f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(606f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -1066f))))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -166f))))))), _wgslsmith_f_op_f32(-1586f * var_0), u_input.c, vec3<f32>(var_0, _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0)))), -578f));
    var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(abs(-1434f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -138f))), _wgslsmith_f_op_f32(func_1(u_input.a.x >> (8773u % 32u)))), _wgslsmith_f_op_f32(-var_1.b), 72900u, vec3<f32>(1638f, _wgslsmith_f_op_f32(max(var_1.b, -1067f)), _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, 1207f)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -452f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_f32(round(var_1.b)), -684f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1259f, 266f, -973f, var_0)))) * vec4<f32>(var_0, _wgslsmith_f_op_f32(func_1(u_input.a.x)), _wgslsmith_f_op_f32(max(var_1.b, -319f)), -633f))), !(!any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(func_3(Struct_4(~4294967295u, var_1.d), ~(firstTrailingBit(4703i) << (~var_1.c % 32u)))).x;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

