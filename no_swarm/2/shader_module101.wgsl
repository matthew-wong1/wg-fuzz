struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: i32,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(Struct_1(vec4<bool>(true, true, true, false), false), Struct_1(vec4<bool>(false, true, false, false), false), vec3<i32>(-1i, -16525i, -12182i), 33234i, vec3<f32>(-959f, 3045f, -671f)), Struct_2(Struct_1(vec4<bool>(true, false, false, true), false), Struct_1(vec4<bool>(true, true, true, true), true), vec3<i32>(-1i, 1i, i32(-2147483648)), 0i, vec3<f32>(-1000f, 274f, 103f)), Struct_2(Struct_1(vec4<bool>(true, false, true, true), true), Struct_1(vec4<bool>(true, true, false, false), true), vec3<i32>(-1i, 1i, -13615i), 13194i, vec3<f32>(2464f, -221f, 287f)), Struct_2(Struct_1(vec4<bool>(true, true, false, false), true), Struct_1(vec4<bool>(true, false, true, false), false), vec3<i32>(-1i, 22558i, 2147483647i), 1i, vec3<f32>(-780f, -1061f, 1108f)), Struct_2(Struct_1(vec4<bool>(true, false, false, false), false), Struct_1(vec4<bool>(false, true, true, false), true), vec3<i32>(0i, -6463i, -16784i), -23530i, vec3<f32>(-537f, 836f, 826f)), Struct_2(Struct_1(vec4<bool>(true, true, true, false), false), Struct_1(vec4<bool>(true, false, true, false), false), vec3<i32>(10643i, 8442i, 7630i), -30896i, vec3<f32>(417f, -2371f, -1000f)), Struct_2(Struct_1(vec4<bool>(false, true, true, true), false), Struct_1(vec4<bool>(false, false, true, false), false), vec3<i32>(-28179i, 28146i, -27496i), 11291i, vec3<f32>(-1022f, -1692f, -753f)), Struct_2(Struct_1(vec4<bool>(true, false, false, true), true), Struct_1(vec4<bool>(false, true, true, true), false), vec3<i32>(-1i, 2147483647i, 1i), i32(-2147483648), vec3<f32>(-595f, 1107f, 243f)), Struct_2(Struct_1(vec4<bool>(true, false, false, true), true), Struct_1(vec4<bool>(true, false, false, true), false), vec3<i32>(1i, -46425i, 6729i), -1i, vec3<f32>(-538f, 267f, 377f)), Struct_2(Struct_1(vec4<bool>(false, true, true, true), false), Struct_1(vec4<bool>(true, true, false, true), false), vec3<i32>(-1i, -46761i, 1i), -1i, vec3<f32>(-1474f, -846f, -741f)), Struct_2(Struct_1(vec4<bool>(false, true, false, false), false), Struct_1(vec4<bool>(false, false, false, false), false), vec3<i32>(36935i, 0i, 50512i), 0i, vec3<f32>(354f, 2669f, -751f)), Struct_2(Struct_1(vec4<bool>(true, false, true, false), true), Struct_1(vec4<bool>(false, false, false, false), true), vec3<i32>(13498i, -1i, 1i), 2147483647i, vec3<f32>(-699f, 780f, 1589f)), Struct_2(Struct_1(vec4<bool>(false, false, true, true), false), Struct_1(vec4<bool>(true, false, true, false), false), vec3<i32>(30760i, 60872i, 3221i), 50176i, vec3<f32>(1472f, 1000f, 641f)), Struct_2(Struct_1(vec4<bool>(true, true, false, true), true), Struct_1(vec4<bool>(false, true, false, false), true), vec3<i32>(0i, -1i, -14561i), 22038i, vec3<f32>(-1321f, 1000f, -699f)), Struct_2(Struct_1(vec4<bool>(false, true, false, true), true), Struct_1(vec4<bool>(true, false, false, false), false), vec3<i32>(2147483647i, -57840i, 8140i), -25928i, vec3<f32>(1164f, -129f, -894f)), Struct_2(Struct_1(vec4<bool>(false, false, true, true), true), Struct_1(vec4<bool>(false, true, false, false), false), vec3<i32>(-36336i, 2147483647i, 11586i), 1i, vec3<f32>(1298f, 155f, 687f)));

