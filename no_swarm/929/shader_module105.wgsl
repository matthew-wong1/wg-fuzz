struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
    d: bool,
    e: vec3<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_3,
    c: u32,
    d: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: f32,
    c: vec2<bool>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 16>;

var<private> global1: bool = false;

var<private> global2: Struct_5;

var<private> global3: vec4<f32>;

var<private> global4: Struct_5 = Struct_5(734f, -413f, vec2<bool>(true, false), vec3<f32>(1241f, 586f, 1591f));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_5) -> vec3<bool> {
    var var_0 = ~u_input.a;
    global3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b, global2.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.d.x - global2.b)), -1308f) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1791f, arg_0.b, arg_0.b, arg_0.a)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(552f, global3.x, global4.a, global3.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1168f, 1315f, global2.d.x, global4.a) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, -559f, global2.a, 867f))), vec4<bool>(true, !arg_0.c.x, -13661i >= u_input.a, true))))));
    var var_1 = u_input.a <= ~(-41341i);
    let var_2 = Struct_1(-_wgslsmith_clamp_vec2_i32(-(vec2<i32>(50034i, 30505i) | vec2<i32>(u_input.a, u_input.a)), abs(select(vec2<i32>(-15744i, -72i), vec2<i32>(u_input.a, 20880i), global4.c.x)), select(~vec2<i32>(u_input.a, -52077i), vec2<i32>(u_input.a, -9532i), !global4.c.x)), vec4<i32>(-u_input.a, -countOneBits(u_input.a), min(_wgslsmith_add_i32(u_input.a, 1527i), firstLeadingBit(1i)), 25944i) | vec4<i32>(firstLeadingBit(abs(0i)), u_input.a, ~1i, firstTrailingBit(countOneBits(2147483647i))), min(vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, u_input.a, -2147483647i, u_input.a), vec4<i32>(1i, -2147483647i, u_input.a, u_input.a)), -9485i, -9757i), abs(vec3<i32>(-2147483647i, 2147483647i, -18730i))), true);
    var var_3 = var_2;
    return vec3<bool>(true, all(vec4<bool>(true, !global2.c.x, any(vec2<bool>(true, true)), true)), var_3.d && var_3.d);
}

fn func_2() -> f32 {
    var var_0 = vec2<i32>(-(~firstTrailingBit(_wgslsmith_div_i32(u_input.a, u_input.a))), u_input.a);
    let var_1 = ~_wgslsmith_sub_vec3_i32(vec3<i32>(abs(-1i), -1i, 66330i) & _wgslsmith_mult_vec3_i32(vec3<i32>(-9989i, var_0.x, var_0.x), vec3<i32>(-1i, -1i, var_0.x)), ~_wgslsmith_div_vec3_i32(vec3<i32>(-1965i, u_input.a, u_input.a), vec3<i32>(-2147483647i, 17455i, -2195i)) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 27123i, u_input.a) >> (vec3<u32>(1u, 4294967295u, 83562u) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(vec3<i32>(14052i, u_input.a, -60578i), vec3<i32>(-1i, var_0.x, u_input.a))));
    var var_2 = select(vec3<bool>(global2.c.x, any(func_3(Struct_5(-1824f, -909f, global2.c, global3.yyx))), global4.c.x), func_3(Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -375f) * _wgslsmith_f_op_f32(808f - global3.x)), _wgslsmith_f_op_f32(f32(-1f) * -1073f), global2.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-723f, global2.d.x, global3.x)))))), any(!func_3(Struct_5(global3.x, -384f, vec2<bool>(true, false), vec3<f32>(global3.x, -1004f, global4.a))).xz));
    let var_3 = select(func_3(Struct_5(1f, _wgslsmith_f_op_f32(exp2(global4.d.x)), global2.c, global4.d)).xx, func_3(Struct_5(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(global2.a)))), 537f, select(select(global2.c, var_2.yz, false), !global4.c, !vec2<bool>(global2.c.x, global4.c.x)), vec3<f32>(_wgslsmith_f_op_f32(-global3.x), global4.b, global2.b))).zx, vec2<bool>(global2.c.x, (var_2.x | true) && !var_2.x));
    var var_4 = func_3(Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(649f, -1457f)) * _wgslsmith_f_op_f32(f32(-1f) * -2290f))), 655f, !vec2<bool>(!global4.c.x, global4.a == 1000f), vec3<f32>(global2.a, _wgslsmith_f_op_f32(f32(-1f) * -484f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1090f, 861f, true)) * 1134f)))).x;
    return global2.a;
}

