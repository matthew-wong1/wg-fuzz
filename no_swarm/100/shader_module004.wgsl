struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 10> = array<vec4<f32>, 10>(vec4<f32>(174f, 1563f, 1000f, 2376f), vec4<f32>(-1975f, -1821f, 457f, 434f), vec4<f32>(800f, 917f, -302f, 1110f), vec4<f32>(-1242f, -712f, -803f, 339f), vec4<f32>(1524f, 2349f, -145f, -611f), vec4<f32>(-966f, 2306f, -562f, -1462f), vec4<f32>(1271f, 449f, 242f, -848f), vec4<f32>(1205f, 1063f, 1482f, -1046f), vec4<f32>(-777f, -1901f, -1315f, -244f), vec4<f32>(-674f, 1390f, 1393f, -3463f));

var<private> global1: u32 = 57244u;

var<private> global2: Struct_1;

var<private> global3: array<i32, 12>;

var<private> global4: array<bool, 9> = array<bool, 9>(true, true, true, true, true, true, false, true, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1() -> u32 {
    let var_0 = !(!vec2<bool>(all(select(vec2<bool>(false, false), vec2<bool>(false, true), false)), true && (global2.b >= global2.b)));
    global3 = array<i32, 12>();
    var var_1 = ~vec3<i32>(u_input.c >> (u_input.a.x % 32u), -1i, 1i);
    global0 = array<vec4<f32>, 10>();
    var var_2 = Struct_1(max(_wgslsmith_div_vec2_u32(global2.a, _wgslsmith_add_vec2_u32(global2.a, vec2<u32>(global2.a.x, u_input.e))) ^ vec2<u32>(_wgslsmith_clamp_u32(u_input.a.x, 1u, global2.c), 2462u & u_input.a.x), vec2<u32>(0u, 4294967295u)), _wgslsmith_f_op_f32(-1363f - _wgslsmith_div_f32(global2.b, global2.b)), 0u);
    return ~4294967295u;
}

fn func_3() -> vec3<u32> {
    global2 = Struct_1(global2.a, _wgslsmith_div_f32(-835f, 615f), 66869u << (abs(firstLeadingBit(67986u)) % 32u));
    global2 = Struct_1(u_input.a.zx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.b, 832f)) * _wgslsmith_f_op_f32(f32(-1f) * -422f)), ~(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, u_input.e, 1u, u_input.a.x), _wgslsmith_mod_vec4_u32(vec4<u32>(29084u, 8324u, 1u, 0u), vec4<u32>(global2.a.x, 9358u, global2.a.x, u_input.a.x))) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(87485u, global2.c, 9752u, global2.a.x), reverseBits(vec4<u32>(global2.c, 66917u, u_input.e, 4294967295u))) % 32u)));
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b, 552f, _wgslsmith_f_op_f32(f32(-1f) * -1164f), 421f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(746f + -160f), -149f, -1476f, _wgslsmith_f_op_f32(409f - _wgslsmith_f_op_f32(-global2.b)))));
    let var_1 = vec4<i32>(~(-21691i), i32(-1i) * -max(-12622i, global3[_wgslsmith_index_u32(4974u, 12u)] >> (global2.c % 32u)), u_input.d << (~global2.a.x % 32u), -18814i ^ _wgslsmith_mod_i32(global3[_wgslsmith_index_u32(~u_input.e, 12u)], -31368i & (61074i & u_input.d)));
    let var_2 = global2.a.x;
    return select(vec3<u32>(~1u, ~(~(~u_input.e)), 1u), abs(abs((u_input.a >> (vec3<u32>(42136u, global2.c, 93668u) % vec3<u32>(32u))) & vec3<u32>(global2.a.x, u_input.e, 31438u))), global4[_wgslsmith_index_u32(~(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(53453u, 0u), global2.a), firstLeadingBit(0u)) & ~global2.a.x), 9u)]);
}

