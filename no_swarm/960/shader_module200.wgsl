struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<vec4<i32>, 25> = array<vec4<i32>, 25>(vec4<i32>(-24455i, 2147483647i, 20342i, 0i), vec4<i32>(-47798i, 2147483647i, 1i, 8547i), vec4<i32>(14060i, -1i, -1i, 1i), vec4<i32>(1i, -1i, 2147483647i, -41686i), vec4<i32>(2147483647i, 33577i, -21302i, -57344i), vec4<i32>(24807i, 2147483647i, 0i, 2147483647i), vec4<i32>(23283i, 15657i, 1i, 0i), vec4<i32>(-23696i, 22502i, 10251i, -36137i), vec4<i32>(1i, 1i, i32(-2147483648), 1i), vec4<i32>(i32(-2147483648), -17245i, 1i, -9717i), vec4<i32>(-27200i, 9052i, 13117i, 3154i), vec4<i32>(i32(-2147483648), 0i, 0i, -2403i), vec4<i32>(1i, 0i, 2147483647i, i32(-2147483648)), vec4<i32>(8341i, 1i, 1i, -34029i), vec4<i32>(1i, -23772i, 0i, 22740i), vec4<i32>(-22453i, 2147483647i, -15475i, 784i), vec4<i32>(-7685i, 1i, -18036i, i32(-2147483648)), vec4<i32>(2147483647i, 2169i, -25898i, 47088i), vec4<i32>(-41600i, 1i, -15855i, 28696i), vec4<i32>(37476i, i32(-2147483648), 25869i, 7023i), vec4<i32>(i32(-2147483648), i32(-2147483648), 12449i, -29i), vec4<i32>(3338i, 2147483647i, 41248i, 2147483647i), vec4<i32>(-1i, 1i, -1i, 2147483647i), vec4<i32>(0i, 8564i, i32(-2147483648), -1i), vec4<i32>(51789i, 1i, 1i, -12210i));

var<private> global2: bool = false;

var<private> global3: f32 = 539f;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<bool>) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(trunc(-797f));
    let var_1 = ~(~(select(vec3<u32>(4294967295u, u_input.c, 1u), vec3<u32>(u_input.c, 29086u, u_input.c), vec3<bool>(global0.x, arg_0.x, global0.x)) | vec3<u32>(1u, 17613u, u_input.c)) & _wgslsmith_mod_vec3_u32(firstTrailingBit(~vec3<u32>(10127u, 18751u, u_input.c)), ~min(vec3<u32>(27028u, u_input.c, u_input.c), vec3<u32>(u_input.c, u_input.c, 35376u))));
    return vec3<i32>(u_input.a, -8347i, _wgslsmith_mod_i32(-u_input.b, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(-41290i, -1i, u_input.a, u_input.a), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, u_input.b, -24537i, u_input.b), global1[_wgslsmith_index_u32(u_input.c, 25u)])), global1[_wgslsmith_index_u32(u_input.c, 25u)])));
}

