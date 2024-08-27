struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: f32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<i32, 32> = array<i32, 32>(1i, -1i, 2147483647i, 0i, -34149i, 0i, i32(-2147483648), 5930i, -1i, -8648i, -28308i, i32(-2147483648), -79860i, -3838i, 1i, -27312i, 0i, -1i, 2147483647i, -45147i, i32(-2147483648), -26688i, 0i, 27885i, 2147483647i, 86350i, 38848i, 1i, i32(-2147483648), 54111i, 2147483647i, -7014i);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> i32 {
    global1 = array<i32, 32>();
    let var_0 = Struct_4(abs(_wgslsmith_dot_vec3_i32(-vec3<i32>(global1[_wgslsmith_index_u32(u_input.a, 32u)], -2147483647i, 2147483647i), select(vec3<i32>(0i, 1i, global1[_wgslsmith_index_u32(34377u, 32u)]), vec3<i32>(global1[_wgslsmith_index_u32(u_input.a, 32u)], global1[_wgslsmith_index_u32(u_input.a, 32u)], global1[_wgslsmith_index_u32(1u, 32u)]), vec3<bool>(true, false, true)))) & countOneBits(2147483647i), reverseBits(vec4<u32>(u_input.b.x, abs(0u), u_input.a, u_input.b.x)), firstTrailingBit(max(~(~vec3<u32>(49061u, 22792u, 0u)), min(~vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 22786u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))))), firstTrailingBit(_wgslsmith_div_vec4_i32(~(-vec4<i32>(global1[_wgslsmith_index_u32(1u, 32u)], -2147483647i, 0i, 9727i)), vec4<i32>(~12014i, _wgslsmith_sub_i32(602i, -1i), _wgslsmith_div_i32(global1[_wgslsmith_index_u32(0u, 32u)], 2147483647i), -1i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(786f)) * -1000f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1305f, -1237f)))));
    var var_1 = Struct_3(countOneBits(var_0.b.x));
    let var_2 = Struct_2(false, var_0.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1701f * 1259f) - 1024f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(800f - 503f) + var_0.e))), Struct_1(select(~(u_input.a & var_1.a), var_1.a, (var_0.d.x ^ global1[_wgslsmith_index_u32(var_1.a, 32u)]) <= 0i), vec4<bool>(true, true, true, true), vec2<bool>(true, true)));
    var var_3 = var_2;
    return abs(_wgslsmith_dot_vec3_i32(~(-vec3<i32>(-49371i, 1i, -36727i)), _wgslsmith_add_vec3_i32(select(vec3<i32>(-31480i, -14137i, 9660i), var_0.d.wxx, var_3.d.c.x), -vec3<i32>(0i, -34591i, var_0.d.x)) & var_0.d.xzw));
}

