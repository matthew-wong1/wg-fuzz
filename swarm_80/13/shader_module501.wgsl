struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 5>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    global0 = array<vec2<u32>, 5>();
    var var_0 = 0i;
    var var_1 = u_input.b;
    let var_2 = vec2<i32>(u_input.b, ~(-4287i));
    global0 = array<vec2<u32>, 5>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1108f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1097f, -2956f)))));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + vec3<f32>(-154f, 1952f, -413f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(116f, 1077f, -1397f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-664f, 240f, -106f)), _wgslsmith_div_vec3_f32(vec3<f32>(-185f, -1332f, -257f), vec3<f32>(-544f, 900f, 597f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-944f)), _wgslsmith_f_op_f32(func_3(vec4<u32>(18188u, u_input.c.x, u_input.c.x, 0u))), _wgslsmith_f_op_f32(f32(-1f) * -530f))), all(vec4<bool>(true, false, all(vec4<bool>(false, false, true, false)) & true, true))));
    var var_1 = ~max(2147483647i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(-54425i, _wgslsmith_mult_i32(u_input.b, 1i)), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, 2147483647i), vec2<i32>(u_input.b, u_input.b)), -u_input.e)));
    let var_2 = Struct_2(Struct_1(min(u_input.c ^ ~u_input.c, _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, u_input.d, 4294967295u, u_input.c.x) >> (u_input.c % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(u_input.c, u_input.c))), ~(~u_input.c.wzz), firstTrailingBit(vec4<i32>(u_input.b & u_input.e, u_input.b, -40322i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -67238i, u_input.a, 0i), vec4<i32>(-2147483647i, u_input.a, -4600i, u_input.e)))), 4294967295u), Struct_1(~(reverseBits(vec4<u32>(u_input.d, u_input.d, 4294967295u, u_input.c.x)) | u_input.c), u_input.c.zwz, vec4<i32>(i32(-1i) * -u_input.a, -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, u_input.b, u_input.a, -2147483647i), vec4<i32>(u_input.a, u_input.a, -1i, -2147483647i)), u_input.b, reverseBits(-44645i)), u_input.d), vec2<bool>(true, true), !(!vec3<bool>(u_input.c.x > u_input.c.x, select(true, true, true), true)));
    let var_3 = abs(~_wgslsmith_sub_i32(-64432i, var_2.b.c.x));
    var_1 = firstLeadingBit(~u_input.e);
    return Struct_2(Struct_1(u_input.c, ~(~(vec3<u32>(1u, u_input.d, 4294967295u) << (var_2.b.b % vec3<u32>(32u)))), -(~vec4<i32>(u_input.b, -2147483647i, -23956i, var_2.b.c.x)), _wgslsmith_mult_u32(var_2.b.d << (u_input.c.x % 32u), _wgslsmith_sub_u32(63191u, u_input.d)) ^ u_input.c.x), var_2.b, select(var_2.d.xx, !vec2<bool>(true, var_2.c.x), false), vec3<bool>((_wgslsmith_sub_i32(6041i, u_input.a) > _wgslsmith_div_i32(1i, var_2.a.c.x)) && false, !all(!vec4<bool>(true, var_2.d.x, true, false)), false));
}

