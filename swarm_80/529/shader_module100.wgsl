struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec2<f32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = vec2<i32>(_wgslsmith_mod_i32(u_input.a.x, -1i), -(~u_input.a.x));
    let var_1 = Struct_1(u_input.a, ~_wgslsmith_sub_i32(min(abs(var_0.x), firstLeadingBit(-11397i)), -_wgslsmith_dot_vec2_i32(var_0, vec2<i32>(var_0.x, 2147483647i))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2725f, 867f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(386f, 1451f)))), vec2<f32>(-495f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(867f + -734f) + -255f))), ~min(-3660i, -_wgslsmith_add_i32(var_0.x, -35989i)));
    let var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x & 1i, firstLeadingBit(~u_input.a.x), var_1.b), vec3<i32>(~1416i, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a.yzw, vec3<i32>(-5013i, -1i, 0i)), vec3<i32>(u_input.a.x, var_0.x, u_input.a.x), reverseBits(u_input.a.wzz)), -vec3<i32>(u_input.a.x, 15801i, u_input.a.x)), 2147483647i));
    let var_3 = var_1.c.x;
    let var_4 = 33651u;
    return _wgslsmith_f_op_f32(292f * _wgslsmith_f_op_f32(-var_1.c.x));
}

fn func_2() -> f32 {
    let var_0 = 1u;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1061f, -383f), 261f, 618f, -1000f)) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-514f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), -375f, 1f)));
    var var_2 = Struct_2(Struct_1(_wgslsmith_add_vec4_i32(countOneBits(-vec4<i32>(31696i, u_input.a.x, u_input.a.x, 2147483647i)), select(u_input.a, vec4<i32>(-25838i, u_input.a.x, u_input.a.x, 48041i), true) | (u_input.a >> (vec4<u32>(54834u, var_0, var_0, var_0) % vec4<u32>(32u)))), abs(_wgslsmith_clamp_i32(u_input.a.x, -22769i, 19374i) << (~0u % 32u)), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1047f, var_1.x))), _wgslsmith_f_op_f32(max(var_1.x, 406f))), u_input.a.x << (4029u % 32u)));
    var_2 = Struct_2(Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(0i, var_2.a.b, var_2.a.a.x, -10157i) | vec4<i32>(1i, u_input.a.x, var_2.a.d, 29373i), firstTrailingBit(vec4<i32>(u_input.a.x, 21336i, -30564i, u_input.a.x) >> (vec4<u32>(var_0, var_0, 98257u, 4294967295u) % vec4<u32>(32u)))), _wgslsmith_mod_i32(reverseBits(~(-25021i)), select(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), -28600i, true)), _wgslsmith_div_vec2_f32(var_2.a.c, _wgslsmith_f_op_vec2_f32(select(var_2.a.c, vec2<f32>(266f, var_1.x), vec2<bool>(true, true)))), ~var_2.a.b));
    var_2 = Struct_2(Struct_1(vec4<i32>(min(u_input.a.x, max(u_input.a.x, var_2.a.a.x)), (-10624i << (var_0 % 32u)) & ~(-2147483647i), u_input.a.x, min(26888i, 20502i)), _wgslsmith_clamp_i32(-1i, 37276i, -u_input.a.x) ^ firstTrailingBit(firstLeadingBit(10081i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_1.wx))), 2147483647i | reverseBits(_wgslsmith_div_i32(u_input.a.x, 6871i))));
    return _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.a.c.x)) + _wgslsmith_f_op_f32(450f - var_2.a.c.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(var_2.a.c.x, var_2.a.c.x)), var_2.a.c.x))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.a.c.x - var_2.a.c.x), 267f, all(vec3<bool>(all(vec3<bool>(true, true, true)), any(vec2<bool>(true, false)), all(vec3<bool>(false, true, true))))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: f32, arg_2: bool) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * arg_1)));
    let var_1 = Struct_1(vec4<i32>(-2147483647i, -u_input.a.x, min(_wgslsmith_clamp_i32(-u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), -1i), u_input.a.x), firstLeadingBit(1i)), -1i, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), arg_0.x))), abs(2147483647i));
    var var_2 = select(select(vec3<bool>(true, arg_2, _wgslsmith_add_i32(var_1.b, u_input.a.x) >= reverseBits(var_1.b)), vec3<bool>(arg_2, all(vec4<bool>(arg_2, arg_2, false, arg_2)), select(54724u, 41868u, arg_2) <= ~3715u), !arg_2), select(vec3<bool>((var_1.c.x == -1919f) | false, true, !arg_2), select(vec3<bool>(arg_2, true, any(vec3<bool>(arg_2, true, true))), vec3<bool>(select(true, arg_2, arg_2), true, false), false), arg_2), !vec3<bool>(arg_2, arg_2, true));
    var_2 = select(vec3<bool>(select(arg_2, all(!vec3<bool>(false, true, var_2.x)), !arg_2), false, any(vec3<bool>(true, true, var_2.x))), !select(select(select(vec3<bool>(arg_2, true, var_2.x), vec3<bool>(false, false, arg_2), vec3<bool>(var_2.x, arg_2, true)), vec3<bool>(arg_2, false, arg_2), !vec3<bool>(false, var_2.x, false)), select(!vec3<bool>(arg_2, true, true), !vec3<bool>(arg_2, arg_2, false), select(vec3<bool>(var_2.x, arg_2, false), vec3<bool>(var_2.x, false, true), vec3<bool>(false, var_2.x, var_2.x))), vec3<bool>(var_2.x, var_2.x || true, arg_2)), !(!(!(!vec3<bool>(arg_2, arg_2, var_2.x)))));
    var var_3 = vec3<i32>(countOneBits(min(var_1.a.x, reverseBits(var_1.d) | (i32(-1i) * -9236i))), 1i, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(3691i, var_1.a.x, -2147483647i, u_input.a.x) >> (vec4<u32>(1u, 1u, 62802u, 7880u) % vec4<u32>(32u)), -vec4<i32>(22525i, -1i, -1i, var_1.b)), _wgslsmith_add_i32(-2147483647i, var_1.a.x)), -37459i, 0i));
    return ~vec4<u32>(4294967295u, ~1u, 4294967295u, ~24363u);
}

