struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: f32,
    d: bool,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(Struct_1(vec4<f32>(-1203f, 998f, -1144f, 403f), false, 1486f, true, vec2<bool>(true, true)), vec4<i32>(i32(-2147483648), 46114i, -87387i, i32(-2147483648)), Struct_1(vec4<f32>(-320f, -963f, -1582f, 807f), true, -884f, false, vec2<bool>(false, true))), Struct_2(Struct_1(vec4<f32>(621f, -364f, -1358f, 185f), false, 511f, false, vec2<bool>(false, false)), vec4<i32>(2147483647i, 1464i, 31256i, -1i), Struct_1(vec4<f32>(911f, 424f, -1130f, 838f), false, -2346f, false, vec2<bool>(false, true))), Struct_2(Struct_1(vec4<f32>(-749f, -1496f, 1183f, 350f), true, 446f, false, vec2<bool>(false, true)), vec4<i32>(61601i, -36110i, -2766i, 17307i), Struct_1(vec4<f32>(-707f, -1161f, -109f, -1693f), false, 645f, true, vec2<bool>(false, true))));

var<private> global1: array<vec2<f32>, 24> = array<vec2<f32>, 24>(vec2<f32>(1175f, 867f), vec2<f32>(227f, -1400f), vec2<f32>(-1090f, 666f), vec2<f32>(-876f, -1775f), vec2<f32>(1670f, -1087f), vec2<f32>(2174f, 528f), vec2<f32>(1496f, -842f), vec2<f32>(-1813f, 1744f), vec2<f32>(1000f, 1268f), vec2<f32>(-1653f, -936f), vec2<f32>(-126f, 2260f), vec2<f32>(-405f, -655f), vec2<f32>(-1248f, 1046f), vec2<f32>(1064f, -140f), vec2<f32>(365f, -356f), vec2<f32>(104f, 1000f), vec2<f32>(789f, -717f), vec2<f32>(-797f, 334f), vec2<f32>(1000f, 1452f), vec2<f32>(1000f, -1604f), vec2<f32>(498f, -325f), vec2<f32>(-197f, 461f), vec2<f32>(1867f, 770f), vec2<f32>(670f, -1028f));

var<private> global2: array<bool, 10> = array<bool, 10>(false, true, true, true, false, false, false, true, false, false);

var<private> global3: array<f32, 27>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(~0u, 3u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_0.c.a.zy)) + vec2<f32>(_wgslsmith_f_op_f32(trunc(-223f)), 495f))));
    var var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a.a.zyz) + var_0.c.a.wzx)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1438f, 105f, -865f) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.a.x, 836f, var_0.a.c) - var_0.a.a.zzx)))))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(reverseBits(58906u), 27u)], _wgslsmith_f_op_f32(f32(-1f) * -592f), -1383f, _wgslsmith_f_op_f32(abs(var_2.x))))), var_0.c.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.x + var_1.x))), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 27u)] * -236f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.c.c))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(2212f, _wgslsmith_f_op_f32(f32(-1f) * -415f), false == var_0.c.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + global3[_wgslsmith_index_u32(82461u, 27u)])) <= -864f, var_0.c.e);
    let var_4 = var_0.c;
    return 1u;
}

