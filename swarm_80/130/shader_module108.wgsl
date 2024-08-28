struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: Struct_1,
    d: vec2<f32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: f32 = -197f;

var<private> global2: f32;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    global0 = _wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, 22655i, firstTrailingBit(1i), _wgslsmith_mod_i32(~1i, ~2147483647i)), vec4<i32>(1i, ~5309i, 1i, _wgslsmith_add_i32(-reverseBits(-1i), -2147483647i)));
    return 960f;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_4, arg_3: i32) -> i32 {
    var var_0 = arg_2.c;
    return 16460i;
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.b;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -854f)), -1322f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(f32(-1f) * -243f)));
    global0 = _wgslsmith_mod_i32(func_4(~vec4<i32>(-24279i, -16782i, 0i, -38368i), Struct_1(true, ~vec4<i32>(1i, 1i, 1i, 1i)), Struct_4(-550f, Struct_3(1i), Struct_1(any(vec4<bool>(true, false, true, true)), vec4<i32>(-45765i, -2147483647i, -2147483647i, -1i)), vec2<f32>(_wgslsmith_f_op_f32(func_3(vec4<f32>(632f, -1043f, -1174f, -441f))), 210f), false), firstTrailingBit(firstTrailingBit(firstTrailingBit(-1i)))), -1802i);
    var_1 = 313f;
    var var_2 = Struct_1(!all(!select(vec2<bool>(false, true), vec2<bool>(false, false), true)), reverseBits(vec4<i32>(_wgslsmith_sub_i32(abs(-8840i), 1i), -min(-1i, -2147483647i), 0i, min(343i, i32(-1i) * -1i))));
    return Struct_1(var_2.a, -(~_wgslsmith_sub_vec4_i32(vec4<i32>(var_2.b.x, -11547i, var_2.b.x, var_2.b.x), var_2.b)));
}

fn func_5(arg_0: i32, arg_1: Struct_4, arg_2: f32, arg_3: vec4<bool>) -> Struct_3 {
    global1 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.d.x, 1451f, -368f, arg_1.a), vec4<f32>(arg_1.a, arg_1.a, arg_1.d.x, arg_2))))))), -237f));
    let var_0 = arg_1;
    var var_1 = arg_1.b;
    let var_2 = !arg_1.e;
    global2 = arg_2;
    return arg_1.b;
}

fn func_6(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec4<i32>) -> vec2<u32> {
    global0 = reverseBits(-1i);
    global0 = -(i32(-1i) * -1i);
    var var_0 = firstTrailingBit(vec3<u32>(reverseBits(1u), abs(u_input.b), ~firstTrailingBit(_wgslsmith_mult_u32(55364u, 56853u))));
    global2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(799f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(161f))))))));
    var var_1 = all(select(select(vec3<bool>(true, all(arg_1), any(vec2<bool>(false, arg_1.x))), !(!vec3<bool>(arg_1.x, true, arg_1.x)), arg_1.x), !vec3<bool>(true, !arg_1.x, false), ((arg_1.x || arg_1.x) | true) && true));
    return abs(min(_wgslsmith_sub_vec2_u32(select(var_0.yy, var_0.zy, true) ^ var_0.zx, ~vec2<u32>(0u, 0u)), vec2<u32>(1u | u_input.a, u_input.b)));
}

fn func_1() -> u32 {
    let var_0 = func_6(func_5(0i, Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1228f - -605f)), Struct_3(-2147483647i), func_2(), vec2<f32>(_wgslsmith_f_op_f32(-158f - 1195f), _wgslsmith_f_op_f32(-1220f - 847f)), false), -1515f, select(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), true), vec4<bool>(all(vec4<bool>(false, true, true, true)), any(vec4<bool>(true, true, true, false)), true, true), true)), vec2<bool>(true, any(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), true))), ~(~firstLeadingBit(func_2().b)));
    let var_1 = select(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-25439i, 2147483647i, 1i, 3616i), -_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -11601i, -1i, -31087i), firstTrailingBit(vec4<i32>(-21608i, 0i, -49215i, 1i)))), ~vec4<i32>(~abs(34688i), max(0i, i32(-1i) * -21862i), min(min(0i, 1i), -47256i), ~31612i), vec4<bool>((~var_0.x >> (~u_input.b % 32u)) <= ((u_input.b | var_0.x) >> (1u % 32u)), true, !(_wgslsmith_f_op_f32(trunc(-1201f)) <= _wgslsmith_f_op_f32(trunc(960f))), true));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(all(vec2<bool>(true, true)), true, true, 1u >= _wgslsmith_clamp_u32(~u_input.a, 1u, _wgslsmith_sub_u32(30448u, u_input.a)));
    let var_1 = var_0.x;
    var var_2 = 4294967295u > min(u_input.b, func_1());
    var var_3 = Struct_2(Struct_1(true, firstTrailingBit(~max(vec4<i32>(12063i, 1i, -23418i, 2147483647i), vec4<i32>(-2147483647i, -2147483647i, 2147483647i, -1i)))), Struct_1(true, min(abs(vec4<i32>(-2147483647i, -2147483647i, -2147483647i, -2147483647i)), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 44460i, -32032i, -1i), countOneBits(vec4<i32>(-1i, -2147483647i, -1i, -2147483647i))))), _wgslsmith_sub_u32(~(~max(u_input.b, 1u)), u_input.a), func_2(), vec3<bool>(var_1, var_1, (true | any(vec3<bool>(var_0.x, var_0.x, var_1))) && true));
    var var_4 = Struct_2(Struct_1(false, var_3.b.b >> (~(vec4<u32>(17540u, 62179u, 0u, 1u) ^ vec4<u32>(var_3.c, u_input.b, var_3.c, 74881u)) % vec4<u32>(32u))), var_3.b, 4294967295u | (~u_input.b >> (435u % 32u)), Struct_1(all(var_0.yyz), var_3.a.b), var_3.e);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(385f - _wgslsmith_f_op_f32(1352f - 1214f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(791f + 440f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1279f), _wgslsmith_f_op_f32(sign(112f)))))));
}