fn func_2(arg_0: i32, arg_1: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(359f + 1389f)), global2.b));
    var var_1 = Struct_1(_wgslsmith_mult_vec2_u32(global2.a, vec2<u32>(1u, ~u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1107f, _wgslsmith_f_op_f32(step(-413f, -205f)), true))), _wgslsmith_dot_vec3_u32(~u_input.a, ~func_3()) | func_1());
    var var_2 = select(vec3<bool>((arg_1 << (_wgslsmith_clamp_u32(global2.a.x, 0u, global2.a.x) % 32u)) < (arg_1 | firstTrailingBit(u_input.c)), countOneBits(1333u) > ~(~global2.a.x), global4[_wgslsmith_index_u32(_wgslsmith_div_u32(2158u, _wgslsmith_add_u32(4294967295u, var_1.a.x << (0u % 32u))), 9u)]), select(!select(select(vec3<bool>(false, global4[_wgslsmith_index_u32(global2.a.x, 9u)], true), vec3<bool>(false, global4[_wgslsmith_index_u32(10790u, 9u)], false), global4[_wgslsmith_index_u32(4294967295u, 9u)]), select(vec3<bool>(false, true, global4[_wgslsmith_index_u32(u_input.a.x, 9u)]), vec3<bool>(global4[_wgslsmith_index_u32(var_1.c, 9u)], global4[_wgslsmith_index_u32(var_1.c, 9u)], true), global4[_wgslsmith_index_u32(global2.a.x, 9u)]), !vec3<bool>(global4[_wgslsmith_index_u32(1u, 9u)], false, false)), !select(vec3<bool>(false, false, global4[_wgslsmith_index_u32(1u, 9u)]), vec3<bool>(global4[_wgslsmith_index_u32(global2.c, 9u)], true, global4[_wgslsmith_index_u32(var_1.a.x, 9u)]), false), !vec3<bool>(true, global4[_wgslsmith_index_u32(u_input.e, 9u)], global2.a.x > var_1.a.x)), all(select(vec4<bool>(true, false, global4[_wgslsmith_index_u32(global2.a.x >> (u_input.e % 32u), 9u)], global4[_wgslsmith_index_u32(u_input.a.x, 9u)] && true), vec4<bool>(global4[_wgslsmith_index_u32(global2.c, 9u)], true, any(vec3<bool>(global4[_wgslsmith_index_u32(5878u, 9u)], false, global4[_wgslsmith_index_u32(global2.a.x, 9u)])), var_1.b <= var_1.b), vec4<bool>(true, var_0.x < -833f, true, all(vec2<bool>(false, global4[_wgslsmith_index_u32(1u, 9u)]))))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-157f, -684f) - 989f) + var_1.b);
    global4 = array<bool, 9>();
    return _wgslsmith_mod_u32(~0u, abs(_wgslsmith_sub_u32(firstLeadingBit(115986u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, global2.a.x, u_input.a.x), ~vec4<u32>(var_1.a.x, var_1.c, 0u, u_input.e)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(firstTrailingBit(vec2<u32>(4294967295u, func_1())), _wgslsmith_f_op_f32(-global2.b), _wgslsmith_add_u32(_wgslsmith_mult_u32(~min(u_input.e, global2.a.x), global2.a.x), ~global2.a.x));
    let var_1 = 35167i;
    global1 = func_2(~_wgslsmith_div_i32(_wgslsmith_mod_i32(-1i, -2147483647i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(0u, 12u)], global3[_wgslsmith_index_u32(global2.a.x, 12u)], global3[_wgslsmith_index_u32(51578u, 12u)], var_1), vec4<i32>(var_1, global3[_wgslsmith_index_u32(u_input.e, 12u)], var_1, u_input.c)), ~(-1825i)), i32(-1i) * -23134i);
    let var_2 = select(vec4<bool>(all(select(vec3<bool>(true, true, global4[_wgslsmith_index_u32(u_input.e, 9u)]), !vec3<bool>(false, false, global4[_wgslsmith_index_u32(16720u, 9u)]), select(vec3<bool>(true, global4[_wgslsmith_index_u32(39826u, 9u)], global4[_wgslsmith_index_u32(var_0.c, 9u)]), vec3<bool>(global4[_wgslsmith_index_u32(u_input.e, 9u)], global4[_wgslsmith_index_u32(global2.a.x, 9u)], false), vec3<bool>(global4[_wgslsmith_index_u32(u_input.e, 9u)], false, true)))), true, true, global2.b <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b) * 1f)), select(vec4<bool>(!global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(102051u, global2.c), 9u)], !(false || global4[_wgslsmith_index_u32(1u, 9u)]), any(vec3<bool>(global4[_wgslsmith_index_u32(51346u, 9u)], global4[_wgslsmith_index_u32(var_0.c, 9u)], true)), false), vec4<bool>(true == global4[_wgslsmith_index_u32(var_0.c & 9321u, 9u)], any(select(vec4<bool>(true, false, global4[_wgslsmith_index_u32(u_input.a.x, 9u)], global4[_wgslsmith_index_u32(26916u, 9u)]), vec4<bool>(true, false, false, false), global4[_wgslsmith_index_u32(global2.a.x, 9u)])), true, any(vec3<bool>(true, true, false))), _wgslsmith_div_f32(var_0.b, 1036f) != -709f), select(select(!vec4<bool>(global4[_wgslsmith_index_u32(53304u, 9u)], global4[_wgslsmith_index_u32(1u, 9u)], global4[_wgslsmith_index_u32(var_0.c, 9u)], false), vec4<bool>(0u < global2.a.x, !global4[_wgslsmith_index_u32(85048u, 9u)], global4[_wgslsmith_index_u32(global2.c, 9u)], true), true), select(!(!vec4<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 9u)], true, global4[_wgslsmith_index_u32(var_0.c, 9u)], global4[_wgslsmith_index_u32(4294967295u, 9u)])), select(select(vec4<bool>(false, global4[_wgslsmith_index_u32(global2.a.x, 9u)], false, true), vec4<bool>(true, false, global4[_wgslsmith_index_u32(var_0.a.x, 9u)], global4[_wgslsmith_index_u32(global2.c, 9u)]), vec4<bool>(global4[_wgslsmith_index_u32(global2.c, 9u)], false, global4[_wgslsmith_index_u32(40349u, 9u)], global4[_wgslsmith_index_u32(4294967295u, 9u)])), vec4<bool>(global4[_wgslsmith_index_u32(global2.c, 9u)], false, false, global4[_wgslsmith_index_u32(34488u, 9u)]), true), vec4<bool>(true, global4[_wgslsmith_index_u32(20305u, 9u)], global4[_wgslsmith_index_u32(4294967295u, 9u)], true || global4[_wgslsmith_index_u32(4294967295u, 9u)])), select(!vec4<bool>(true, true, true, global4[_wgslsmith_index_u32(26494u, 9u)]), vec4<bool>(true, 4294967295u != global2.a.x, false, global4[_wgslsmith_index_u32(4294967295u, 9u)] | true), select(!vec4<bool>(global4[_wgslsmith_index_u32(global2.a.x, 9u)], false, false, false), select(vec4<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 9u)], true, global4[_wgslsmith_index_u32(54710u, 9u)], global4[_wgslsmith_index_u32(61413u, 9u)]), vec4<bool>(false, false, global4[_wgslsmith_index_u32(1u, 9u)], false), vec4<bool>(false, global4[_wgslsmith_index_u32(var_0.a.x, 9u)], false, global4[_wgslsmith_index_u32(55272u, 9u)])), !vec4<bool>(true, false, global4[_wgslsmith_index_u32(1u, 9u)], global4[_wgslsmith_index_u32(u_input.e, 9u)])))));
    var var_3 = 666f;
    global4 = array<bool, 9>();
    let var_4 = Struct_1(~((reverseBits(var_0.a) << (~u_input.a.xy % vec2<u32>(32u))) | var_0.a), -383f, func_2(-u_input.c, select(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1, 0i), vec2<i32>(u_input.b, u_input.c) ^ vec2<i32>(-18059i, u_input.c)), ~u_input.c == firstLeadingBit(var_1))));
    var_3 = -900f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_add_i32(-4889i, global3[_wgslsmith_index_u32(firstLeadingBit(17623u), 12u)]), u_input.c << (var_4.c % 32u), global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(global2.a.x, 92175u, global2.c), 12u)], _wgslsmith_dot_vec2_i32(abs(vec2<i32>(global3[_wgslsmith_index_u32(60350u, 12u)], 7111i)), abs(vec2<i32>(42924i, var_1)))), ~countOneBits(select(vec4<i32>(2147483647i, -10606i, -3517i, -1i), vec4<i32>(-28195i, 28648i, -2147483647i, u_input.d), vec4<bool>(false, false, true, global4[_wgslsmith_index_u32(var_0.c, 9u)])))), 0i, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -519f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.b + -1509f)))))));
}