var<private> global1: vec4<i32>;

var<private> global2: array<vec2<i32>, 10>;

var<private> global3: array<bool, 9>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: f32) -> f32 {
    global3 = array<bool, 9>();
    global1 = min(vec4<i32>(_wgslsmith_sub_i32(26320i, _wgslsmith_sub_i32(min(arg_0, 2147483647i), select(u_input.a, 7989i, global3[_wgslsmith_index_u32(1u, 9u)]))), global1.x, abs(i32(-1i) * -1i) & arg_0, -_wgslsmith_sub_i32(-47412i, arg_0 | arg_0)), ~u_input.b);
    global2 = array<vec2<i32>, 10>();
    global0 = array<Struct_2, 16>();
    global1 = u_input.b;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1525f)) + -1863f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-2029f, 949f)))))) - -1707f);
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: vec3<i32>, arg_3: vec3<bool>) -> bool {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1108f * _wgslsmith_f_op_f32(func_3(~arg_2.x, 1543f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(firstTrailingBit(0i), _wgslsmith_f_op_f32(-909f * -1080f)))) - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-601f, _wgslsmith_f_op_f32(1036f + 826f))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1633f + 1194f), _wgslsmith_f_op_f32(ceil(707f)), _wgslsmith_f_op_f32(func_3(arg_2.x, -1363f))), vec3<f32>(_wgslsmith_f_op_f32(round(751f)), _wgslsmith_f_op_f32(ceil(1680f)), _wgslsmith_f_op_f32(round(783f)))), vec3<f32>(-758f, 1000f, 361f), true || !(!global3[_wgslsmith_index_u32(502u, 9u)]))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(round(-455f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(872f))), -1856f))));
    global3 = array<bool, 9>();
    global1 = vec4<i32>(-19244i, global1.x, _wgslsmith_dot_vec3_i32(arg_2, vec3<i32>(global1.x, i32(-1i) * -11339i, ~u_input.a)), arg_2.x);
    var var_2 = Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(arg_1.x, 31203u), arg_0), 16u)], Struct_1(vec4<bool>(all(select(vec4<bool>(arg_3.x, false, true, global3[_wgslsmith_index_u32(arg_0, 9u)]), vec4<bool>(false, true, true, true), vec4<bool>(arg_3.x, true, true, false))), true, all(vec2<bool>(global3[_wgslsmith_index_u32(55373u, 9u)], false)) || true, arg_3.x), all(!select(arg_3.xx, vec2<bool>(global3[_wgslsmith_index_u32(arg_0, 9u)], false), arg_3.x))), Struct_2(Struct_1(!vec4<bool>(global3[_wgslsmith_index_u32(arg_1.x, 9u)], true, false, true), false && arg_3.x), Struct_1(vec4<bool>(arg_3.x, select(true, true, true), true, any(arg_3)), !(!arg_3.x)), _wgslsmith_clamp_vec3_i32(~u_input.b.xyw, _wgslsmith_mod_vec3_i32(global1.yzw, _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, u_input.c, global1.x), u_input.b.yyz)), vec3<i32>(firstTrailingBit(u_input.c), 1i, ~2147483647i)), global1.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, 1451f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1030f, -2266f))) - var_1)), _wgslsmith_sub_vec4_u32(min(vec4<u32>(49305u ^ arg_1.x, _wgslsmith_add_u32(arg_1.x, 60391u), _wgslsmith_sub_u32(arg_1.x, 64378u), firstLeadingBit(arg_0)), vec4<u32>(_wgslsmith_sub_u32(arg_1.x, arg_0), select(arg_1.x, 1u, false), 94632u, arg_0)), vec4<u32>(1u, ~arg_1.x, 1u, ~arg_1.x) | ~(~vec4<u32>(41389u, arg_0, arg_1.x, 30347u))));
    return !var_2.b.a.x;
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2)), _wgslsmith_div_vec4_f32(arg_2, _wgslsmith_div_vec4_f32(arg_2, arg_2))))));
    global1 = u_input.b;
    let var_1 = Struct_2(Struct_1(vec4<bool>(true, any(vec2<bool>(true, true)), !(!arg_0.a.a.x), func_2(14253u, ~vec3<u32>(7021u, 15557u, 24746u), global1.xxx, arg_0.a.a.xxw)), select(!global3[_wgslsmith_index_u32(1u, 9u)], true, all(vec4<bool>(arg_0.b.a.x, false, false, global3[_wgslsmith_index_u32(1u, 9u)])))), arg_0.a, -_wgslsmith_add_vec3_i32(~firstTrailingBit(global1.xyw), ~u_input.b.yxz << (~vec3<u32>(4294967295u, 38201u, 1u) % vec3<u32>(32u))), (i32(-1i) * -countOneBits(1i)) | ~_wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.a, -49420i), select(arg_0.c.x, -1i, arg_0.a.a.x), -58386i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e.x) - _wgslsmith_f_op_f32(func_3(11614i, -1786f))), -1091f)));
    var var_2 = !var_1.b.a;
    global0 = array<Struct_2, 16>();
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 9>();
    global1 = vec4<i32>(u_input.a & countOneBits(~select(u_input.b.x, 37302i, global3[_wgslsmith_index_u32(0u, 9u)])), global1.x, global1.x, -(i32(-1i) * -4971i));
    var var_0 = 533f;
    let var_1 = 1i;
    var var_2 = Struct_2(func_1(global0[_wgslsmith_index_u32(~(~1u), 16u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-275f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(593f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1477f, -1000f, 916f, 1032f)))), Struct_1(vec4<bool>(select(false || global3[_wgslsmith_index_u32(0u, 9u)], true, true || global3[_wgslsmith_index_u32(110918u, 9u)]), func_2(~1u, max(vec3<u32>(81268u, 1u, 2629u), vec3<u32>(4294967295u, 1u, 57410u)), ~vec3<i32>(-1i, -2147483647i, var_1), vec3<bool>(true, false, false)), global3[_wgslsmith_index_u32(4294967295u, 9u)], global3[_wgslsmith_index_u32(firstLeadingBit(1u), 9u)]), any(!select(vec3<bool>(true, true, true), vec3<bool>(global3[_wgslsmith_index_u32(0u, 9u)], global3[_wgslsmith_index_u32(48631u, 9u)], global3[_wgslsmith_index_u32(4294967295u, 9u)]), global3[_wgslsmith_index_u32(29239u, 9u)]))), _wgslsmith_div_vec3_i32(-((vec3<i32>(-1i, u_input.b.x, u_input.a) ^ vec3<i32>(2884i, var_1, -9962i)) | vec3<i32>(u_input.c, var_1, 1i)), -vec3<i32>(_wgslsmith_add_i32(14292i, -14453i), 8849i, global1.x)), -12081i, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-859f, 1f, _wgslsmith_f_op_f32(f32(-1f) * -186f)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(1431f)), 280f, _wgslsmith_div_f32(472f, -2311f)), _wgslsmith_div_vec3_f32(vec3<f32>(-213f, 1274f, -1560f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1308f, 930f, 978f))))));
    global1 = u_input.b;
    var var_3 = Struct_1(!func_1(Struct_2(Struct_1(vec4<bool>(true, false, global3[_wgslsmith_index_u32(49002u, 9u)], false), var_2.a.b), Struct_1(vec4<bool>(global3[_wgslsmith_index_u32(37186u, 9u)], global3[_wgslsmith_index_u32(2513u, 9u)], var_2.b.a.x, false), var_2.a.b), vec3<i32>(global1.x, -7706i, 34476i), var_2.c.x, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.e.x, var_2.e.x, var_2.e.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-2147483647i, 563f))), vec4<f32>(-1073f, var_2.e.x, 848f, _wgslsmith_f_op_f32(1835f + 1000f))).a, -2147483647i != (var_1 << (_wgslsmith_div_u32(93781u, ~81786u) % 32u)));
    let var_4 = vec2<u32>(1u, ~min(1u, abs(1u)));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -min(_wgslsmith_div_i32(var_1, -1i), ~(-22006i)), var_2.e.x, ~_wgslsmith_clamp_i32(-global1.x, global1.x, firstLeadingBit(-34610i)) >> (110814u % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.e.x, _wgslsmith_f_op_f32(988f * var_2.e.x), -1000f))));
}