fn func_1() -> bool {
    let var_0 = ~(firstTrailingBit(u_input.a) << (vec4<u32>(4294967295u, 1u, abs(22139u), 1u) % vec4<u32>(32u))) >> (func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-493f, -1108f), _wgslsmith_f_op_f32(func_2()), -1000f) + _wgslsmith_div_vec3_f32(vec3<f32>(948f, -661f, 801f), vec3<f32>(-608f, 208f, -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-422f * -212f) - -153f), ~72818i >= (0i << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 21098u), vec2<u32>(19255u, 0u)) % 32u))) % vec4<u32>(32u));
    return any(vec4<bool>(true, true, true, any(vec3<bool>(true, true, true)))) || false;
}

fn func_5(arg_0: bool, arg_1: vec3<bool>) -> u32 {
    var var_0 = Struct_1(u_input.a, ~(_wgslsmith_sub_i32(u_input.a.x ^ u_input.a.x, 1i) ^ _wgslsmith_mult_i32(-u_input.a.x, u_input.a.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, -1232f), vec2<f32>(1405f, -226f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-180f, -602f), vec2<f32>(-287f, -1000f)) - vec2<f32>(530f, -846f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(331f, -139f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(139f, 730f) * vec2<f32>(-541f, -450f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(198f, 1302f))))))), u_input.a.x);
    var var_1 = arg_0;
    var_1 = arg_0;
    var var_2 = 25764u;
    var_0 = Struct_1(select(var_0.a, vec4<i32>(_wgslsmith_mod_i32(i32(-1i) * -2147483647i, ~var_0.a.x), max(i32(-1i) * -1i, 35280i), u_input.a.x, reverseBits(abs(-2147483647i))), select(vec4<bool>(false, !arg_0, true || arg_0, u_input.a.x >= var_0.b), !vec4<bool>(false, arg_0, true, true), vec4<bool>(arg_0, !arg_0, !arg_0, arg_1.x))), 24573i, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.x, var_0.c.x) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, -1813f)))), ~var_0.b);
    return ~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(1u, 4294967295u, 24388u), vec3<u32>(4294967295u, 23837u, 2640u)), ~vec3<u32>(4294967295u, 1u, 33237u)) & ~28298u, 15272u);
}

fn func_6(arg_0: u32) -> Struct_2 {
    let var_0 = ~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(6549u, arg_0, 1u)), ~vec3<u32>(arg_0, 48800u, 25979u)), ~vec3<u32>(1u, 77860u, 4294967295u)) <= arg_0;
    return Struct_2(Struct_1(u_input.a, u_input.a.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(2018f * -987f), _wgslsmith_f_op_f32(ceil(1247f)))), ~u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(~func_5(func_1() && true, select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false))));
    var var_1 = func_6(~func_5(true, vec3<bool>(true, true, true)));
    var var_2 = Struct_3(func_6(4294967295u));
    let var_3 = Struct_3(func_6(_wgslsmith_dot_vec2_u32(~vec2<u32>(60942u, 1u), vec2<u32>(24572u, 1u)) ^ 1u));
    var var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1182f - var_2.a.a.c.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -892f), func_6(1u).a.c.x, var_3.a.a.c.x) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.a.c.x, var_0.a.c.x, -1000f)))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a.c.x, var_3.a.a.c.x, var_1.a.c.x), vec3<f32>(360f, var_0.a.c.x, var_1.a.c.x), vec3<bool>(false, false, true)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1028f, var_1.a.c.x, var_3.a.a.c.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.c.x - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3())))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.c.x), _wgslsmith_f_op_f32(round(var_3.a.a.c.x))), -918f, !all(vec2<bool>(true, false))))), _wgslsmith_mod_u32(reverseBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(15781u, 4294967295u), vec2<u32>(25258u, 5587u))), reverseBits(~firstTrailingBit(4294967295u))));
}

