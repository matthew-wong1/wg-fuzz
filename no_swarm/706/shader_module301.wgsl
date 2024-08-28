struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21>;

var<private> global1: Struct_1;

var<private> global2: array<vec3<u32>, 31>;

var<private> global3: array<vec2<u32>, 8>;

var<private> global4: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(-1i, Struct_1(vec4<bool>(false, true, false, false), vec3<bool>(true, false, true)), vec4<i32>(1i, -1i, i32(-2147483648), 2147483647i)), Struct_2(24094i, Struct_1(vec4<bool>(false, true, false, false), vec3<bool>(true, true, true)), vec4<i32>(-22172i, -43548i, -7707i, -5845i)), Struct_2(i32(-2147483648), Struct_1(vec4<bool>(true, true, false, false), vec3<bool>(false, true, false)), vec4<i32>(41394i, 59807i, -34580i, -25199i)), Struct_2(-23030i, Struct_1(vec4<bool>(false, false, false, true), vec3<bool>(true, true, false)), vec4<i32>(-71708i, 29272i, -1i, 2595i)), Struct_2(-30904i, Struct_1(vec4<bool>(false, false, true, true), vec3<bool>(false, true, true)), vec4<i32>(50066i, 2140i, 44917i, i32(-2147483648))), Struct_2(-1i, Struct_1(vec4<bool>(false, false, true, true), vec3<bool>(false, true, true)), vec4<i32>(-54064i, -1i, -1i, -1i)), Struct_2(-8222i, Struct_1(vec4<bool>(true, false, false, true), vec3<bool>(false, false, true)), vec4<i32>(0i, 1i, 79954i, 15600i)), Struct_2(40402i, Struct_1(vec4<bool>(true, false, false, false), vec3<bool>(false, true, false)), vec4<i32>(-84425i, 1i, 2147483647i, -36470i)), Struct_2(1i, Struct_1(vec4<bool>(false, true, false, false), vec3<bool>(true, true, false)), vec4<i32>(0i, 0i, -4617i, -661i)), Struct_2(-16908i, Struct_1(vec4<bool>(true, true, true, true), vec3<bool>(true, false, false)), vec4<i32>(0i, -47859i, 14901i, 2147483647i)), Struct_2(-3684i, Struct_1(vec4<bool>(true, true, true, false), vec3<bool>(true, true, true)), vec4<i32>(i32(-2147483648), 0i, -31944i, 2147483647i)), Struct_2(-1i, Struct_1(vec4<bool>(false, false, true, false), vec3<bool>(false, true, false)), vec4<i32>(0i, 44854i, 0i, -1i)), Struct_2(-1i, Struct_1(vec4<bool>(false, true, true, false), vec3<bool>(true, true, false)), vec4<i32>(-5291i, i32(-2147483648), 50247i, 67209i)), Struct_2(879i, Struct_1(vec4<bool>(false, false, true, true), vec3<bool>(true, true, false)), vec4<i32>(1i, i32(-2147483648), -47316i, i32(-2147483648))), Struct_2(26485i, Struct_1(vec4<bool>(true, false, false, true), vec3<bool>(false, false, false)), vec4<i32>(6003i, 1i, -1i, 0i)), Struct_2(1i, Struct_1(vec4<bool>(true, false, false, true), vec3<bool>(true, true, false)), vec4<i32>(47987i, 1i, i32(-2147483648), 26475i)), Struct_2(i32(-2147483648), Struct_1(vec4<bool>(false, false, true, false), vec3<bool>(true, false, false)), vec4<i32>(0i, 36591i, -1i, 2147483647i)), Struct_2(i32(-2147483648), Struct_1(vec4<bool>(true, false, false, false), vec3<bool>(false, false, false)), vec4<i32>(2147483647i, -47480i, 1i, -1i)), Struct_2(1i, Struct_1(vec4<bool>(false, false, false, false), vec3<bool>(false, true, false)), vec4<i32>(-17456i, -51110i, 0i, 1i)), Struct_2(-26718i, Struct_1(vec4<bool>(true, false, false, true), vec3<bool>(false, false, false)), vec4<i32>(-3989i, -1i, 1i, 65806i)), Struct_2(i32(-2147483648), Struct_1(vec4<bool>(true, false, false, false), vec3<bool>(true, false, true)), vec4<i32>(-3935i, -3211i, -3524i, -3854i)), Struct_2(-7898i, Struct_1(vec4<bool>(true, false, true, true), vec3<bool>(true, true, false)), vec4<i32>(-34457i, -5771i, i32(-2147483648), -29830i)), Struct_2(1703i, Struct_1(vec4<bool>(false, true, false, false), vec3<bool>(false, true, true)), vec4<i32>(2147483647i, 0i, -1i, -32852i)), Struct_2(-12059i, Struct_1(vec4<bool>(false, false, false, false), vec3<bool>(true, false, false)), vec4<i32>(-33683i, 1i, -23263i, i32(-2147483648))), Struct_2(-1i, Struct_1(vec4<bool>(true, true, true, true), vec3<bool>(false, true, true)), vec4<i32>(0i, 61493i, 10911i, -53840i)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32) -> vec2<u32> {
    var var_0 = Struct_2(-u_input.b, Struct_1(vec4<bool>(true, false, false, global1.a.x), global1.b), firstLeadingBit(vec4<i32>(firstLeadingBit(u_input.b), firstTrailingBit(_wgslsmith_sub_i32(u_input.b, 1i)), _wgslsmith_dot_vec4_i32(~vec4<i32>(3702i, -2147483647i, 2147483647i, u_input.b), vec4<i32>(-16721i, 35330i, u_input.d.x, u_input.d.x)), _wgslsmith_clamp_i32(abs(u_input.b), ~u_input.d.x, u_input.b))));
    let var_1 = -12380i;
    var var_2 = -961f;
    global3 = array<vec2<u32>, 8>();
    var var_3 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(arg_0, 31u)], vec3<u32>(0u, 1u, 53006u)), 25u)];
    return select(_wgslsmith_sub_vec2_u32(global3[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(arg_0, 21u)], 0u)), 8u)], global3[_wgslsmith_index_u32(~(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, u_input.c), global3[_wgslsmith_index_u32(4294967295u, 8u)]) | 1u), 8u)]), _wgslsmith_div_vec2_u32(~min(firstLeadingBit(u_input.e), ~global3[_wgslsmith_index_u32(arg_0, 8u)]), ~u_input.e), var_0.b.b.x);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2) -> i32 {
    return u_input.b;
}

