struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec3<bool>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: u32) -> vec4<u32> {
    var var_0 = min(u_input.d | u_input.d, ~_wgslsmith_mult_i32(min(0i, firstTrailingBit(1i)), select(i32(-1i) * -2147483647i, -2147483647i, true)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1049f, _wgslsmith_f_op_f32(step(185f, -109f)))));
    var var_2 = Struct_2(var_1.x);
    var var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.a, 1839f, 1151f, var_2.a), vec4<f32>(1288f, -1813f, var_2.a, var_2.a)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -200f, var_2.a, var_1.x))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1817f, var_1.x, var_2.a, var_2.a), vec4<f32>(var_1.x, var_1.x, -1203f, var_2.a))), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, -717f, var_1.x, var_1.x), vec4<f32>(var_1.x, 286f, var_2.a, var_1.x)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1704f, var_1.x, 953f, 1332f) + vec4<f32>(var_2.a, 882f, 1312f, var_1.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1493f, var_2.a, var_1.x, var_2.a)))))));
    var_2 = Struct_2(_wgslsmith_f_op_f32(var_3.x - var_2.a));
    return u_input.e;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = _wgslsmith_clamp_vec4_u32(~select(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.e.x, 30843u, 1u, arg_2.b), arg_2.d), vec4<u32>(27258u, arg_2.b, 8278u, 3016u), vec4<bool>(false, arg_0.x, arg_0.x, false)) ^ abs(reverseBits(max(u_input.e, vec4<u32>(u_input.e.x, arg_2.d.x, 0u, u_input.b.x)))), vec4<u32>(~(~4294967295u), u_input.a, ~countOneBits(4294967295u), arg_2.d.x) | ~vec4<u32>(u_input.a, ~1u, u_input.b.x, min(arg_2.b, u_input.e.x)), _wgslsmith_div_vec4_u32(abs(reverseBits(abs(vec4<u32>(26522u, arg_2.d.x, 51053u, u_input.e.x)))), _wgslsmith_mult_vec4_u32(~abs(u_input.e), firstTrailingBit(u_input.e & arg_2.d))));
    var_0 = vec4<u32>(max(func_3(1u).x, ~38829u), _wgslsmith_add_u32(u_input.e.x, ~(_wgslsmith_div_u32(var_0.x, u_input.e.x) ^ u_input.b.x)), ~var_0.x, reverseBits(_wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(u_input.e, arg_2.d), vec4<u32>(1u, ~0u, var_0.x, ~0u))));
    var var_1 = abs(~(~80575u));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.a.x, 1743f));
    let var_3 = arg_2;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.a) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(arg_2.a.x, 800f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.a.x, -943f))), _wgslsmith_f_op_f32(ceil(-700f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1000f, var_3.a.x)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1667f, -1698f, var_3.a.x, 1152f) * arg_2.a), vec4<f32>(2655f, -1485f, var_3.a.x, -656f), !arg_0)))))));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec4<f32>) -> bool {
    let var_0 = arg_1;
    var var_1 = vec4<i32>(~(~u_input.c), u_input.c, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(firstLeadingBit(firstLeadingBit(vec3<i32>(-2506i, -24731i, -81264i))), firstTrailingBit(-vec3<i32>(u_input.c, -24084i, -12545i))), countOneBits(~select(vec3<i32>(-2147483647i, u_input.c, u_input.c), vec3<i32>(u_input.c, -1i, -18529i), vec3<bool>(true, false, true)))), (u_input.d << (arg_0 % 32u)) >> (69878u % 32u));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, 2404f) - -1866f);
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_4(vec4<bool>(all(vec3<bool>(false, true, false)), true, all(vec4<bool>(false, false, false, true)), select(false, false, true)), countOneBits(vec3<i32>(u_input.c, u_input.c, u_input.c)), Struct_1(_wgslsmith_f_op_vec4_f32(-arg_2), 16373u, vec3<bool>(true, true, true), func_3(1u)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(vec4<bool>(true, false, false, false), var_1.xwy, Struct_1(vec4<f32>(var_2, -535f, -193f, -309f), 1u, vec3<bool>(false, false, true), vec4<u32>(u_input.b.x, 22132u, u_input.b.x, 121402u)))) * _wgslsmith_f_op_vec4_f32(arg_2 - arg_2)), arg_2)))), ~arg_0, vec3<bool>(true, any(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true)))), false), u_input.e);
    return select(true, var_3.c.x, -18303i == _wgslsmith_div_i32(-var_1.x, -u_input.c << (abs(31540u) % 32u)));
}

