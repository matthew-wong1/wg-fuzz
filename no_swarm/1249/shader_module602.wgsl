struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
    c: i32,
    d: vec4<bool>,
    e: vec2<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
    c: u32,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec3<f32> = vec3<f32>(-817f, 939f, 2038f);

var<private> global2: Struct_3;

var<private> global3: array<vec4<bool>, 21> = array<vec4<bool>, 21>(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false));

var<private> global4: array<Struct_4, 15> = array<Struct_4, 15>(Struct_4(vec3<u32>(1u, 24108u, 26885u), Struct_2(37576u), -23227i, vec4<bool>(true, false, true, false), vec2<bool>(false, false)), Struct_4(vec3<u32>(1u, 4294967295u, 30594u), Struct_2(0u), -24564i, vec4<bool>(true, true, false, false), vec2<bool>(false, true)), Struct_4(vec3<u32>(0u, 44742u, 40234u), Struct_2(0u), 15725i, vec4<bool>(false, false, true, false), vec2<bool>(true, true)), Struct_4(vec3<u32>(0u, 1u, 4294967295u), Struct_2(2135u), 37851i, vec4<bool>(true, false, false, false), vec2<bool>(false, false)), Struct_4(vec3<u32>(2211u, 4294967295u, 0u), Struct_2(10178u), 0i, vec4<bool>(false, false, true, true), vec2<bool>(false, true)), Struct_4(vec3<u32>(50246u, 81472u, 1u), Struct_2(118816u), 0i, vec4<bool>(false, true, true, true), vec2<bool>(false, true)), Struct_4(vec3<u32>(4294967295u, 22018u, 1u), Struct_2(61475u), i32(-2147483648), vec4<bool>(false, false, false, true), vec2<bool>(true, true)), Struct_4(vec3<u32>(4294967295u, 8270u, 4294967295u), Struct_2(13353u), 13840i, vec4<bool>(false, true, true, true), vec2<bool>(false, true)), Struct_4(vec3<u32>(36586u, 33966u, 55867u), Struct_2(108807u), -1i, vec4<bool>(false, true, true, true), vec2<bool>(true, false)), Struct_4(vec3<u32>(6650u, 4294967295u, 0u), Struct_2(46362u), -32078i, vec4<bool>(false, true, false, true), vec2<bool>(true, false)), Struct_4(vec3<u32>(1u, 0u, 1u), Struct_2(44285u), 25022i, vec4<bool>(false, false, false, false), vec2<bool>(false, false)), Struct_4(vec3<u32>(0u, 1u, 1u), Struct_2(1u), -19432i, vec4<bool>(true, true, false, false), vec2<bool>(true, false)), Struct_4(vec3<u32>(45186u, 4294967295u, 4294967295u), Struct_2(54368u), -9923i, vec4<bool>(false, true, true, false), vec2<bool>(true, false)), Struct_4(vec3<u32>(37724u, 0u, 0u), Struct_2(0u), i32(-2147483648), vec4<bool>(false, false, true, true), vec2<bool>(true, false)), Struct_4(vec3<u32>(0u, 60508u, 4294967295u), Struct_2(21250u), 1i, vec4<bool>(true, true, false, true), vec2<bool>(false, false)));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(select(!select(!global3[_wgslsmith_index_u32(global2.a.a, 21u)], select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), global3[_wgslsmith_index_u32(global2.b.a, 21u)]), true), !select(select(vec4<bool>(false, true, true, true), global3[_wgslsmith_index_u32(62167u, 21u)], global3[_wgslsmith_index_u32(global2.b.a, 21u)]), select(vec4<bool>(false, true, false, false), global3[_wgslsmith_index_u32(47965u, 21u)], true), false), all(vec2<bool>(true, any(global3[_wgslsmith_index_u32(global2.b.a, 21u)])))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1567f, -703f)), _wgslsmith_f_op_vec2_f32(-global1.xx))), u_input.e.yz, false);
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1845f, global1.x, var_0.b.x), vec3<f32>(global1.x, -1063f, -925f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, var_0.b.x, 841f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, global1.x, -1000f) + vec3<f32>(-1626f, -477f, 415f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, var_0.b.x, -1064f))))) - vec3<f32>(var_0.b.x, global1.x, 827f));
    global1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-var_0.b.x), -632f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.b.x, global1.x, 617f), vec3<f32>(global1.x, 825f, global1.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, 459f) * vec3<f32>(var_0.b.x, global1.x, 152f))) + vec3<f32>(-878f, _wgslsmith_f_op_f32(min(var_0.b.x, -827f)), global1.x)), vec3<bool>(false, true, var_0.d)))));
    let var_1 = (u_input.b & ~vec3<i32>(-3208i, ~var_0.c.x, 39868i)) >> ((~min(vec3<u32>(1u, 4294967295u, 22914u) ^ vec3<u32>(global2.a.a, global2.a.a, global2.a.a), firstTrailingBit(vec3<u32>(global2.a.a, global2.b.a, 4294967295u))) << (abs(~(~vec3<u32>(global2.b.a, 4294967295u, global2.a.a))) % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_2 = !(!(!any(var_0.a.xwy)));
    return _wgslsmith_clamp_u32(1u, global2.b.a, global2.b.a);
}

fn func_2() -> Struct_1 {
    let var_0 = global2.b;
    global0 = ~(_wgslsmith_clamp_u32(func_3(), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, global2.a.a, 0u), vec4<u32>(var_0.a, global2.a.a, 1u, global2.a.a)), ~var_0.a), _wgslsmith_mod_u32(global2.b.a, 1u)) ^ ~_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(var_0.a, var_0.a, global2.b.a)), ~vec3<u32>(0u, 15038u, global2.a.a)));
    var var_1 = _wgslsmith_dot_vec4_i32(u_input.e, -u_input.e | _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 1i, u_input.d, u_input.e.x), ~u_input.e, ~vec4<i32>(9222i, u_input.a, u_input.b.x, 0i)), ~select(vec4<i32>(u_input.e.x, u_input.e.x, -5786i, 5925i), vec4<i32>(-94398i, u_input.b.x, u_input.d, u_input.b.x), global3[_wgslsmith_index_u32(var_0.a, 21u)])));
    var var_2 = _wgslsmith_add_vec2_u32(min(vec2<u32>(var_0.a >> (1u % 32u), ~global2.a.a), ~vec2<u32>(4294967295u, global2.b.a) << (~vec2<u32>(var_0.a, 0u) % vec2<u32>(32u))) << (min(~_wgslsmith_mod_vec2_u32(vec2<u32>(9165u, global2.a.a), vec2<u32>(1u, global2.a.a)), _wgslsmith_mult_vec2_u32(vec2<u32>(7055u, global2.a.a), vec2<u32>(var_0.a, var_0.a)) | _wgslsmith_div_vec2_u32(vec2<u32>(var_0.a, global2.b.a), vec2<u32>(4294967295u, 17719u))) % vec2<u32>(32u)), ~(~max(vec2<u32>(10711u, var_0.a), vec2<u32>(var_0.a, var_0.a))));
    var var_3 = abs(abs(select(~vec4<i32>(u_input.a, 18646i, 1i, 18753i), _wgslsmith_mod_vec4_i32(u_input.e, min(u_input.e, vec4<i32>(u_input.c, u_input.b.x, 65687i, -2147483647i))), true)));
    return Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global1.x * 181f), _wgslsmith_div_f32(125f, global1.x)) + global1.zy), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1936f - global1.x) + 1f), _wgslsmith_f_op_f32(f32(-1f) * -1372f))), _wgslsmith_sub_vec2_i32(var_3.wx, _wgslsmith_clamp_vec2_i32(u_input.b.zz, -var_3.wz, var_3.yz)) << (((abs(vec2<u32>(var_2.x, 4294967295u)) & _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(27199u, var_2.x))) & firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.a, var_0.a), vec2<u32>(var_2.x, var_2.x), vec2<u32>(var_0.a, 1887u)))) % vec2<u32>(32u)), !all(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true)));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_4) -> f32 {
    var var_0 = func_2();
    var_0 = func_2();
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, global1.x, -1387f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1145f, 199f, 344f), vec3<f32>(443f, -208f, -720f)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.b.x, -1000f, global1.x), vec3<f32>(var_0.b.x, 1019f, 109f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-307f, var_0.b.x, var_0.b.x)), true))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, var_0.b.x)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -232f), var_0.b.x, _wgslsmith_f_op_f32(-var_0.b.x))), var_0.a.zyw)));
    var var_1 = Struct_2(_wgslsmith_sub_u32(arg_1.b.a, ~_wgslsmith_sub_u32(~64985u, select(global2.b.a, 4294967295u, var_0.a.x))));
    let var_2 = Struct_4(vec3<u32>(4294967295u, 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(min(95771u, var_1.a), 43502u, abs(arg_1.b.a)), min(firstTrailingBit(vec3<u32>(var_1.a, var_1.a, 4294967295u)), ~arg_1.a))), Struct_2(2816u), 1i, !var_0.a, !select(vec2<bool>(true, true), func_2().a.yx, select(vec2<bool>(arg_1.e.x, var_0.d), vec2<bool>(true, true), vec2<bool>(arg_0.x, var_0.a.x))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-716f, -744f)) + 159f), var_0.b.x);
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: f32, arg_3: vec4<f32>) -> vec4<i32> {
    return vec4<i32>(u_input.a, select(u_input.b.x, 37906i, arg_0), countOneBits(abs(12039i)), abs(u_input.a)) | u_input.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(_wgslsmith_div_vec4_i32(func_4(false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(105f, global1.x)), global1.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(vec4<bool>(true, false, false, false), Struct_4(vec3<u32>(global2.a.a, 34428u, global2.a.a), Struct_2(18286u), u_input.d, vec4<bool>(true, false, false, true), vec2<bool>(false, false)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2387f, global1.x, -1132f, global1.x) - vec4<f32>(global1.x, global1.x, -1167f, -512f)))), vec4<i32>(_wgslsmith_add_i32(1i >> (global2.b.a % 32u), u_input.d & u_input.b.x), -5307i, firstTrailingBit(-u_input.a), 1i)));
    let var_1 = Struct_5(Struct_2(41047u), _wgslsmith_f_op_f32(-226f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -493f))) * -845f)), global2.a.a, global2.b.a, _wgslsmith_div_i32(countOneBits(0i), u_input.d));
    let var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.x))), _wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(global1.x, -1562f)), _wgslsmith_f_op_f32(max(var_1.b, global1.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -2244f, var_1.b, _wgslsmith_f_op_f32(-var_1.b))))));
    global4 = array<Struct_4, 15>();
    var var_3 = false;
    let var_4 = !(!func_2().a.yw);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(select(firstTrailingBit(reverseBits(vec3<u32>(var_1.a.a, 4294967295u, 4294967295u))), _wgslsmith_div_vec3_u32(vec3<u32>(global2.a.a, var_1.d, 12154u) << (vec3<u32>(var_1.d, 24351u, 4294967295u) % vec3<u32>(32u)), vec3<u32>(4294967295u, 14280u, 7273u)), false)), vec2<f32>(1f, var_2.x));
}