fn func_1() -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1081f, global3.x) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global4.d.x, global3.x)))), vec2<f32>(-544f, global2.d.x)) - vec2<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(func_2()))), global4.d.zz));
    global1 = !global4.c.x;
    let var_1 = false && !global4.c.x;
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-264f, global4.d.x, 1f, -1177f))));
    var var_2 = Struct_4(select(!(!vec2<bool>(var_1, global4.c.x)), vec2<bool>(all(vec2<bool>(global4.c.x, var_1)), !var_1 == false), false), Struct_3(Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3.x * global2.d.x))), 21987i ^ _wgslsmith_mult_i32(u_input.a, -1i), firstTrailingBit(1u), firstLeadingBit(~1u), firstLeadingBit(~vec2<i32>(-1i, 63784i))), Struct_2(1979f, u_input.a, _wgslsmith_div_u32(abs(37168u), 4294967295u), 27796u ^ _wgslsmith_clamp_u32(4294967295u, 1u, 22799u), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 1i), -vec2<i32>(u_input.a, -1i))), 1i, global4.c.x || all(!vec4<bool>(var_1, var_1, global4.c.x, global2.c.x)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1683f), _wgslsmith_f_op_f32(-1382f + _wgslsmith_f_op_f32(min(-2425f, var_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -576f))), ~(~1u), Struct_1(vec2<i32>(u_input.a, _wgslsmith_mod_i32(min(-53555i, 41070i), u_input.a & u_input.a)), firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -51287i, -2147483647i, u_input.a), vec4<i32>(u_input.a, u_input.a, 2147483647i, -1i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a, -1i), vec3<i32>(u_input.a, -1i, u_input.a)), u_input.a, u_input.a)), -(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-29294i, 0i, u_input.a)) & (vec3<i32>(u_input.a, -1i, u_input.a) ^ vec3<i32>(u_input.a, 5642i, 62646i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(529f))) != 2109f));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(404f, var_0.x))), var_2.b.b.a, var_2.b.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_1());
    var var_1 = ~firstTrailingBit(abs(0u));
    global1 = global2.c.x;
    global3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2934f + -1601f) * 639f)), -901f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x)))), global2.d.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, global2.d.x, global3.x, global4.b)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.a, 1214f, 489f, var_0.x) * vec4<f32>(var_0.x, global2.d.x, 726f, global2.a)))))));
    let var_2 = Struct_3(Struct_2(690f, -51816i, 8930u, 1u, _wgslsmith_sub_vec2_i32(max(min(vec2<i32>(-47698i, u_input.a), vec2<i32>(u_input.a, u_input.a)), firstLeadingBit(vec2<i32>(u_input.a, 7211i))), ~(vec2<i32>(42834i, 2147483647i) | vec2<i32>(u_input.a, u_input.a)))), Struct_2(global2.a, 23558i, ~firstLeadingBit(39120u), 0u, vec2<i32>(-1i, -25221i)), firstTrailingBit(57875i) >> ((_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(4294967295u, 1u, 68614u)), ~vec3<u32>(1u, 66656u, 67448u)) >> (1u % 32u)) % 32u), global4.c.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global4.d)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-445f, _wgslsmith_f_op_f32(230f + -587f), _wgslsmith_f_op_f32(997f * 580f))))));
    let var_3 = 0i;
    let var_4 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2475f, -129f) * global3.x), _wgslsmith_f_op_f32(f32(-1f) * -352f), select(vec2<bool>(!(!global2.c.x), var_2.d), !vec2<bool>(any(vec4<bool>(global4.c.x, global4.c.x, var_2.d, false)), true), global4.c.x), var_0);
    let var_5 = Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.a, var_2.a.b, var_3), vec3<i32>(u_input.a, var_3, -25986i) ^ vec3<i32>(26248i, -1i, 24835i)), vec3<i32>(-50120i, var_3, -u_input.a)), countOneBits(-_wgslsmith_div_i32(-15226i, 27274i))), vec4<i32>(~var_3, ~u_input.a, -10567i, _wgslsmith_clamp_i32(-17444i, -35137i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.c, var_2.a.e.x, var_2.b.e.x, 22281i) | vec4<i32>(-2147483647i, -2147483647i, u_input.a, u_input.a), -vec4<i32>(27197i, 26321i, u_input.a, 2147483647i)))), _wgslsmith_div_vec3_i32(vec3<i32>(var_3, var_2.c, u_input.a), firstLeadingBit(abs(-vec3<i32>(2147483647i, var_3, var_3)))), true);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.e.x, var_5.b | var_5.b);
}