fn func_1() -> vec2<u32> {
    let var_0 = vec2<bool>(false, true || func_2(~(~u_input.e.x), 1974f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1654f, -253f, -516f, -1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(673f, -649f, 746f, 607f)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-492f - -2289f), 1457f) * -313f));
    var_1 = _wgslsmith_f_op_f32(437f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(814f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1836f, 1776f))), !(!var_0.x))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-230f))), -193f)));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(472f, _wgslsmith_f_op_f32(826f - 951f)) - _wgslsmith_f_op_f32(round(-129f))), 897f, !(!func_2(u_input.b.x, 1073f, vec4<f32>(-765f, 779f, 370f, -538f))))));
    let var_3 = _wgslsmith_f_op_f32(-1806f - _wgslsmith_f_op_f32(-var_2.a));
    return countOneBits(~func_3(_wgslsmith_div_u32(4250u, ~0u)).wx);
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: vec2<u32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(1693f);
    var var_1 = Struct_2(arg_3.a.x);
    var_0 = Struct_2(var_1.a);
    var_0 = Struct_2(_wgslsmith_div_f32(314f, var_1.a));
    let var_2 = !arg_3.c.x;
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1187f, arg_3.a.x, 615f, var_0.a))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(arg_3.a)), vec4<f32>(-1769f, arg_3.a.x, -2222f, var_1.a)))) + vec4<f32>(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a.x) + _wgslsmith_f_op_f32(arg_3.a.x * -607f)), var_0.a, arg_3.a.x)), _wgslsmith_dot_vec4_u32(~arg_3.d << (firstTrailingBit(arg_3.d) % vec4<u32>(32u)), u_input.e), vec3<bool>(true, var_2, func_2(_wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_1, 4009u), ~u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.a))), vec4<f32>(_wgslsmith_f_op_f32(max(var_0.a, 744f)), -1000f, _wgslsmith_f_op_f32(max(var_1.a, -181f)), _wgslsmith_f_op_f32(round(var_1.a))))), vec4<u32>(min(~1u, _wgslsmith_mult_u32(1u, 70451u)), 106738u, abs(~(~u_input.e.x)), ~4294967295u));
}

fn func_6(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = ~(~(~countOneBits(arg_0.b))) < countOneBits(u_input.a | arg_0.b);
    var var_1 = arg_0;
    var var_2 = ~(~select(~(vec4<i32>(u_input.d, arg_1.x, 57262i, 5674i) ^ vec4<i32>(u_input.d, arg_1.x, u_input.c, -1i)), min(vec4<i32>(23087i, -2147483647i, u_input.c, u_input.c), vec4<i32>(arg_1.x, u_input.d, arg_1.x, arg_1.x) << (arg_0.d % vec4<u32>(32u))), true));
    let var_3 = var_2.x != countOneBits(u_input.d);
    let var_4 = u_input.c;
    return Struct_1(vec4<f32>(-939f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.a.x)) + func_5(var_4, var_1.d.x, vec2<u32>(48686u, 0u), Struct_1(vec4<f32>(1000f, arg_0.a.x, -1000f, 1610f), arg_0.b, vec3<bool>(arg_0.c.x, true, var_0), vec4<u32>(u_input.b.x, u_input.b.x, var_1.d.x, u_input.b.x))).a.x)), var_1.a.x), 1u, var_1.c, vec4<u32>(_wgslsmith_mult_u32(~reverseBits(4294967295u), 6149u), 40368u, var_1.d.x << (~(~u_input.a) % 32u), 0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -715f;
    let var_1 = func_6(func_5(0i, u_input.a, func_1(), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, -122f, var_0)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -726f, var_0, var_0))), u_input.a, vec3<bool>(true, true, true), firstLeadingBit(u_input.e) | vec4<u32>(u_input.b.x, 1u, 27110u, u_input.a))), vec3<i32>(_wgslsmith_mult_i32(u_input.d, min(~u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -2147483647i, u_input.d), vec3<i32>(u_input.c, 22455i, -2147483647i)))), -25877i, _wgslsmith_clamp_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(u_input.c, u_input.d)), u_input.d, -1i)));
    var var_2 = _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, u_input.d), countOneBits(~(~vec2<i32>(u_input.d, -62628i))), min(vec2<i32>(u_input.d, ~1i), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-24199i, 2147483647i), vec2<i32>(u_input.c, u_input.c)), _wgslsmith_add_i32(1i, 1i)))), reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, u_input.c), -vec2<i32>(u_input.c, u_input.c)) | -(vec2<i32>(-21282i, u_input.c) << (var_1.d.yw % vec2<u32>(32u)))));
    var_2 = _wgslsmith_clamp_vec2_i32(vec2<i32>(~u_input.d, firstTrailingBit(-35204i)), -abs(vec2<i32>(var_2.x, -100174i) | vec2<i32>(u_input.d, u_input.c)), vec2<i32>(~(-var_2.x), firstTrailingBit(_wgslsmith_div_i32(var_2.x, -2147483647i)))) ^ _wgslsmith_mod_vec2_i32(abs(max(-vec2<i32>(u_input.c, var_2.x), ~vec2<i32>(-8348i, -2147483647i))), countOneBits(_wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(-18820i, -1i)), vec2<i32>(-597i, u_input.d) >> (vec2<u32>(u_input.b.x, 56755u) % vec2<u32>(32u)))));
    let var_3 = Struct_1(vec4<f32>(var_1.a.x, 1107f, 1281f, var_0), _wgslsmith_clamp_u32(~u_input.b.x, var_1.b, _wgslsmith_mult_u32(~u_input.b.x, ~_wgslsmith_div_u32(0u, var_1.d.x))), var_1.c, u_input.e);
    var_2 = -(~(-_wgslsmith_div_vec2_i32(vec2<i32>(24962i, var_2.x), vec2<i32>(var_2.x, 829i)) << (~firstLeadingBit(u_input.b.yy) % vec2<u32>(32u))));
    var_2 = -(_wgslsmith_mult_vec2_i32(vec2<i32>(var_2.x ^ 0i, 2147483647i), -(vec2<i32>(u_input.d, var_2.x) ^ vec2<i32>(2900i, var_2.x))) ^ vec2<i32>(u_input.c, reverseBits(u_input.d) ^ abs(var_2.x)));
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c | abs(~(-50529i)));
}