fn func_4(arg_0: vec2<f32>, arg_1: bool, arg_2: vec3<i32>, arg_3: vec4<bool>) -> vec3<u32> {
    var var_0 = abs(global1[_wgslsmith_index_u32(0u, 25u)]);
    let var_1 = _wgslsmith_div_f32(1825f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -174f) + _wgslsmith_f_op_f32(round(arg_0.x))));
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-886f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(100f)))))) * arg_0.x);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.x - var_1))), ~(39796u ^ ~u_input.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, arg_0.x)), !vec2<bool>(true, all(vec4<bool>(true, false, arg_3.x, true)))), ~u_input.b, var_0.zx);
    var var_3 = countOneBits(var_2.b.b);
    return ~select(vec3<u32>(u_input.c, ~16781u, u_input.c), ~abs(~vec3<u32>(var_2.b.b, var_2.b.b, u_input.c)), vec3<bool>(true, arg_0.x == _wgslsmith_div_f32(-1122f, -201f), true));
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-108f, -1310f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2353f, 380f)))))), _wgslsmith_dot_vec3_u32(func_4(_wgslsmith_div_vec2_f32(vec2<f32>(-1136f, -208f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-242f, 1270f), vec2<f32>(-473f, 470f)))), true, func_3(select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(false, global0.x, global0.x, true), false)), select(select(vec4<bool>(false, global0.x, true, true), vec4<bool>(global0.x, global0.x, false, false), vec4<bool>(global0.x, global0.x, false, false)), vec4<bool>(global0.x, true, global0.x, true), any(vec3<bool>(global0.x, true, true)))), ~(_wgslsmith_mult_vec3_u32(arg_0, vec3<u32>(u_input.c, u_input.c, arg_0.x)) << (vec3<u32>(arg_0.x, u_input.c, u_input.c) % vec3<u32>(32u)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(189f, -124f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1035f, -1153f) + vec2<f32>(-2896f, -561f)), vec2<bool>(false, true)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1000f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1430f, 283f) - vec2<f32>(-1002f, 421f))) - vec2<f32>(-1000f, _wgslsmith_f_op_f32(1295f + 468f)))), !(!select(!vec2<bool>(false, global0.x), select(vec2<bool>(true, global0.x), vec2<bool>(global0.x, true), vec2<bool>(global0.x, true)), all(vec3<bool>(false, false, global0.x)))));
    var var_1 = _wgslsmith_div_f32(var_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.a + _wgslsmith_div_f32(654f, 1000f)), var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.c.x, 181f))) - 458f);
    let var_2 = vec4<f32>(-724f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(var_0.a)))))), _wgslsmith_f_op_f32(-var_0.a), -1181f);
    global2 = false;
    return Struct_2(_wgslsmith_f_op_f32(abs(1004f)), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(1753f)), _wgslsmith_f_op_f32(trunc(var_2.x)))))), _wgslsmith_sub_u32(54879u, _wgslsmith_sub_u32(4294967295u, arg_0.x)) & firstTrailingBit(arg_0.x), var_0.c, select(!(!vec2<bool>(var_0.d.x, true)), var_0.d, !var_0.d)), u_input.a, reverseBits(reverseBits(vec2<i32>(_wgslsmith_div_i32(u_input.b, -2147483647i), ~10944i))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    let var_0 = arg_1.b;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b.c.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(993f, arg_0.b.a)))), -1222f)));
    global0 = vec2<bool>(true, !(arg_0.d.x < -20484i));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.x, arg_1.a), _wgslsmith_f_op_vec2_f32(-var_0.c)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1595f, -736f) + var_0.c) - _wgslsmith_f_op_vec2_f32(select(arg_0.b.c, vec2<f32>(var_0.c.x, 116f), false)))), !global0.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -787f) + 457f), 1033f)));
    let var_3 = !arg_1.b.d;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-921f, _wgslsmith_div_f32(-559f, _wgslsmith_f_op_f32(-arg_1.b.a)))), _wgslsmith_div_f32(1000f, arg_0.b.a), arg_0.b.d.x && all(func_2(~vec3<u32>(arg_1.b.b, u_input.c, var_0.b)).b.d)));
}

