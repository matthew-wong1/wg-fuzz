struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: u32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(524f, -148f, 1000f) + vec3<f32>(-491f, 1869f, 2196f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1897f, -1412f, 1303f) * vec3<f32>(1230f, 1000f, 1354f))))), Struct_1(u_input.b.x), 1u, vec2<bool>(u_input.a <= ((u_input.d >> (u_input.e % 32u)) << (_wgslsmith_div_u32(u_input.e, u_input.b.x) % 32u)), true));
    let var_1 = var_0.b;
    var var_2 = Struct_1(~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.a, 10688u, 82942u, var_1.a), u_input.b), u_input.b));
    var_0 = Struct_2(var_0.a, var_0.b, min(var_2.a, min(firstTrailingBit(u_input.b.x), ~var_2.a)), vec2<bool>(true, true));
    var var_3 = Struct_1(15349u);
    return var_0.d;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: u32, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = arg_3;
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(696f, -1628f, -2556f), vec3<f32>(789f, -1338f, 165f))) - vec3<f32>(729f, -1349f, -110f))) + vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-158f, 428f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -956f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1290f * -185f)))), arg_3, arg_2, select(!select(!vec2<bool>(arg_1, arg_1), vec2<bool>(false, arg_1), !arg_1), func_3(), all(!select(vec3<bool>(false, arg_1, false), vec3<bool>(arg_1, false, arg_1), arg_1))));
    let var_2 = _wgslsmith_f_op_vec3_f32(var_1.a + vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-799f, var_1.a.x)))), 1287f));
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.a.x * -841f), var_2.x, _wgslsmith_f_op_f32(-var_1.a.x)) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-770f, -895f, var_1.a.x) * vec3<f32>(var_2.x, 1433f, var_2.x)), _wgslsmith_f_op_vec3_f32(-var_1.a)))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-2275f + var_1.a.x), var_2.x, _wgslsmith_f_op_f32(ceil(234f))))))), var_1.b, 0u, vec2<bool>(_wgslsmith_mod_u32(arg_2 << (4294967295u % 32u), abs(arg_3.a)) <= arg_2, false));
    var var_4 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(var_2 + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2) - vec3<f32>(302f, -496f, var_1.a.x)) + var_3.a)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.a - var_3.a))), _wgslsmith_div_vec3_f32(var_2, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_3.a))))))));
    return ~vec4<i32>(-2147483647i, countOneBits(firstLeadingBit(-46421i)) | ~(arg_0 & -2147483647i), min(~(-arg_0), -1i & ~arg_0), -2147483647i);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> i32 {
    let var_0 = vec4<i32>(_wgslsmith_dot_vec4_i32(-_wgslsmith_mod_vec4_i32(func_2(u_input.a, arg_0.d.x, 1u, Struct_1(0u)), -vec4<i32>(u_input.d, 0i, u_input.d, u_input.a)), _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(-23103i, u_input.d, u_input.a, 1i), vec4<i32>(0i, u_input.a, -2147483647i, u_input.a)), abs(vec4<i32>(30466i, -2147483647i, 18297i, 21844i)) | _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, u_input.d, -654i, -1i), vec4<i32>(u_input.a, 18385i, u_input.a, 1i), vec4<i32>(u_input.d, -1i, u_input.d, -45496i)), vec4<i32>(u_input.d, u_input.d >> (arg_0.c % 32u), 2147483647i, ~(-1i)))), -select(~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.d), vec2<i32>(u_input.d, 2147483647i)), abs(-56872i), select(arg_3.d.x & false, false, all(vec4<bool>(arg_2.d.x, arg_3.d.x, arg_3.d.x, true)))), reverseBits(-2147483647i >> (1u % 32u)), u_input.a);
    let var_1 = _wgslsmith_sub_i32(max(~u_input.a, ~firstTrailingBit(2147483647i)), -2147483647i);
    var var_2 = var_0.x >> ((56639u << (arg_3.b.a % 32u)) % 32u);
    var_2 = max(0i, _wgslsmith_dot_vec2_i32(-_wgslsmith_mult_vec2_i32(var_0.wy, var_0.yy), vec2<i32>(countOneBits(var_1), -20331i)));
    var_2 = -var_0.x;
    return _wgslsmith_mod_i32(~_wgslsmith_mult_i32(1i, 0i), 1i);
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(~(~firstLeadingBit(u_input.e)));
    let var_1 = vec3<i32>(48896i, _wgslsmith_div_i32(arg_0 >> (~abs(arg_1.c) % 32u), arg_0), ~abs(u_input.d));
    var_0 = Struct_1(_wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_mod_u32(30852u, var_0.a), _wgslsmith_mult_u32(arg_1.b.a, u_input.e), _wgslsmith_add_u32(arg_1.b.a, 54510u)), u_input.c));
    var_0 = Struct_1(firstLeadingBit(~u_input.b.x));
    var var_2 = arg_1;
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~45514u;
    var var_1 = abs(103261u);
    var var_2 = (_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.a, 79856i, 0i), vec4<i32>(6951i, 1i, u_input.d, -2147483647i)), u_input.d), abs(-vec2<i32>(u_input.d, -1i)), vec2<i32>(27575i >> (u_input.b.x % 32u), u_input.d)) ^ ~(vec2<i32>(-1i) * -vec2<i32>(u_input.a, -1i))) & abs(countOneBits(select(max(vec2<i32>(u_input.a, u_input.d), vec2<i32>(u_input.a, u_input.a)), vec2<i32>(u_input.a, 0i) << (u_input.c.zx % vec2<u32>(32u)), u_input.a <= u_input.a)));
    var var_3 = _wgslsmith_f_op_f32(select(1168f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(455f * -198f)), any(vec2<bool>(true, true))));
    let var_4 = ~var_0;
    let var_5 = func_4(_wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(~u_input.a, func_1(Struct_2(vec3<f32>(1000f, -274f, 277f), Struct_1(0u), var_4, vec2<bool>(false, true)), Struct_1(30944u), Struct_2(vec3<f32>(437f, -210f, 2359f), Struct_1(var_0), var_0, vec2<bool>(true, false)), Struct_2(vec3<f32>(-2518f, -659f, -1360f), Struct_1(u_input.b.x), u_input.b.x, vec2<bool>(false, true)))), firstTrailingBit(_wgslsmith_sub_i32(2147483647i, 5836i))), _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.d, u_input.a, var_2.x) ^ -vec3<i32>(-1i, 0i, 27553i), vec3<i32>(0i, u_input.d, -3046i))), Struct_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))), Struct_1(u_input.c.x), 38678u, vec2<bool>(false, false || any(vec2<bool>(true, true)))));
    let var_6 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(157f, -579f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1108f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(658f * 1223f)), _wgslsmith_f_op_f32(-1000f + -396f)))), vec4<f32>(_wgslsmith_f_op_f32(step(1f, 1500f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * -1146f), -1292f))), 2530f, _wgslsmith_f_op_f32(121f * 1668f)), false));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~u_input.d, 31045i, 1i, select(-(~(-1505i)), -u_input.d, true)), u_input.b, _wgslsmith_sub_i32(50516i, ~min(24561i, 2147483647i)) & u_input.a, -17577i | var_2.x, 226f);
}