fn func_1(arg_0: vec4<i32>, arg_1: u32) -> Struct_3 {
    global0 = array<vec2<u32>, 5>();
    var var_0 = func_2();
    var var_1 = Struct_3(1i);
    let var_2 = _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(var_0.b.b.x, 8814u, u_input.c.x), ~arg_1) >> (~(global0[_wgslsmith_index_u32(4294967295u, 5u)] >> (vec2<u32>(var_0.a.d, var_0.b.b.x) % vec2<u32>(32u))) % vec2<u32>(32u)), reverseBits(global0[_wgslsmith_index_u32(1u, 5u)]), _wgslsmith_sub_vec2_u32(vec2<u32>(~2452u, _wgslsmith_add_u32(var_0.b.b.x, 0u)), ~vec2<u32>(0u, 4294967295u))) >> (abs(~vec2<u32>(_wgslsmith_add_u32(arg_1, arg_1), ~var_0.a.a.x)) % vec2<u32>(32u));
    var_0 = func_2();
    return Struct_3(2147483647i);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: u32) -> Struct_2 {
    var var_0 = countOneBits(arg_1.x);
    global0 = array<vec2<u32>, 5>();
    let var_1 = !all(func_2().c);
    return Struct_2(Struct_1(firstTrailingBit(u_input.c), u_input.c.ywz, _wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, 1i, arg_0.a, 12567i), ~_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.a, u_input.a, -9636i, -26865i), vec4<i32>(arg_0.a, arg_0.a, 2147483647i, arg_0.a))), _wgslsmith_dot_vec3_u32(u_input.c.yxz >> (arg_1 % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(~arg_1, ~vec3<u32>(0u, 33834u, 0u)))), Struct_1(u_input.c, vec3<u32>(4294967295u, 90034u, ~u_input.c.x), ~firstTrailingBit(vec4<i32>(22188i, u_input.b, u_input.b, arg_0.a)), 0u), select(select(!select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, var_1), true), func_2().d.xy, select(func_2().d.zy, select(vec2<bool>(var_1, var_1), vec2<bool>(false, true), true), var_1)), vec3<bool>(func_2().d.x, !(!any(vec4<bool>(false, var_1, var_1, true))), false));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(258f - arg_1.x);
    var var_1 = arg_0.d;
    let var_2 = vec2<i32>(_wgslsmith_mult_i32(arg_0.b.c.x, 0i), ~select(arg_0.a.c.x, -u_input.b, arg_0.c.x)) << (~(~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.d) | vec2<u32>(26573u, 29731u), vec2<u32>(2884u, arg_0.a.d))) % vec2<u32>(32u));
    global0 = array<vec2<u32>, 5>();
    let var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(arg_1.x - -442f)), 116f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.x))))), arg_1.wxz));
    return reverseBits(u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(func_1(~(-vec4<i32>(-53436i, u_input.a, 321i, u_input.e)), _wgslsmith_mod_u32(~u_input.c.x, ~u_input.d)), ~(~_wgslsmith_clamp_vec3_u32(u_input.c.yyx, vec3<u32>(u_input.c.x, 45516u, 1u), u_input.c.yzx)), _wgslsmith_dot_vec3_u32(~(u_input.c.zwz | vec3<u32>(u_input.d, u_input.c.x, u_input.d)), vec3<u32>(u_input.d, ~u_input.d, 4294967295u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1051f, -1640f, -349f, -1575f)))) - vec4<f32>(_wgslsmith_f_op_f32(152f - -740f), _wgslsmith_f_op_f32(func_3(u_input.c)), -1793f, _wgslsmith_f_op_f32(943f * -802f)))));
    let var_1 = -9365i;
    let var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -494f)), -1166f), -864f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(759f + 1188f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(267f + -1343f), 974f, _wgslsmith_div_f32(1683f, -709f))), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(295f + 969f), -1181f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -860f))), _wgslsmith_f_op_f32(func_3(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 4294967295u, 10480u, u_input.d), vec4<u32>(u_input.c.x, 30260u, 4294967295u, u_input.c.x)))))));
    var var_3 = ~_wgslsmith_add_vec3_i32(vec3<i32>(func_4(Struct_3(var_1), vec3<u32>(47135u, 7877u, 0u), 41928u).a.c.x, abs(_wgslsmith_add_i32(-1i, 40656i)), 0i), vec3<i32>(_wgslsmith_clamp_i32(i32(-1i) * -20039i, _wgslsmith_mult_i32(-1i, 39197i), func_1(vec4<i32>(u_input.e, 45703i, u_input.a, 2147483647i), 105305u).a), _wgslsmith_mult_i32(var_1, var_1) & _wgslsmith_clamp_i32(u_input.b, u_input.a, 1i), i32(-1i) * -var_1));
    let var_4 = u_input.c.xwz;
    var_3 = vec3<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_div_i32(36688i, var_3.x), abs(48197i)), u_input.e) << (0u % 32u), ~(u_input.e >> (~u_input.d % 32u)), -2147483647i);
    let var_5 = func_4(func_1(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(2147483647i, -30829i, var_3.x, 0i) & vec4<i32>(var_3.x, u_input.e, var_3.x, 12066i)), ~(~vec4<i32>(2147483647i, var_1, -72102i, 1i)), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-31099i, u_input.a, u_input.b, -23500i), vec4<i32>(-2147483647i, -13351i, -2147483647i, -2147483647i), vec4<i32>(-2147483647i, -2147483647i, -7281i, -2147483647i)), -vec4<i32>(1i, var_3.x, -1i, var_3.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(func_5(Struct_2(Struct_1(vec4<u32>(21459u, u_input.c.x, 107715u, var_4.x), var_4, vec4<i32>(151i, -59436i, 0i, 5209i), var_4.x), Struct_1(u_input.c, var_4, vec4<i32>(var_1, 1i, var_3.x, u_input.a), 4294967295u), vec2<bool>(true, false), vec3<bool>(true, false, false)), vec4<f32>(var_2.x, 957f, var_2.x, 675f)), max(u_input.c.x, 78157u), ~4294967295u, var_4.x >> (32126u % 32u)), vec4<u32>(u_input.d, 42574u, var_4.x, 68416u))), vec3<u32>(var_4.x, abs(u_input.c.x), var_4.x), var_4.x & ~(u_input.d ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 0u), var_4))).a;
    var var_6 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(var_2.x, var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + -1000f), var_2.x), var_2));
    let var_7 = select(vec3<bool>(any(vec4<bool>(true, true, true, true)), !all(vec2<bool>(true, false)), func_2().c.x), vec3<bool>(true, func_4(Struct_3(-8538i & var_5.c.x), vec3<u32>(var_5.a.x, u_input.d, u_input.c.x), var_5.d).c.x, func_2().c.x), !(!func_2().d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.x, var_6.x, -336f), var_2))))))), (var_5.c.zx << (~countOneBits(vec2<u32>(69610u, var_4.x)) % vec2<u32>(32u))) ^ countOneBits(vec2<i32>(_wgslsmith_dot_vec3_i32(var_5.c.xxz, vec3<i32>(2147483647i, 1i, u_input.e)), var_1)), var_5.a, 1897f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_6.x, _wgslsmith_f_op_f32(round(var_6.x)))));
}