fn func_2(arg_0: f32) -> Struct_3 {
    let var_0 = Struct_2(arg_0 != _wgslsmith_f_op_f32(ceil(arg_0)), -336f, _wgslsmith_f_op_f32(arg_0 * arg_0), Struct_1(~_wgslsmith_dot_vec3_u32(~vec3<u32>(39149u, u_input.b.x, 4294967295u), vec3<u32>(90710u, 0u, u_input.a) ^ vec3<u32>(0u, 4294967295u, u_input.a)), vec4<bool>(all(vec4<bool>(true, true, false, false)), true | all(vec2<bool>(false, true)), any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false))), true), vec2<bool>(true, true)));
    let var_1 = var_0.d.c;
    global1 = array<i32, 32>();
    let var_2 = ~_wgslsmith_add_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(1u, 32u)] << (var_0.d.a % 32u), func_3()), ~(-abs(vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(var_0.d.a, 32u)]))));
    var var_3 = Struct_4(var_2.x, ~(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 0u, 1u), vec4<u32>(0u, var_0.d.a, var_0.d.a, u_input.a), vec4<u32>(var_0.d.a, var_0.d.a, u_input.b.x, u_input.b.x)))), ~abs(min(~vec3<u32>(5597u, u_input.b.x, u_input.b.x), vec3<u32>(4294967295u, 21349u, var_0.d.a))), vec4<i32>(_wgslsmith_clamp_i32(-var_2.x, ~var_2.x, global1[_wgslsmith_index_u32(1u, 32u)]) ^ -941i, -1i, max(global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(4294967295u, 4294967295u, 1966u), 32u)], countOneBits(_wgslsmith_sub_i32(13150i, var_2.x))), -(~_wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(4684u, 32u)], var_2.x), vec2<i32>(-1i, var_2.x)))), 109f);
    return Struct_3(var_3.b.x);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>) -> Struct_4 {
    global0 = _wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_f_op_f32(arg_1.x + arg_1.x), (!(global1[_wgslsmith_index_u32(u_input.b.x, 32u)] > 1i) & all(select(vec2<bool>(true, true), vec2<bool>(false, false), false))) | !all(vec2<bool>(true, true))));
    let var_0 = Struct_2(true && !(!all(vec3<bool>(false, true, false))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1027f, _wgslsmith_f_op_f32(-arg_1.x)))))), _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-860f)), arg_1.x))), Struct_1(16237u, select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(vec2<bool>(false, false)), false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true)), select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))), false)));
    global1 = array<i32, 32>();
    var var_1 = Struct_4(-global1[_wgslsmith_index_u32(arg_0.a, 32u)], countOneBits(~vec4<u32>(u_input.a, 1u, 0u, 0u)) | vec4<u32>(_wgslsmith_clamp_u32(~1u, ~var_0.d.a, func_2(-1462f).a), u_input.b.x, _wgslsmith_div_u32(95036u, arg_0.a >> (u_input.b.x % 32u)), min(~arg_0.a, ~var_0.d.a)), ~vec3<u32>(4294967295u, 1u, u_input.b.x), vec4<i32>(global1[_wgslsmith_index_u32(1u, 32u)], ~global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(var_0.d.a, u_input.b.x), 32u)], -global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mult_u32(u_input.a, 4294967295u)), 32u)], -(~abs(34026i))), -1059f);
    let var_2 = Struct_5(-var_1.a);
    return Struct_4(1i, vec4<u32>(var_0.d.a, _wgslsmith_clamp_u32(u_input.a, 1u, ~var_0.d.a), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + 688f) + _wgslsmith_div_f32(-480f, -1722f))).a, _wgslsmith_add_u32(u_input.b.x, var_0.d.a)), vec3<u32>(max(0u, _wgslsmith_div_u32(0u, u_input.b.x) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c.x, 55617u, var_0.d.a), var_1.c)), _wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, var_1.c.x, var_0.d.a), ~vec3<u32>(arg_0.a, var_0.d.a, 1u), false), vec3<u32>(u_input.b.x, abs(var_1.c.x), firstLeadingBit(1u))), 4294967295u), -reverseBits(vec4<i32>(-var_1.d.x, 0i, global1[_wgslsmith_index_u32(36436u, 32u)], var_2.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1319f)))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f - var_0.c), _wgslsmith_f_op_f32(floor(var_0.b)), false))))));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec3<i32>, arg_3: u32) -> i32 {
    let var_0 = func_4(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-988f - -1615f)) - _wgslsmith_f_op_f32(-1098f - -189f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -698f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(476f + -266f) - _wgslsmith_f_op_f32(min(-236f, -1000f)))))));
    global0 = var_0.e;
    global1 = array<i32, 32>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(1446f)), var_0.e)), _wgslsmith_f_op_f32(trunc(1547f)), _wgslsmith_f_op_f32(-var_0.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.e, -1000f, arg_1)))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-291f, _wgslsmith_div_f32(var_0.e, var_1.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.e + -1356f), -2025f))) * -254f));
    return global1[_wgslsmith_index_u32(1u, 32u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(global1[_wgslsmith_index_u32(u_input.a, 32u)]);
    global0 = -1380f;
    let var_1 = _wgslsmith_div_f32(-708f, -1429f);
    global0 = 744f;
    global0 = _wgslsmith_f_op_f32(ceil(412f));
    var var_2 = -firstTrailingBit(vec3<i32>(~global1[_wgslsmith_index_u32(u_input.b.x, 32u)], ~var_0, global1[_wgslsmith_index_u32(u_input.b.x, 32u)])) & min(-vec3<i32>(0i, 38653i, global1[_wgslsmith_index_u32(1u, 32u)]), vec3<i32>(~func_1(4294967295u, true, vec3<i32>(2147483647i, -20171i, -1i), 10105u), -1i, -1i));
    global0 = 998f;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_3(41175u), vec2<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(trunc(var_1)))).e * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))));
    var var_4 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_3, _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(ceil(var_3)))));
    let x = u_input.a;
    s_output = StorageBuffer(126784u, firstTrailingBit(select(~func_4(Struct_3(59632u), vec2<f32>(var_1, -862f)).b.xxw, _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 0u, 1u) ^ vec3<u32>(0u, u_input.a, 4294967295u), select(vec3<u32>(1u, 30013u, u_input.a), vec3<u32>(u_input.b.x, u_input.a, 49652u), false)), any(vec3<bool>(true, true, false)))));
}

