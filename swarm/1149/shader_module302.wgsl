struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec2<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: vec4<i32> = vec4<i32>(0i, 2147483647i, -4149i, 2147483647i);

var<private> global1: array<Struct_4, 21>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: i32) -> vec4<i32> {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.b, 1u)) << (~max(vec2<u32>(u_input.b, 1u), vec2<u32>(22235u, 33353u) | vec2<u32>(u_input.b, 19451u)) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(~select(~vec2<u32>(u_input.b, u_input.b), select(vec2<u32>(1121u, u_input.b), vec2<u32>(8585u, 0u), arg_0.a.x), true), ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(41710u, u_input.b) ^ vec2<u32>(32128u, 0u)), firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(u_input.b, 20232u), vec2<u32>(4294967295u, 4294967295u))) | vec2<u32>(~1u, ~u_input.b))), 21u)];
    global0 = vec4<i32>(arg_2, arg_2, ~(-firstLeadingBit(u_input.a)) << (_wgslsmith_mult_u32(1u, 1u << (~u_input.b % 32u)) % 32u), 25712i);
    let var_1 = select(arg_0.a, !vec2<bool>(arg_0.a.x, !any(vec4<bool>(false, arg_0.a.x, true, false))), true);
    let var_2 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -308f), arg_1.x), max(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, 41738u, 5762u), vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b), vec4<u32>(8262u, 25670u, u_input.b, 5142u)), ~(~vec4<u32>(50592u, 1u, u_input.b, u_input.b))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-621f - arg_1.x), -1043f, _wgslsmith_f_op_f32(step(arg_1.x, arg_1.x)), -378f)), ~(vec2<u32>(1u, 1u) & vec2<u32>(u_input.b, u_input.b)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(arg_1.zw * var_0.a.xz), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(271f, 619f), var_0.a.xy))))))), arg_0.a.x, _wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(u_input.b, ~7086u)), ~_wgslsmith_div_vec2_u32(~vec2<u32>(1u, 28017u), ~vec2<u32>(0u, 1u))));
    var var_3 = vec3<i32>(622i, arg_2, 0i);
    return ~(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_2, 33091i, global0.x | 41504i, arg_2), vec4<i32>(global0.x, 1i, 1i, global0.x)) ^ vec4<i32>(-16447i, countOneBits(u_input.a), _wgslsmith_sub_i32(u_input.a << (1u % 32u), _wgslsmith_mod_i32(6045i, 29486i)), -1i));
}

fn func_2() -> Struct_3 {
    global0 = ~firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec4_i32(min(vec4<i32>(2147483647i, global0.x, u_input.a, 53593i), vec4<i32>(-1i, global0.x, -21915i, u_input.a)), vec4<i32>(2147483647i, 76723i, global0.x, 11386i)), ~_wgslsmith_sub_i32(u_input.a, 0i), global0.x, -_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, 2147483647i, 0i, 0i), vec4<i32>(0i, 45327i, u_input.a, u_input.a))));
    global0 = ~abs(reverseBits(func_3(Struct_3(vec2<bool>(true, false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(377f, -605f, -828f, 1176f)), u_input.a)));
    let var_0 = u_input.a;
    global1 = array<Struct_4, 21>();
    var var_1 = global0.x;
    return Struct_3(vec2<bool>(true, true));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: Struct_3, arg_3: Struct_1) -> Struct_1 {
    global1 = array<Struct_4, 21>();
    global0 = ~(~countOneBits(vec4<i32>(-1i) * -vec4<i32>(global0.x, -8411i, 1i, 2147483647i)));
    let var_0 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(max(1587f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -138f) + arg_3.e.x))), arg_3.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_3.e.x)))), _wgslsmith_f_op_f32(min(866f, _wgslsmith_f_op_f32(round(arg_3.c.x))))));
    var var_1 = vec3<bool>(u_input.a <= _wgslsmith_add_i32(global0.x & ~u_input.a, -2147483647i), all(!(!select(vec4<bool>(arg_0.a.x, true, arg_0.a.x, arg_2.a.x), vec4<bool>(arg_0.a.x, arg_2.a.x, true, arg_0.a.x), vec4<bool>(false, arg_0.a.x, false, arg_0.a.x)))), !arg_2.a.x);
    global0 = reverseBits(abs(vec4<i32>(-2268i, -2147483647i, _wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a, global0.x), -19121i), u_input.a)));
    return arg_3;
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2) -> bool {
    let var_0 = vec3<i32>(min(reverseBits(u_input.a ^ 1i) >> (abs(_wgslsmith_dot_vec2_u32(arg_2.c, arg_1.b.zw)) % 32u), 2147483647i), -_wgslsmith_mod_i32(u_input.a, global0.x), _wgslsmith_sub_i32(u_input.a, reverseBits(~64077i)));
    global0 = _wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -(vec4<i32>(-2147483647i, global0.x, -13013i, 18799i) << (vec4<u32>(arg_1.b.x, 46419u, arg_2.a.d.x, 4294967295u) % vec4<u32>(32u))), select(vec4<i32>(1i, 1i, u_input.a, global0.x), vec4<i32>(u_input.a, -2147483647i, 0i, -1i) | -vec4<i32>(u_input.a, 0i, 1i, -38442i), vec4<bool>(323f <= arg_2.a.c.x, false, arg_0 && arg_2.b, !arg_0))) << (arg_2.a.b % vec4<u32>(32u));
    var var_1 = ~(-36218i);
    var var_2 = vec4<u32>(23174u, 0u, firstLeadingBit(~arg_1.b.x), ~u_input.b) ^ ~arg_2.a.b;
    let var_3 = vec3<u32>(arg_2.a.b.x ^ arg_2.c.x, 1u, ~75065u);
    return true;
}