fn func_2(arg_0: vec2<bool>) -> Struct_2 {
    global2 = array<bool, 10>();
    var var_0 = global2[_wgslsmith_index_u32(4294967295u, 10u)];
    global1 = array<vec2<f32>, 24>();
    let var_1 = global3[_wgslsmith_index_u32(4294967295u, 27u)];
    let var_2 = vec3<u32>(_wgslsmith_div_u32(firstLeadingBit(17745u), _wgslsmith_sub_u32(func_3(), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(4294967295u, 4294967295u)))), countOneBits(1u), 4294967295u);
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(1u, 27u)], global3[_wgslsmith_index_u32(var_2.x, 27u)], 143f, 381f)))), false != (~var_2.x <= reverseBits(1u)), global3[_wgslsmith_index_u32(~(~59313u), 27u)], true, arg_0), -vec4<i32>(countOneBits(u_input.a.x), _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, u_input.a.x)), ~u_input.a.x, 1i) & (countOneBits(reverseBits(vec4<i32>(u_input.a.x, 2147483647i, 43012i, 17879i))) & vec4<i32>(-43032i, u_input.a.x ^ 0i, u_input.a.x, i32(-1i) * -15795i)), Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3[_wgslsmith_index_u32(0u, 27u)], -1962f, _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(var_2.x, 27u)], -652f)), _wgslsmith_f_op_f32(max(599f, -389f))), vec4<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(16218u, 27u)]), global3[_wgslsmith_index_u32(max(var_2.x, var_2.x), 27u)], _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(57047u, 27u)]), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(13683u, 0u, 1u, var_2.x), vec4<u32>(var_2.x, 41836u, 35730u, 27082u)), 27u)]), vec4<bool>(true | global2[_wgslsmith_index_u32(1u, 10u)], true, false, arg_0.x & global2[_wgslsmith_index_u32(35322u, 10u)]))), all(!(!vec4<bool>(global2[_wgslsmith_index_u32(15177u, 10u)], true, true, true))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(6211u << (var_2.x % 32u), 27u)] * _wgslsmith_f_op_f32(412f + -774f)), global3[_wgslsmith_index_u32(max(~4294967295u, ~var_2.x), 27u)], true)), false, vec2<bool>(true, arg_0.x)));
}

fn func_1(arg_0: i32, arg_1: f32) -> Struct_1 {
    var var_0 = func_2(!(!vec2<bool>(false, global2[_wgslsmith_index_u32(23731u, 10u)] || false)));
    let var_1 = !(!all(vec3<bool>(all(vec4<bool>(true, false, global2[_wgslsmith_index_u32(0u, 10u)], false)), true, true)));
    global1 = array<vec2<f32>, 24>();
    let var_2 = var_0.c;
    var_0 = global0[_wgslsmith_index_u32(abs(firstTrailingBit(reverseBits(1u)) << (23305u % 32u)), 3u)];
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.a.c, 432f, -281f, 1000f)))))), false, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), true, vec2<bool>(false, true));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = reverseBits(vec2<u32>(countOneBits(72928u & func_3()), 1u));
    var_0 = vec2<u32>(func_3(), var_0.x);
    var var_1 = firstTrailingBit(_wgslsmith_mod_vec3_i32(arg_0.b.zwx, firstLeadingBit(~arg_0.b.zzy)));
    let var_2 = min(~min(0u, _wgslsmith_mult_u32(var_0.x, select(1u, 1720u, arg_0.a.b))), var_0.x);
    global1 = array<vec2<f32>, 24>();
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_2(func_1(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(33849u, 27u)]) * global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 34917u, 9103u, 6317u), vec4<u32>(1u, 4294967295u, 4294967295u, 36638u)), 27u)])), select(vec4<i32>(_wgslsmith_mult_i32(-8795i, 0i), -2147483647i, -20714i, ~2147483647i), firstLeadingBit(-vec4<i32>(10333i, u_input.a.x, 2147483647i, 37820i)), true), func_1(reverseBits(-u_input.a.x), 124f)));
    global2 = array<bool, 10>();
    global1 = array<vec2<f32>, 24>();
    let var_1 = u_input.a.x;
    var var_2 = var_0.a.x;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(func_2(select(vec2<bool>(global2[_wgslsmith_index_u32(63359u, 10u)], global2[_wgslsmith_index_u32(58175u, 10u)]), !vec2<bool>(var_0.d, true), !global2[_wgslsmith_index_u32(29593u, 10u)])).c.a.x)));
    var var_4 = !vec3<bool>(select(var_0.b, true, false), all(var_0.e), false);
    global3 = array<f32, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_0.c, _wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -158f), func_4(Struct_2(var_0, vec4<i32>(49840i, u_input.a.x, 2147483647i, -10579i), var_0)).c, _wgslsmith_f_op_f32(var_0.a.x * var_0.a.x), _wgslsmith_div_f32(global3[_wgslsmith_index_u32(75529u, 27u)], var_3)) + func_1(min(u_input.a.x, 49856i), -1456f).a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1239f, 427f, 443f, -265f) * vec4<f32>(var_0.a.x, 169f, -1481f, var_3)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a) - var_0.a)))), var_1 & -u_input.a.x);
}

