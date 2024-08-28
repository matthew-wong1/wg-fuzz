struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 15> = array<vec2<i32>, 15>(vec2<i32>(i32(-2147483648), -13904i), vec2<i32>(2147483647i, 1i), vec2<i32>(9568i, i32(-2147483648)), vec2<i32>(-7595i, 0i), vec2<i32>(-43519i, 0i), vec2<i32>(24875i, -12734i), vec2<i32>(0i, 36715i), vec2<i32>(13778i, -17245i), vec2<i32>(1i, 2147483647i), vec2<i32>(0i, -25191i), vec2<i32>(1469i, 25441i), vec2<i32>(53830i, 0i), vec2<i32>(2147483647i, -44800i), vec2<i32>(-1352i, 14160i), vec2<i32>(1i, -31205i));

var<private> global1: array<bool, 6> = array<bool, 6>(false, true, false, true, true, false);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec4<i32> {
    global0 = array<vec2<i32>, 15>();
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1479f + -709f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1069f)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-434f, _wgslsmith_div_f32(600f, 1222f), !global1[_wgslsmith_index_u32(1u, 6u)])) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(790f, -190f) * _wgslsmith_f_op_f32(step(1005f, -655f)))) * -313f)));
    var var_1 = Struct_3(vec4<i32>(~2147483647i, ~min(~(-55445i), 0i << (u_input.a % 32u)), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(max(vec2<i32>(-52258i, -34629i), vec2<i32>(-1i, 0i)), abs(vec2<i32>(-5642i, -2147483647i))), ~(-global0[_wgslsmith_index_u32(13013u, 15u)])), ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 0i, 3827i), vec3<i32>(1i, 1i, -2147483647i)))));
    let var_2 = firstLeadingBit(i32(-1i) * -(i32(-1i) * -2256i));
    var var_3 = var_2;
    return _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(43076i, 1i, var_2), ~_wgslsmith_dot_vec3_i32(-vec3<i32>(0i, var_1.a.x, 17374i), -var_1.a.yxy), _wgslsmith_dot_vec3_i32(-var_1.a.zxz | ~var_1.a.xzx, (vec3<i32>(5494i, 0i, var_1.a.x) ^ var_1.a.wxx) ^ -var_1.a.wxz), -4319i), var_1.a, -select(var_1.a, firstTrailingBit(var_1.a), select(vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(u_input.a, 6u)]), select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 6u)], global1[_wgslsmith_index_u32(u_input.a, 6u)], false), vec4<bool>(true, global1[_wgslsmith_index_u32(3083u, 6u)], false, global1[_wgslsmith_index_u32(u_input.a, 6u)]), global1[_wgslsmith_index_u32(16267u, 6u)]), false)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: Struct_2) -> vec3<f32> {
    let var_0 = abs(abs(-31516i));
    global0 = array<vec2<i32>, 15>();
    var var_1 = vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-36630i, 0i, 2147483647i, 0i) >> (vec4<u32>(arg_2.b.x, 0u, 51663u, 0u) % vec4<u32>(32u)), vec4<i32>(var_0, var_0, var_0, -1i)), vec4<i32>(-1i) * -vec4<i32>(var_0, var_0, var_0, -136647i)), _wgslsmith_mod_vec4_i32(~vec4<i32>(-53084i, 1i, var_0, 18837i), ~vec4<i32>(var_0, 2147483647i, var_0, -2147483647i)) ^ func_3()), 1i, var_0, var_0);
    let var_2 = Struct_2(arg_2.a, arg_2.b);
    var var_3 = Struct_3(~(~countOneBits(vec4<i32>(var_1.x, -2147483647i, var_0, 0i) ^ vec4<i32>(-42475i, var_1.x, var_1.x, var_1.x))));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(arg_0.x)), -627f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1272f)))), -1476f);
}