fn func_1() -> Struct_3 {
    var var_0 = u_input.b;
    var var_1 = select(any(select(vec4<bool>(u_input.b == u_input.b, true, true, true), vec4<bool>(any(vec2<bool>(false, false)), true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true))))), func_5(false, func_4(func_2(), _wgslsmith_add_i32(-17377i ^ global0.x, u_input.a), Struct_3(func_2().a), Struct_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1321f, -224f), vec2<f32>(419f, 1052f))), min(vec4<u32>(1u, u_input.b, 1u, u_input.b), vec4<u32>(u_input.b, 0u, 1u, 18964u)), _wgslsmith_div_vec4_f32(vec4<f32>(286f, 315f, 1152f, 1856f), vec4<f32>(2773f, 363f, 1734f, -613f)), vec2<u32>(u_input.b, 4294967295u) >> (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)), vec2<f32>(1899f, 1000f))), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-757f, -1253f) - vec2<f32>(-212f, 1530f)), vec4<u32>(1u, 15511u, u_input.b, u_input.b), vec4<f32>(253f, -231f, -1030f, 182f), vec2<u32>(u_input.b, 1u), _wgslsmith_f_op_vec2_f32(vec2<f32>(1385f, 1535f) * vec2<f32>(-617f, 395f))), true, _wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(0u, u_input.b)), ~vec2<u32>(u_input.b, 1u)))), !(u_input.b < _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(4294967295u, u_input.b, 4294967295u), ~4294967295u, _wgslsmith_sub_u32(u_input.b, u_input.b))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1568f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(443f - 599f))) * _wgslsmith_f_op_vec2_f32(ceil(func_4(Struct_3(vec2<bool>(true, false)), min(global0.x, u_input.a), func_2(), func_4(Struct_3(vec2<bool>(true, true)), -10323i, Struct_3(vec2<bool>(true, false)), Struct_1(vec2<f32>(-724f, 161f), vec4<u32>(u_input.b, 4294967295u, 13215u, 112446u), vec4<f32>(433f, -1079f, 2800f, -1734f), vec2<u32>(28435u, 8713u), vec2<f32>(511f, 800f)))).c.ww))), vec4<u32>(~1u, u_input.b, abs(69821u) | abs(u_input.b), reverseBits(~u_input.b)) ^ vec4<u32>(4294967295u, _wgslsmith_clamp_u32(0u, ~89596u, u_input.b), countOneBits(0u ^ u_input.b), u_input.b), vec4<f32>(806f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * -136f)), func_4(func_2(), u_input.a, Struct_3(func_2().a), Struct_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(887f, -1047f))), vec4<u32>(u_input.b, u_input.b, u_input.b, 111648u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-220f, 281f, 1772f, 1000f)), ~vec2<u32>(0u, 0u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1234f, -1263f)))).c.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-685f, -1225f) - _wgslsmith_f_op_f32(f32(-1f) * -452f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-119f - 1000f) * -1000f)))), firstLeadingBit(vec2<u32>(max(0u, u_input.b), 4294967295u & u_input.b)) | _wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.b, 51831u), vec2<u32>(23277u, _wgslsmith_div_u32(u_input.b, 17310u))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-771f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1736f + 575f))), false)), 1f));
    var var_3 = func_4(func_2(), firstLeadingBit(-1186i & global0.x), func_2(), func_4(func_2(), -u_input.a, Struct_3(func_2().a), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(var_2.c.x)), _wgslsmith_f_op_f32(sign(-757f))), _wgslsmith_add_vec4_u32(var_2.b, var_2.b), var_2.c, _wgslsmith_mult_vec2_u32(~vec2<u32>(1u, var_2.d.x), ~var_2.d), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_2.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.e.x, -279f) - var_2.c.yw)))));
    var var_4 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(floor(var_3.a)), _wgslsmith_mult_vec4_u32(var_2.b, _wgslsmith_clamp_vec4_u32(var_2.b, vec4<u32>(76772u, 4294967295u, var_3.b.x, u_input.b), vec4<u32>(1u, 4294967295u, 157112u, 16932u))) ^ var_2.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1180f, var_3.a.x, var_2.a.x, 796f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1445f, var_3.e.x, 744f, -1000f)))), ~var_3.b.xx, var_3.c.zx), true, ~reverseBits(func_4(Struct_3(vec2<bool>(false, false)), u_input.a, Struct_3(vec2<bool>(true, false)), Struct_1(vec2<f32>(234f, var_2.e.x), var_3.b, var_3.c, var_3.b.zz, vec2<f32>(290f, var_2.e.x))).b.wz));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = array<Struct_4, 21>();
    var var_1 = func_2();
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-568f, 1000f, -527f, -319f), vec4<f32>(1512f, 1140f, 130f, 2071f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-816f, 1307f, 878f, 407f) * vec4<f32>(1013f, -780f, -1000f, -1372f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(717f, 1969f, -1130f, -1000f))))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, 1000f, -227f, -1696f), vec4<f32>(-697f, -191f, 932f, -463f))))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(535f - 1774f) + -163f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(205f)), _wgslsmith_f_op_f32(f32(-1f) * -1084f)), _wgslsmith_f_op_f32(-403f - _wgslsmith_f_op_f32(max(-1078f, 1332f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1092f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-609f, -2045f, 474f, -1000f)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1416f, 1000f, -328f, -786f))))))));
    global1 = array<Struct_4, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * var_2.x) - _wgslsmith_f_op_f32(select(124f, var_2.x, false))) + -1018f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(148f))))));
}

