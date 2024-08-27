struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: vec2<f32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12>;

var<private> global1: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(36423i, vec2<bool>(true, true), vec2<f32>(-158f, -512f), -1000f, Struct_1(true, vec4<bool>(false, true, false, true))), Struct_2(98425i, vec2<bool>(false, true), vec2<f32>(343f, -1422f), 380f, Struct_1(false, vec4<bool>(false, false, true, true))), Struct_2(-3947i, vec2<bool>(false, true), vec2<f32>(1464f, 1201f), -770f, Struct_1(false, vec4<bool>(false, false, true, true))), Struct_2(0i, vec2<bool>(false, false), vec2<f32>(-1678f, -301f), 658f, Struct_1(true, vec4<bool>(false, true, true, true))), Struct_2(-29156i, vec2<bool>(false, true), vec2<f32>(889f, 102f), 465f, Struct_1(true, vec4<bool>(true, true, false, true))), Struct_2(i32(-2147483648), vec2<bool>(false, true), vec2<f32>(803f, -370f), 1000f, Struct_1(true, vec4<bool>(true, true, false, false))), Struct_2(-26017i, vec2<bool>(true, false), vec2<f32>(998f, 2390f), 164f, Struct_1(true, vec4<bool>(true, false, false, true))), Struct_2(-34868i, vec2<bool>(true, true), vec2<f32>(-1000f, 510f), -926f, Struct_1(false, vec4<bool>(true, true, false, false))), Struct_2(1i, vec2<bool>(false, false), vec2<f32>(1279f, -167f), -1692f, Struct_1(true, vec4<bool>(true, true, false, false))), Struct_2(27711i, vec2<bool>(true, false), vec2<f32>(-358f, -1694f), 799f, Struct_1(true, vec4<bool>(false, false, false, true))), Struct_2(0i, vec2<bool>(false, false), vec2<f32>(327f, -878f), 592f, Struct_1(false, vec4<bool>(true, false, false, false))), Struct_2(-52198i, vec2<bool>(false, false), vec2<f32>(-1425f, -1309f), -1461f, Struct_1(false, vec4<bool>(false, false, true, true))), Struct_2(2580i, vec2<bool>(true, true), vec2<f32>(-1378f, 422f), 457f, Struct_1(false, vec4<bool>(false, true, false, true))), Struct_2(i32(-2147483648), vec2<bool>(false, true), vec2<f32>(1664f, 388f), -540f, Struct_1(true, vec4<bool>(true, false, false, true))), Struct_2(-44779i, vec2<bool>(true, true), vec2<f32>(1055f, 1208f), 1032f, Struct_1(true, vec4<bool>(true, false, false, true))), Struct_2(2147483647i, vec2<bool>(false, false), vec2<f32>(633f, 1000f), 444f, Struct_1(true, vec4<bool>(true, true, false, true))), Struct_2(3961i, vec2<bool>(true, false), vec2<f32>(2004f, -1052f), 1966f, Struct_1(true, vec4<bool>(true, false, true, false))), Struct_2(-1i, vec2<bool>(false, true), vec2<f32>(328f, -918f), 649f, Struct_1(false, vec4<bool>(true, true, false, true))), Struct_2(1i, vec2<bool>(false, false), vec2<f32>(465f, -1884f), -1046f, Struct_1(false, vec4<bool>(true, false, true, true))), Struct_2(-32732i, vec2<bool>(true, true), vec2<f32>(-423f, -1000f), -343f, Struct_1(false, vec4<bool>(false, false, false, false))), Struct_2(2147483647i, vec2<bool>(false, false), vec2<f32>(-1773f, -591f), 256f, Struct_1(true, vec4<bool>(true, false, false, true))), Struct_2(49413i, vec2<bool>(true, true), vec2<f32>(-1000f, 834f), -1341f, Struct_1(false, vec4<bool>(true, true, true, false))), Struct_2(5660i, vec2<bool>(false, false), vec2<f32>(-1126f, 1565f), 1265f, Struct_1(false, vec4<bool>(true, false, true, false))), Struct_2(26766i, vec2<bool>(false, false), vec2<f32>(-966f, -2515f), 352f, Struct_1(true, vec4<bool>(false, false, true, true))), Struct_2(-1i, vec2<bool>(false, false), vec2<f32>(1847f, 1000f), 848f, Struct_1(false, vec4<bool>(false, true, true, false))), Struct_2(i32(-2147483648), vec2<bool>(true, true), vec2<f32>(125f, -218f), 720f, Struct_1(false, vec4<bool>(true, false, true, false))));

