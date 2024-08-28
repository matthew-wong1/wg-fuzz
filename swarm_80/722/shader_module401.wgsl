struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: vec4<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21> = array<u32, 21>(11944u, 35345u, 657u, 1u, 1u, 19898u, 1u, 38521u, 4294967295u, 4294967295u, 18045u, 27925u, 31206u, 0u, 4294967295u, 0u, 77554u, 51682u, 65158u, 6012u, 1u);

var<private> global1: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(Struct_1(1138f, 3958i, 1000f, -14837i), Struct_1(-886f, 2147483647i, 1000f, -5980i), vec2<u32>(78501u, 13137u), vec4<bool>(true, false, true, false), Struct_1(2123f, 1i, 126f, -4371i)), Struct_3(Struct_1(969f, -10567i, -134f, 2147483647i), Struct_1(696f, -1i, -444f, 42160i), vec2<u32>(50032u, 0u), vec4<bool>(true, true, false, true), Struct_1(1000f, 2147483647i, 1000f, 59976i)), Struct_3(Struct_1(170f, -3585i, 1923f, 20012i), Struct_1(-1074f, 2147483647i, -1259f, i32(-2147483648)), vec2<u32>(18240u, 22366u), vec4<bool>(true, true, false, true), Struct_1(-1723f, i32(-2147483648), 827f, -21860i)), Struct_3(Struct_1(1635f, 2147483647i, -1000f, -1i), Struct_1(-1000f, -2869i, -1663f, -46374i), vec2<u32>(0u, 4647u), vec4<bool>(false, false, false, false), Struct_1(-467f, -13058i, -1000f, i32(-2147483648))), Struct_3(Struct_1(765f, 1i, 119f, 2147483647i), Struct_1(862f, -48283i, 1419f, 2147483647i), vec2<u32>(0u, 4294967295u), vec4<bool>(true, false, true, false), Struct_1(1000f, 2147483647i, -457f, -1i)), Struct_3(Struct_1(-800f, 0i, -389f, 60878i), Struct_1(970f, 47106i, -221f, 22524i), vec2<u32>(23708u, 19542u), vec4<bool>(true, false, true, false), Struct_1(-1500f, 2147483647i, -335f, i32(-2147483648))));

var<private> global2: array<vec3<bool>, 1> = array<vec3<bool>, 1>(vec3<bool>(false, true, true));