fn func_2(arg_0: vec2<u32>) -> i32 {
    global0 = array<u32, 21>();
    global0 = array<u32, 21>();
    let var_0 = -u_input.b;
    var var_1 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(global2[_wgslsmith_index_u32(50622u, 31u)], ~vec3<u32>(u_input.c, global0[_wgslsmith_index_u32(1u, 21u)], 51755u)) << (global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(1u | u_input.e.x), 4294967295u), 31u)] % vec3<u32>(32u)), global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec2_u32(global3[_wgslsmith_index_u32(arg_0.x >> (~40289u % 32u), 8u)], abs(vec2<u32>(u_input.c, arg_0.x)))), 31u)]), 25u)];
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1517f))), _wgslsmith_div_f32(596f, _wgslsmith_f_op_f32(round(-1215f))), -826f), vec3<f32>(1f, 1f, 1f)));
    return reverseBits(func_4(_wgslsmith_clamp_vec2_u32(vec2<u32>(min(4294967295u, 0u), ~u_input.e.x), func_3(_wgslsmith_mod_u32(4294967295u, arg_0.x)), ~firstLeadingBit(arg_0)), Struct_2(_wgslsmith_mult_i32(u_input.b, u_input.b | var_0), var_1.b, firstLeadingBit(-vec4<i32>(u_input.b, -39908i, var_1.a, var_1.c.x)))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: u32) -> Struct_2 {
    let var_0 = firstTrailingBit(abs(~abs(select(global2[_wgslsmith_index_u32(0u, 31u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 31u)], global1.a.xxx))));
    var var_1 = ~(~(~vec4<u32>(abs(u_input.c), _wgslsmith_clamp_u32(1u, var_0.x, 1u), abs(57065u), 4294967295u | u_input.c)));
    var_1 = ~_wgslsmith_mult_vec4_u32(~firstTrailingBit(vec4<u32>(13318u, 8704u, 81476u, 4204u) << (vec4<u32>(0u, var_0.x, 46011u, 49900u) % vec4<u32>(32u))), firstTrailingBit(~min(vec4<u32>(var_1.x, 1u, 25964u, 81388u), vec4<u32>(68508u, arg_3, var_1.x, arg_3))));
    let var_2 = false;
    global1 = Struct_1(arg_0.b.a, select(!vec3<bool>(true, var_2, true), select(!vec3<bool>(true, true, arg_2.b.a.x), vec3<bool>(true, arg_1.b.a.x || arg_2.b.b.x, arg_1.b.a.x), !(!vec3<bool>(global1.a.x, var_2, true))), var_2));
    return Struct_2(firstLeadingBit(arg_1.c.x), Struct_1(arg_1.b.a, select(arg_0.b.a.wwx, vec3<bool>(any(vec2<bool>(true, arg_1.b.a.x)), true, true), select(vec3<bool>(false, var_2, var_2), !vec3<bool>(false, true, arg_2.b.b.x), arg_1.b.b))), arg_1.c);
}

fn func_1(arg_0: i32, arg_1: bool) -> Struct_1 {
    global0 = array<u32, 21>();
    let var_0 = func_5(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(~(_wgslsmith_clamp_u32(u_input.a, 30806u, global0[_wgslsmith_index_u32(4294967295u, 21u)]) | u_input.e.x), ~(~u_input.e.x >> (~28417u % 32u))), 25u)], Struct_2(func_2(~vec2<u32>(39749u, global0[_wgslsmith_index_u32(32713u, 21u)])), Struct_1(select(!global1.a, vec4<bool>(false, arg_1, true, true), global1.a), global1.b), u_input.d), Struct_2(-(i32(-1i) * -7934i), Struct_1(!vec4<bool>(arg_1, arg_1, false, global1.a.x), select(vec3<bool>(true, global1.a.x, arg_1), !vec3<bool>(false, global1.b.x, arg_1), vec3<bool>(global1.b.x, false, arg_1))), u_input.d), ~(~46797u));
    global4 = array<Struct_2, 25>();
    let var_1 = min(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~(1u & ~select(u_input.a, 21320u, true)), 21u)], 31u)], global2[_wgslsmith_index_u32(1u, 31u)] ^ (countOneBits(global2[_wgslsmith_index_u32(0u, 31u)]) << (select(global2[_wgslsmith_index_u32(39825u, 31u)], global2[_wgslsmith_index_u32(0u, 31u)], u_input.a <= u_input.a) % vec3<u32>(32u))));
    let var_2 = !(!(!func_5(func_5(var_0, Struct_2(-43503i, var_0.b, var_0.c), Struct_2(1i, var_0.b, vec4<i32>(-1i, -4817i, var_0.c.x, var_0.c.x)), 0u), var_0, Struct_2(2147483647i, Struct_1(global1.a, var_0.b.a.wxw), vec4<i32>(arg_0, u_input.d.x, u_input.b, 26119i)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global0[_wgslsmith_index_u32(54383u, 21u)], 4294967295u, 38200u), vec4<u32>(var_1.x, 41705u, u_input.a, 1u))).b.a));
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(2147483647i, false);
    global0 = array<u32, 21>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(344f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-1848f, 2846f, global1.a.x)), -864f, false)), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(floor(299f))), 716f)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.wx, ~u_input.a);
}