var<private> global2: Struct_3 = Struct_3(1000f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec3<bool>) -> i32 {
    global1 = array<Struct_2, 26>();
    global1 = array<Struct_2, 26>();
    let var_0 = vec3<bool>(!((-782f > global2.a) == select(arg_0.x, arg_0.x, false)) && (_wgslsmith_f_op_f32(767f * _wgslsmith_f_op_f32(-global2.a)) == _wgslsmith_f_op_f32(1008f - _wgslsmith_f_op_f32(global2.a + global2.a))), any(!select(vec4<bool>(arg_0.x, global0[_wgslsmith_index_u32(0u, 12u)], arg_0.x, global0[_wgslsmith_index_u32(20771u, 12u)]), vec4<bool>(false, false, arg_0.x, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)], true, true))), global0[_wgslsmith_index_u32(u_input.b, 12u)]);
    global2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-319f)))));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a - _wgslsmith_f_op_f32(global2.a + -530f)) + _wgslsmith_f_op_f32(-1863f + _wgslsmith_f_op_f32(-global2.a))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-973f - global2.a)))));
    return -2147483647i;
}

fn func_3(arg_0: vec3<bool>, arg_1: i32) -> Struct_4 {
    var var_0 = u_input.a;
    global0 = array<bool, 12>();
    global2 = Struct_3(_wgslsmith_f_op_f32(floor(global2.a)));
    let var_1 = -u_input.d.zz;
    global0 = array<bool, 12>();
    return Struct_4(168f, global2.a);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2.a)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(global2.a, _wgslsmith_f_op_f32(-global2.a), true)))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.a)))));
    let var_1 = global2.a;
    var_0 = global2.a;
    var_0 = -1161f;
    var var_2 = func_3(vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_1.x, ~4294967295u), 12u)], true, func_2(!vec3<bool>(true, global0[_wgslsmith_index_u32(20988u, 12u)], true)) > 1i), arg_0.x);
    return Struct_1(!(!select(true, false, false)), vec4<bool>(22200u != firstLeadingBit(u_input.a | u_input.a), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(4294967295u, arg_1.x, 77725u, u_input.a)), select(select(vec4<u32>(arg_1.x, 4294967295u, arg_1.x, arg_1.x), vec4<u32>(4294967295u, 4294967295u, 1u, arg_1.x), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 12u)], true, global0[_wgslsmith_index_u32(6777u, 12u)])), ~vec4<u32>(arg_1.x, u_input.a, arg_1.x, arg_1.x), global0[_wgslsmith_index_u32(4294967295u, 12u)] || false)), 12u)], all(vec4<bool>(global0[_wgslsmith_index_u32(1u, 12u)], true, global0[_wgslsmith_index_u32(arg_1.x, 12u)], global0[_wgslsmith_index_u32(0u, 12u)])) == true, !select(false, !global0[_wgslsmith_index_u32(arg_1.x, 12u)], !global0[_wgslsmith_index_u32(88429u, 12u)])));
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> vec4<i32> {
    var var_0 = (vec4<i32>(u_input.c, 0i, abs(1i), abs(u_input.d.x)) ^ vec4<i32>(-23913i, -_wgslsmith_div_i32(2147483647i, u_input.e), _wgslsmith_mod_i32(1i, u_input.e) >> (_wgslsmith_div_u32(1u, arg_1) % 32u), u_input.d.x)) ^ u_input.d;
    let var_1 = 1633f;
    let var_2 = min(vec3<u32>(u_input.b, u_input.b, 20861u), abs(countOneBits(_wgslsmith_add_vec3_u32(abs(vec3<u32>(0u, 60784u, 1u)), vec3<u32>(u_input.a, 14400u, 39889u)))));
    global1 = array<Struct_2, 26>();
    global1 = array<Struct_2, 26>();
    return _wgslsmith_mult_vec4_i32(u_input.d ^ vec4<i32>(49718i, u_input.d.x, (-26102i ^ u_input.d.x) << (~u_input.b % 32u), _wgslsmith_mult_i32(u_input.e, 34455i)), ~max(countOneBits(_wgslsmith_sub_vec4_i32(u_input.d, vec4<i32>(var_0.x, 0i, -6925i, var_0.x))), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, -1i, 0i), vec3<i32>(34036i, 40599i, 1i)), abs(-29032i), _wgslsmith_add_i32(u_input.e, -11166i), _wgslsmith_mult_i32(u_input.e, var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 12>();
    var var_0 = _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(1i << (u_input.b % 32u), -8816i, 0i, abs(0i))) ^ abs(u_input.d), -func_4(func_1(vec3<i32>(u_input.c, 2147483647i, u_input.e), vec3<u32>(u_input.b, 0u, u_input.b)), 55785u) | ~u_input.d);
    var var_1 = func_3(vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(22597u, _wgslsmith_sub_u32(96275u, u_input.b)) >> (reverseBits(~10882u) % 32u), 12u)], global0[_wgslsmith_index_u32(~95258u, 12u)], global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, 0u >> (0u % 32u)) >> (_wgslsmith_div_u32(1u, u_input.b | u_input.b) % 32u), 12u)]), -42784i);
    let var_2 = true;
    var var_3 = global2.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(vec3<f32>(global2.a, global2.a, _wgslsmith_f_op_f32(-global2.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-865f * -2184f), _wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(min(var_1.b, global2.a))))));
}