var<private> global3: array<i32, 28>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = vec2<i32>(_wgslsmith_div_i32(~_wgslsmith_sub_i32(-12485i, ~11079i), -44037i), global3[_wgslsmith_index_u32(0u, 28u)]);
    var var_1 = vec4<f32>(284f, -274f, -159f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-198f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1178f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(661f)))))));
    var var_2 = vec2<bool>(any(select(!(!vec2<bool>(arg_0.a, arg_0.a)), vec2<bool>(false, true), true)), true);
    var_0 = ~_wgslsmith_clamp_vec2_i32(u_input.b, vec2<i32>(-_wgslsmith_div_i32(u_input.b.x, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(48676u, 21u)], 21u)], 28u)]), -28846i), -(~u_input.b));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_1.yy)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), -1213f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.x, -1102f)))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-425f + _wgslsmith_div_f32(var_1.x, 354f)))) * _wgslsmith_f_op_f32(var_3.x * var_3.x)));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: vec3<u32>, arg_3: vec2<f32>) -> f32 {
    let var_0 = firstTrailingBit(1u) | min(~_wgslsmith_dot_vec3_u32(~vec3<u32>(46368u, 1u, u_input.a.x), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, arg_2.x, u_input.a.x), u_input.a)), global0[_wgslsmith_index_u32(countOneBits(arg_2.x), 21u)]);
    var var_1 = -30114i;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1009f - arg_0) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(false))) * 1441f)), ~(-1i), 451f, 2147483647i);
    var var_3 = global0[_wgslsmith_index_u32(reverseBits(45942u), 21u)];
    let var_4 = 1u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-408f, -1898f))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: u32) -> u32 {
    let var_0 = select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), all(vec2<bool>(false, false))), any(vec3<bool>(false, false, true))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(false, true, false)), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), false), ~26896u != abs(arg_1))), !(!vec4<bool>(any(vec4<bool>(true, true, false, true)), true, true, 125237u < u_input.a.x)), !(!vec4<bool>(true, true, true, all(vec4<bool>(true, true, false, true)))));
    global2 = array<vec3<bool>, 1>();
    global0 = array<u32, 21>();
    global2 = array<vec3<bool>, 1>();
    global2 = array<vec3<bool>, 1>();
    return _wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u & abs(u_input.a.x), 21u)] & max(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 21u)], 21u)], 21u)], 21u)] ^ 16780u, u_input.a.x), (_wgslsmith_add_u32(4294967295u, u_input.a.x) | 1u) & 7917u, arg_1, u_input.a.x), abs(_wgslsmith_mult_vec4_u32(~(vec4<u32>(0u, u_input.a.x, arg_1, arg_1) >> (vec4<u32>(26993u, arg_1, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 21u)], 21u)], 1u) % vec4<u32>(32u))), ~(~vec4<u32>(u_input.a.x, u_input.a.x, arg_1, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], 21u)])))));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.c, -1240f)), 1i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_2(arg_2.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -901f) - _wgslsmith_f_op_f32(arg_1.c - -1249f)), _wgslsmith_f_op_f32(max(2348f, 349f)))), _wgslsmith_dot_vec4_i32(-vec4<i32>(~arg_1.b, 0i, _wgslsmith_add_i32(1i, -2147483647i), -arg_1.d), vec4<i32>(_wgslsmith_mod_i32(-36492i, select(u_input.b.x, arg_1.b, true)), -global3[_wgslsmith_index_u32(35705u, 28u)] >> (arg_0 % 32u), -u_input.b.x, 1i)));
    let var_1 = abs(_wgslsmith_mod_u32(~72148u, _wgslsmith_div_u32(arg_0, ~38236u | ~arg_0)));
    return Struct_2(false);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1) -> Struct_3 {
    global0 = array<u32, 21>();
    var var_0 = func_5(func_4(vec2<f32>(arg_1.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(arg_0.x, true, u_input.a, arg_0.yx))))), _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1637u, u_input.a.x, u_input.a.x, 61719u), vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], 21u)], 60818u, 53454u) ^ vec4<u32>(1u, 3108u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)])))), Struct_1(arg_1.c, arg_1.b, _wgslsmith_f_op_f32(f32(-1f) * -431f), (-53212i >> (abs(global0[_wgslsmith_index_u32(u_input.a.x, 21u)]) % 32u)) >> (1u % 32u)), select(vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(true, true)), true, all(global2[_wgslsmith_index_u32(u_input.a.x, 1u)]) && true), -30399i == (u_input.b.x & u_input.b.x)));
    global0 = array<u32, 21>();
    global1 = array<Struct_3, 6>();
    var var_1 = abs(vec3<i32>(_wgslsmith_clamp_i32(-3794i, -(~(-71807i)), -2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit(global3[_wgslsmith_index_u32(u_input.a.x, 28u)]), ~global3[_wgslsmith_index_u32(u_input.a.x, 28u)], 0i, u_input.b.x), reverseBits(firstLeadingBit(vec4<i32>(4011i, u_input.b.x, arg_1.b, 0i)))), 11587i | -global3[_wgslsmith_index_u32(countOneBits(global0[_wgslsmith_index_u32(127509u, 21u)]), 28u)]));
    return global1[_wgslsmith_index_u32(0u, 6u)];
}

