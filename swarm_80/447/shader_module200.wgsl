struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: u32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
    c: Struct_2,
    d: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: vec4<f32>,
    c: Struct_4,
    d: Struct_2,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec4<u32>,
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>) -> bool {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-415f, -297f, 273f, -453f))))), Struct_1(firstLeadingBit(2147483647i), arg_0, firstTrailingBit(firstTrailingBit(_wgslsmith_add_u32(u_input.b, u_input.b)))));
    var var_1 = Struct_1(_wgslsmith_div_i32(u_input.a, -firstLeadingBit(14880i)), select(!select(vec3<bool>(false, var_0.b.b.x, false), select(arg_0, var_0.b.b, vec3<bool>(true, true, arg_0.x)), vec3<bool>(true, false, false)), arg_0, true), 4294967295u);
    let var_2 = ~(~vec4<u32>(max(var_1.c, 29578u), 8634u, 37006u, var_0.b.c >> (var_1.c % 32u)) | vec4<u32>(~_wgslsmith_div_u32(37811u, 1u), u_input.b << (reverseBits(1u) % 32u), firstLeadingBit(4294967295u) << (_wgslsmith_mod_u32(var_0.b.c, u_input.b) % 32u), 59046u << (0u % 32u)));
    var var_3 = true && !var_1.b.x;
    var var_4 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(676f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-972f)))), -1i, u_input.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2444f * var_0.a.x))))), var_0.b);
    return !(!var_0.b.b.x);
}

fn func_2(arg_0: vec3<bool>, arg_1: i32, arg_2: vec2<u32>, arg_3: Struct_1) -> vec3<u32> {
    var var_0 = func_3(vec3<bool>((u_input.b > 1u) != (_wgslsmith_mult_u32(arg_3.c, 4294967295u) <= arg_2.x), true, true));
    var_0 = arg_3.b.x | true;
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1663f, -126f, 1590f, -1425f), vec4<f32>(438f, -1000f, 1281f, 940f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(284f, -713f, 817f, -731f) + vec4<f32>(-1099f, 1389f, 1592f, 454f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2112f, 783f, -346f, -854f) - vec4<f32>(1136f, 131f, 413f, 610f)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1656f, 1661f, -1221f, 354f))))) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(186f * -1483f), -449f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1000f)))), _wgslsmith_f_op_f32(round(-1611f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1087f)) - _wgslsmith_div_f32(-673f, 524f)))), arg_3);
    let var_2 = vec2<i32>(var_1.b.a, -2147483647i);
    var var_3 = arg_3;
    return _wgslsmith_div_vec3_u32(~_wgslsmith_div_vec3_u32(select(reverseBits(vec3<u32>(u_input.b, 1u, 4294967295u)), vec3<u32>(var_3.c, arg_2.x, 34893u), false), ~(~vec3<u32>(4294967295u, arg_2.x, 14373u))), ~vec3<u32>(arg_3.c, var_3.c, min(u_input.b | u_input.b, select(1u, 4294967295u, true))));
}