fn func_1(arg_0: bool) -> bool {
    let var_0 = -min(abs(_wgslsmith_mod_i32(42795i, -u_input.a)), ~(i32(-1i) * -41804i) ^ u_input.a);
    let var_1 = 40431u;
    global3 = _wgslsmith_f_op_f32(func_5(func_2(countOneBits(vec3<u32>(countOneBits(1u), 94425u, u_input.c))), Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2106f * -766f)))), Struct_1(-584f, var_1, vec2<f32>(_wgslsmith_f_op_f32(255f * -894f), _wgslsmith_f_op_f32(-509f - 1000f)), vec2<bool>(all(vec4<bool>(true, arg_0, global0.x, arg_0)), false)), var_0, func_2(vec3<u32>(u_input.c | u_input.c, func_2(vec3<u32>(var_1, u_input.c, 86109u)).b.b, reverseBits(var_1))).d)));
    global2 = false;
    global0 = !select(select(select(!vec2<bool>(arg_0, false), !vec2<bool>(arg_0, arg_0), global0.x), vec2<bool>(any(vec3<bool>(true, global0.x, global0.x)), true), true), vec2<bool>(true, true), !vec2<bool>(func_2(vec3<u32>(1u, var_1, var_1)).b.d.x, arg_0));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(select(vec4<bool>(u_input.b >= 34203i, true, global0.x, all(!vec3<bool>(global0.x, false, false))), select(vec4<bool>(select(false, global0.x, false), !global0.x, func_1(true), true), vec4<bool>(global0.x, true, true, true), true), !vec4<bool>(all(vec2<bool>(false, global0.x)), !global0.x, u_input.c < 24636u, true)));
    global0 = func_2(~_wgslsmith_sub_vec3_u32(firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 14979u, u_input.c), vec3<u32>(u_input.c, u_input.c, u_input.c))), ~(vec3<u32>(u_input.c, 4294967295u, 1u) << (vec3<u32>(u_input.c, u_input.c, u_input.c) % vec3<u32>(32u))))).b.d;
    var var_1 = reverseBits(vec2<i32>(_wgslsmith_div_i32(10113i, _wgslsmith_add_i32(u_input.a, u_input.a)), u_input.a));
    var var_2 = ~(vec3<u32>(func_2(vec3<u32>(0u, u_input.c, u_input.c)).b.b, u_input.c & u_input.c, _wgslsmith_div_u32(1u, u_input.c)) | select(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, u_input.c, 25703u), vec3<u32>(u_input.c, 85478u, 4294967295u)), vec3<u32>(37535u, u_input.c, 4294967295u), vec3<bool>(true, false, global0.x))) << (_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(u_input.c, u_input.c, u_input.c) & abs(vec3<u32>(u_input.c, 27615u, u_input.c))), _wgslsmith_mod_vec3_u32(max(~vec3<u32>(u_input.c, 1u, u_input.c), vec3<u32>(u_input.c, u_input.c, 64767u)), ~(~vec3<u32>(39869u, u_input.c, u_input.c)))) % vec3<u32>(32u));
    let var_3 = !(!select(!vec2<bool>(global0.x, true), vec2<bool>(true, true), any(vec3<bool>(global0.x, false, global0.x))));
    global3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(Struct_2(-1000f, Struct_1(762f, 4294967295u, vec2<f32>(-1233f, 621f), var_3), -1071i, vec2<i32>(49224i, -2147483647i)), Struct_2(-1112f, Struct_1(808f, 0u, vec2<f32>(1111f, 981f), vec2<bool>(true, var_3.x)), 42878i, vec2<i32>(u_input.a, -16760i)))) - _wgslsmith_f_op_f32(-166f * -1092f)))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-234f - _wgslsmith_div_f32(788f, 1322f)))))));
    var var_4 = Struct_3(Struct_1(func_2(vec3<u32>(var_2.x >> (var_2.x % 32u), _wgslsmith_dot_vec2_u32(var_2.yy, vec2<u32>(var_2.x, var_2.x)), 0u)).b.a, countOneBits(~var_2.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(func_2(vec3<u32>(14266u, u_input.c, 12505u)).b.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(-681f, 1828f) + vec2<f32>(-452f, -1139f)))), select(var_3, !var_3, var_3)), Struct_2(_wgslsmith_div_f32(-752f, 1f), Struct_1(387f, 22570u, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(-624f, -1840f), vec2<f32>(-711f, 1236f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(941f, 131f) * vec2<f32>(-2233f, -279f)))), vec2<bool>(false, true)), -u_input.a, vec2<i32>(var_1.x ^ _wgslsmith_dot_vec2_i32(vec2<i32>(-28160i, u_input.a), vec2<i32>(u_input.b, var_1.x)), ~(-u_input.a))), !(!(abs(var_1.x) != _wgslsmith_div_i32(var_1.x, -2147483647i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1214f)) - _wgslsmith_div_f32(-327f, _wgslsmith_f_op_f32(ceil(140f)))));
    let var_5 = vec4<f32>(946f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.a.a - var_4.b.b.c.x) - _wgslsmith_f_op_f32(-623f - var_4.b.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(var_4.b, Struct_2(-140f, var_4.a, -11031i, var_4.b.d))) * 643f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -379f))), _wgslsmith_f_op_f32(var_4.d * _wgslsmith_f_op_f32(var_4.d - var_4.d)));
    let var_6 = func_2(min(countOneBits(vec3<u32>(79027u, ~1u, 195u)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, 0u, 0u), vec3<u32>(76875u, 4294967295u, 1u)) ^ _wgslsmith_div_vec3_u32(~vec3<u32>(var_2.x, 4294967295u, 1u), countOneBits(vec3<u32>(var_2.x, var_2.x, 0u)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b.c, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_5.x, -513f))), var_5.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1301f, -304f, -713f) - vec3<f32>(838f, var_4.b.a, var_5.x)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1194f, 802f, -1000f), var_5.wzy, vec3<bool>(true, false, true))))))), abs(var_1.x) << (~_wgslsmith_dot_vec2_u32(select(vec2<u32>(11702u, 1u), vec2<u32>(54347u, u_input.c), true), ~vec2<u32>(33338u, 1u)) % 32u));
}