fn func_6(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = select(!(!arg_0.d.yz), arg_1.d.yz, !(global3[_wgslsmith_index_u32(reverseBits(1u), 28u)] == -50941i));
    let var_1 = vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(56824i, arg_0.e.d, -1i, arg_2.x) & vec4<i32>(u_input.b.x, 12916i, global3[_wgslsmith_index_u32(arg_0.c.x, 28u)], u_input.b.x), vec4<i32>(5879i, -1i, 1i, global3[_wgslsmith_index_u32(arg_0.c.x, 28u)]))), _wgslsmith_mult_i32(arg_1.b.b, -1i) << ((~24093u << (min(u_input.a.x, 0u) % 32u)) % 32u), -4511i), 30413i, _wgslsmith_div_i32((min(17354i, u_input.b.x) & countOneBits(arg_2.x)) ^ _wgslsmith_mult_i32(arg_2.x, -1i), abs(-(7400i ^ arg_2.x))));
    global0 = array<u32, 21>();
    var var_2 = _wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.a.b, _wgslsmith_clamp_i32(-arg_0.b.d, arg_2.x, abs(arg_1.b.d)) ^ ~(arg_1.a.d << (38233u % 32u))), _wgslsmith_clamp_vec2_i32(~(~vec2<i32>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(61932u, 21u)], 21u)], 28u)], -2147483647i)), -((var_1.yz | vec2<i32>(arg_0.e.d, 0i)) | u_input.b), -arg_2));
    let var_3 = _wgslsmith_mod_u32(max(27170u, abs(0u)), 78912u) & ~u_input.a.x;
    return func_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.c, arg_1.b.a, arg_1.e.c, arg_0.a.a))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.b.c, 101f, 592f, arg_1.a.a))))))), Struct_1(_wgslsmith_f_op_f32(arg_0.a.a - 1000f), ~(var_1.x ^ -5813i), -434f, reverseBits(firstLeadingBit(-32568i)))).e;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 28>();
    global1 = array<Struct_3, 6>();
    let var_0 = select(true, true, true);
    let var_1 = Struct_3(func_6(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1613f, 178f, 533f, 167f))), Struct_1(-606f, 1i, 897f, ~0i)), Struct_3(func_1(vec4<f32>(-1000f, -330f, 1601f, 579f), Struct_1(-451f, u_input.b.x, -1338f, 2147483647i)).a, func_1(_wgslsmith_div_vec4_f32(vec4<f32>(-921f, 131f, 1491f, 248f), vec4<f32>(-2365f, -951f, 1317f, -1550f)), func_1(vec4<f32>(-180f, 893f, -1318f, -214f), Struct_1(-638f, -1i, -1673f, -2147483647i)).e).b, ~vec2<u32>(4294967295u, u_input.a.x), !vec4<bool>(var_0, var_0, var_0, false), func_1(vec4<f32>(387f, 291f, -998f, 1410f), Struct_1(-1000f, global3[_wgslsmith_index_u32(u_input.a.x, 28u)], -1616f, 2147483647i)).a), ~select(~vec2<i32>(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], 28u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], 21u)], 21u)], 28u)]), _wgslsmith_mod_vec2_i32(vec2<i32>(7965i, -37686i), u_input.b), func_1(vec4<f32>(-808f, -138f, -746f, 1048f), Struct_1(-1552f, -1i, 931f, global3[_wgslsmith_index_u32(1u, 28u)])).d.xx)), Struct_1(_wgslsmith_f_op_f32(969f * _wgslsmith_f_op_f32(f32(-1f) * -2904f)), ~2147483647i, -233f, _wgslsmith_dot_vec4_i32(vec4<i32>(~16452i, ~u_input.b.x, ~global3[_wgslsmith_index_u32(u_input.a.x, 28u)], -1i), vec4<i32>(global3[_wgslsmith_index_u32(4294967295u, 28u)], global3[_wgslsmith_index_u32(u_input.a.x, 28u)], 38911i, u_input.b.x) << (vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, 1116u) % vec4<u32>(32u)))), firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 21u)]), u_input.a.xz) ^ ~func_1(vec4<f32>(-848f, 893f, 695f, -121f), Struct_1(407f, -22172i, -457f, global3[_wgslsmith_index_u32(40429u, 28u)])).c), vec4<bool>(any(!global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(abs(1u), 21u)], 1u)]), !(select(true, true, false) || true), !(false || var_0) == var_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(1534f)))) <= -1677f), Struct_1(_wgslsmith_div_f32(-302f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -951f))), -select(1i, ~global3[_wgslsmith_index_u32(3850u, 28u)], any(vec2<bool>(true, false))), 895f, countOneBits(_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.b.x, 40287i), u_input.b.x))));
    let var_2 = _wgslsmith_f_op_f32(trunc(var_1.b.c));
    global1 = array<Struct_3, 6>();
    global2 = array<vec3<bool>, 1>();
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, var_2, -612f) - vec3<f32>(1348f, -480f, -1220f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(811f, var_1.b.a, 912f))) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-var_2), -750f, _wgslsmith_f_op_f32(813f * 770f)), vec3<f32>(var_2, _wgslsmith_f_op_f32(-1000f + -540f), _wgslsmith_f_op_f32(-var_2))))) * _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-286f, 1638f, 1727f), vec3<f32>(-779f, var_2, var_2)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(777f, var_2, 379f), vec3<f32>(var_1.a.c, 1541f, var_2))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.a.a, 1000f, var_1.b.a))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(472f, var_1.b.c, 1122f), vec3<f32>(var_1.b.c, var_1.a.c, 2650f), true))))));
    let x = u_input.a;
    s_output = StorageBuffer(1860f, vec3<f32>(var_3.x, _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1555f * -276f) - var_3.x) - 1324f)), abs(select(-u_input.b, u_input.b, vec2<bool>(var_1.d.x, true))) & vec2<i32>(_wgslsmith_sub_i32(2147483647i, -var_1.b.d), select(~var_1.e.d, -61077i, func_5(u_input.a.x, var_1.b, var_1.d.wxw).a)), _wgslsmith_mult_i32(1i, _wgslsmith_div_i32(~2882i, min(func_1(vec4<f32>(421f, -551f, -484f, var_3.x), Struct_1(var_2, 3978i, 566f, u_input.b.x)).b.b, var_1.b.b))), var_1.c.x);
}