fn func_1(arg_0: i32) -> u32 {
    var var_0 = ~_wgslsmith_add_vec3_u32(vec3<u32>(1u, max(_wgslsmith_mod_u32(u_input.b, u_input.b), firstLeadingBit(20187u)), 23865u), vec3<u32>(_wgslsmith_sub_u32(u_input.b, u_input.b), u_input.b, u_input.b));
    let var_1 = countOneBits(vec4<u32>(_wgslsmith_mod_u32(abs(firstLeadingBit(4294967295u)), var_0.x ^ u_input.b), 1u, var_0.x, _wgslsmith_mod_u32(var_0.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 0u, u_input.b), func_2(vec3<bool>(true, true, true), 0i, vec2<u32>(1u, 15303u), Struct_1(arg_0, vec3<bool>(false, true, false), 1u))))));
    var_0 = vec3<u32>(var_1.x, 18500u, var_1.x);
    var_0 = (_wgslsmith_clamp_vec3_u32(firstTrailingBit(~var_1.zyx), vec3<u32>(var_0.x, ~50534u, 67532u), _wgslsmith_clamp_vec3_u32(var_1.yyx, _wgslsmith_div_vec3_u32(var_1.wxw, var_1.zyx), ~var_1.xxw)) ^ firstTrailingBit(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 1u, var_0.x), var_1.zxw)))) ^ _wgslsmith_mult_vec3_u32(func_2(vec3<bool>(true, true, true), -_wgslsmith_mod_i32(0i, 1i), min(var_1.xz, vec2<u32>(1u, 16971u)) << (_wgslsmith_sub_vec2_u32(var_0.zx, var_1.xw) % vec2<u32>(32u)), Struct_1(u_input.a, vec3<bool>(true, true, true), func_2(vec3<bool>(true, true, false), -26648i, var_1.wx, Struct_1(60379i, vec3<bool>(false, true, true), 4294967295u)).x)), ~vec3<u32>(~52577u, var_1.x, ~var_0.x));
    var var_2 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1000f)), -1000f)), -817f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1021f, 186f)))));
    return ~_wgslsmith_dot_vec4_u32(var_1, var_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(min(vec4<u32>(16981u << (u_input.b % 32u), 1u, ~0u, func_1(min(u_input.a, u_input.a))), vec4<u32>(_wgslsmith_clamp_u32(u_input.b, u_input.b, 50986u), 12646u, u_input.b, _wgslsmith_mult_u32(u_input.b, u_input.b)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(52556u, 36966u, 2750u, u_input.b), vec4<u32>(u_input.b, 36865u, u_input.b, u_input.b) << (vec4<u32>(u_input.b, u_input.b, 4702u, u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u))), Struct_3(vec4<f32>(-2966f, _wgslsmith_f_op_f32(597f + _wgslsmith_f_op_f32(320f * 1122f)), 121f, _wgslsmith_div_f32(453f, 1000f)), Struct_1(0i, vec3<bool>(true, true, true), ~25825u)), Struct_2(-842f, -_wgslsmith_sub_i32(u_input.a, u_input.a), u_input.b, -812f, Struct_1(2147483647i, vec3<bool>(all(vec4<bool>(true, false, true, false)), any(vec4<bool>(false, true, false, true)), true), u_input.b)), Struct_3(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(f32(-1f) * -196f)), _wgslsmith_f_op_f32(-2730f + _wgslsmith_f_op_f32(f32(-1f) * -393f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -2048f)), -1303f), Struct_1(-14004i, vec3<bool>(func_3(vec3<bool>(true, false, false)), true, true), ~func_2(vec3<bool>(true, false, false), u_input.a, vec2<u32>(u_input.b, 4294967295u), Struct_1(u_input.a, vec3<bool>(true, false, true), u_input.b)).x)));
    var var_1 = Struct_1(~u_input.a | _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.d.b.a, u_input.a, var_0.c.b), vec3<i32>(2147483647i, var_0.d.b.a, 7420i)), ~vec3<i32>(-1i, u_input.a, 5042i)), u_input.a), select(!(!vec3<bool>(var_0.c.e.b.x, false, true)), var_0.d.b.b, select(select(false, true, false), false, var_0.a.x < ~40790u)), func_2(select(!(!vec3<bool>(var_0.d.b.b.x, false, var_0.c.e.b.x)), !select(vec3<bool>(var_0.c.e.b.x, var_0.c.e.b.x, var_0.d.b.b.x), var_0.b.b.b, vec3<bool>(false, true, var_0.c.e.b.x)), var_0.d.b.b.x), ~(-2147483647i), _wgslsmith_mult_vec2_u32(vec2<u32>(~u_input.b, firstLeadingBit(74185u)), ~var_0.a.zy), Struct_1(max(-6460i, var_0.c.e.a), vec3<bool>(true | var_0.d.b.b.x, !var_0.b.b.b.x, all(var_0.d.b.b.yy)), ~(~1u))).x);
    var_1 = Struct_1((-(var_1.a >> (var_0.d.b.c % 32u)) | var_1.a) << (var_1.c % 32u), var_0.b.b.b, u_input.b << (_wgslsmith_div_u32(~227u, u_input.b) % 32u));
    var_1 = Struct_1(var_1.a, vec3<bool>(any(select(var_1.b, select(vec3<bool>(var_1.b.x, true, var_0.b.b.b.x), vec3<bool>(false, var_1.b.x, true), true), !var_1.b)), var_1.b.x, var_0.b.b.b.x), select(u_input.b, _wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(54099u, var_0.c.c, u_input.b, 4294967295u), vec4<u32>(21320u, u_input.b, u_input.b, 57047u))), false));
    let var_2 = !(!(!select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, var_1.b.x), var_0.d.b.b), select(vec3<bool>(var_0.b.b.b.x, var_0.b.b.b.x, var_0.d.b.b.x), vec3<bool>(false, false, var_1.b.x), false), var_0.d.b.b.x)));
    let var_3 = 0u;
    let var_4 = ~(~var_0.a.yyx);
    var_1 = var_0.b.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.a.zzx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.a, 192f, var_0.c.a))) - vec3<f32>(var_0.b.a.x, -1152f, _wgslsmith_f_op_f32(var_0.c.d + -2139f))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(820f, var_0.b.a.x, 1000f), var_0.b.a.zxz, var_1.b.x)))), vec3<f32>(_wgslsmith_div_f32(var_0.b.a.x, -1675f), _wgslsmith_f_op_f32(var_0.c.a + -722f), var_0.c.a)))), ~var_0.a);
}