fn func_4(arg_0: i32, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = all(!select(vec2<bool>(arg_1.x != arg_1.x, !global1[_wgslsmith_index_u32(18209u, 6u)]), select(select(vec2<bool>(false, true), vec2<bool>(true, false), global1[_wgslsmith_index_u32(u_input.a, 6u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 6u)], global1[_wgslsmith_index_u32(u_input.a, 6u)]), false), select(select(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 6u)]), vec2<bool>(false, false), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 6u)], global1[_wgslsmith_index_u32(u_input.a, 6u)])), select(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 6u)], true), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 6u)], true), true), false)));
    global0 = array<vec2<i32>, 15>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1304f, arg_1.x, -174f, arg_1.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(868f, arg_1.x, arg_1.x, arg_1.x) + vec4<f32>(-440f, -1361f, arg_1.x, 1117f)))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-423f - arg_1.x), arg_1.x, _wgslsmith_div_f32(arg_1.x, arg_1.x), _wgslsmith_f_op_f32(step(arg_1.x, arg_1.x)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, 1000f, 1214f) * vec4<f32>(arg_1.x, 648f, -679f, arg_1.x))))));
    global1 = array<bool, 6>();
    global0 = array<vec2<i32>, 15>();
    return Struct_1(~min(_wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.a, 1u), 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 12267u, u_input.a), vec4<u32>(0u, 16720u, u_input.a, u_input.a))), _wgslsmith_div_u32(u_input.a, 0u)), vec4<i32>(arg_0, arg_0, arg_0, _wgslsmith_add_i32(-(i32(-1i) * -7999i), firstTrailingBit(func_3().x))), ~(~vec3<u32>(abs(1u), ~u_input.a, abs(u_input.a))));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec2<u32>) -> Struct_2 {
    var var_0 = func_4(_wgslsmith_mult_i32(i32(-1i) * -39493i, ~((-1i << (u_input.a % 32u)) << (_wgslsmith_add_u32(u_input.a, 1u) % 32u))), _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_div_vec2_f32(vec2<f32>(-552f, _wgslsmith_f_op_f32(trunc(-575f))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-659f, arg_0)))), select(!select(vec4<bool>(arg_1, true, true, arg_1), vec4<bool>(false, arg_1, false, true), false), select(vec4<bool>(global1[_wgslsmith_index_u32(37027u, 6u)], true, global1[_wgslsmith_index_u32(76401u, 6u)], arg_1), select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 6u)], false, true), vec4<bool>(arg_1, false, arg_1, false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 6u)], false, true, global1[_wgslsmith_index_u32(0u, 6u)])), select(vec4<bool>(false, arg_1, global1[_wgslsmith_index_u32(1u, 6u)], false), vec4<bool>(true, global1[_wgslsmith_index_u32(arg_2.x, 6u)], false, true), true)), true), Struct_2(all(select(vec3<bool>(false, true, true), vec3<bool>(arg_1, true, global1[_wgslsmith_index_u32(81453u, 6u)]), false)), abs(firstLeadingBit(vec4<u32>(0u, 0u, 84891u, arg_2.x)))))));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0))) * _wgslsmith_f_op_f32(ceil(arg_0))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 - arg_0), _wgslsmith_f_op_f32(step(arg_0, 1000f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), -202f))))));
    let var_2 = vec2<bool>(true, true);
    global1 = array<bool, 6>();
    global0 = array<vec2<i32>, 15>();
    return Struct_2(arg_1, _wgslsmith_mult_vec4_u32(vec4<u32>(select(~789u, 64545u, false), u_input.a ^ ~13271u, func_4(1i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1035f, arg_0, -1000f))).c.x, arg_2.x), countOneBits(vec4<u32>(33518u, _wgslsmith_mod_u32(arg_2.x, var_0.a), _wgslsmith_mult_u32(var_0.c.x, 15685u), abs(26287u)))));
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: vec4<f32>, arg_3: Struct_3) -> u32 {
    let var_0 = func_1(-728f, any(!(!select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 6u)], false), vec2<bool>(global1[_wgslsmith_index_u32(0u, 6u)], global1[_wgslsmith_index_u32(4294967295u, 6u)]), global1[_wgslsmith_index_u32(u_input.a, 6u)]))), vec2<u32>(~reverseBits(_wgslsmith_dot_vec4_u32(arg_0.b, arg_0.b)), u_input.a));
    global1 = array<bool, 6>();
    global0 = array<vec2<i32>, 15>();
    global0 = array<vec2<i32>, 15>();
    var var_1 = arg_2.x;
    return 4294967295u ^ max(~(_wgslsmith_mod_u32(var_0.b.x, 0u) << (38750u % 32u)), func_4(2147483647i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1, -1413f, 1127f))) * _wgslsmith_f_op_vec3_f32(min(arg_2.xzw, vec3<f32>(arg_1, arg_1, arg_1))))).c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_5(func_1(_wgslsmith_f_op_f32(f32(-1f) * -679f), true, vec2<u32>(~u_input.a, 0u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-148f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1137f))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-877f, 400f, -554f, -1339f))))), Struct_3(vec4<i32>(1i, 1i, 1i, 1i))), countOneBits(select(vec4<i32>(_wgslsmith_sub_i32(-44769i, -1i), -1i, -20244i, abs(52761i)), vec4<i32>(1i, 1i, 1i, 1i), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 6u)], true, func_1(904f, true, vec2<u32>(u_input.a, 48471u)).a))), reverseBits(func_4(firstLeadingBit(-22564i << (u_input.a % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(455f, -567f, 697f)))).c));
    global1 = array<bool, 6>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1714f, -1527f, -1211f, -1011f))) + vec4<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), -251f, _wgslsmith_f_op_f32(920f + 445f), _wgslsmith_f_op_f32(1012f * -1369f))))));
    var_0 = func_4(-countOneBits(23948i) << (~(~(~var_0.c.x)) % 32u), _wgslsmith_f_op_vec3_f32(-var_1.zyy));
    var var_2 = Struct_3(select(_wgslsmith_mod_vec4_i32(var_0.b ^ vec4<i32>(var_0.b.x, var_0.b.x, var_0.b.x, 1i), vec4<i32>(abs(var_0.b.x), var_0.b.x, ~var_0.b.x, _wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(28999u, 15u)], vec2<i32>(-1i, 0i)))), vec4<i32>(_wgslsmith_dot_vec3_i32(var_0.b.ywz, vec3<i32>(2147483647i, 2147483647i, -1i) >> (vec3<u32>(u_input.a, var_0.a, 17278u) % vec3<u32>(32u))), _wgslsmith_dot_vec3_i32(select(var_0.b.yyx, var_0.b.zww, vec3<bool>(true, true, global1[_wgslsmith_index_u32(62563u, 6u)])), var_0.b.ywx), var_0.b.x, abs(1i)), vec4<bool>(true, !global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_0.c, var_0.c), 6u)], global1[_wgslsmith_index_u32(var_0.c.x, 6u)], true)));
    let x = u_input.a;
    s_output = StorageBuffer(~(-1i), firstLeadingBit(4294967295u), _wgslsmith_mod_i32(~(_wgslsmith_mult_i32(0i, 1i) >> (~4294967295u % 32u)), ~abs(var_2.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-830f)), var_1.x) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(1797f, -400f) * var_1.x))), vec4<u32>(u_input.a, u_input.a, var_0.c.x, abs(~_wgslsmith_mod_u32(71937u, var_0.c.x))));
}

