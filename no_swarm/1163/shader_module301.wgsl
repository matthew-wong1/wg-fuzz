struct Struct_1 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: f32,
    d: i32,
    e: vec3<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
    c: vec3<bool>,
    d: Struct_3,
}

struct Struct_5 {
    a: vec3<f32>,
    b: i32,
    c: Struct_2,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28> = array<f32, 28>(1000f, -1502f, -880f, -581f, -1201f, -338f, 2046f, 240f, 640f, 201f, -1203f, -1000f, 370f, -638f, -1258f, 2237f, 852f, 702f, -425f, 610f, 968f, -835f, -470f, -151f, 237f, -364f, 1000f, -299f);

var<private> global1: i32;

var<private> global2: array<vec3<i32>, 32>;

var<private> global3: array<Struct_5, 17> = array<Struct_5, 17>(Struct_5(vec3<f32>(-1640f, -152f, -1000f), 44899i, Struct_2(vec3<bool>(true, true, true)), vec2<i32>(-3907i, -28569i)), Struct_5(vec3<f32>(-1721f, 511f, 1054f), 33619i, Struct_2(vec3<bool>(false, false, false)), vec2<i32>(i32(-2147483648), 0i)), Struct_5(vec3<f32>(1000f, -1000f, -659f), 1i, Struct_2(vec3<bool>(false, false, false)), vec2<i32>(90i, 1i)), Struct_5(vec3<f32>(665f, 378f, 1053f), 34117i, Struct_2(vec3<bool>(false, false, true)), vec2<i32>(29779i, 10248i)), Struct_5(vec3<f32>(812f, -1000f, 199f), -1i, Struct_2(vec3<bool>(false, true, true)), vec2<i32>(2147483647i, -1i)), Struct_5(vec3<f32>(948f, 1000f, 997f), 0i, Struct_2(vec3<bool>(false, true, false)), vec2<i32>(2147483647i, 17713i)), Struct_5(vec3<f32>(558f, -741f, 306f), -30233i, Struct_2(vec3<bool>(false, false, true)), vec2<i32>(1i, -18740i)), Struct_5(vec3<f32>(1540f, 1031f, 498f), 2147483647i, Struct_2(vec3<bool>(true, true, true)), vec2<i32>(-1i, -1i)), Struct_5(vec3<f32>(1088f, -113f, 1000f), i32(-2147483648), Struct_2(vec3<bool>(true, false, false)), vec2<i32>(-1i, 2147483647i)), Struct_5(vec3<f32>(1350f, -812f, 254f), 1i, Struct_2(vec3<bool>(true, true, false)), vec2<i32>(1i, 16283i)), Struct_5(vec3<f32>(-100f, 375f, -1033f), 2147483647i, Struct_2(vec3<bool>(false, false, true)), vec2<i32>(i32(-2147483648), 3389i)), Struct_5(vec3<f32>(1335f, 232f, 270f), -20039i, Struct_2(vec3<bool>(true, false, false)), vec2<i32>(6457i, 1i)), Struct_5(vec3<f32>(-926f, -889f, -566f), 1i, Struct_2(vec3<bool>(true, false, false)), vec2<i32>(49451i, -26445i)), Struct_5(vec3<f32>(432f, 706f, -465f), 0i, Struct_2(vec3<bool>(true, false, false)), vec2<i32>(-18216i, -1i)), Struct_5(vec3<f32>(-671f, -999f, 1053f), 1i, Struct_2(vec3<bool>(true, false, false)), vec2<i32>(-10002i, 1i)), Struct_5(vec3<f32>(-443f, 1978f, 221f), 1i, Struct_2(vec3<bool>(true, true, false)), vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_5(vec3<f32>(1161f, 1365f, -692f), 2147483647i, Struct_2(vec3<bool>(true, false, false)), vec2<i32>(26609i, 0i)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> i32 {
    let var_0 = Struct_4(vec4<i32>(_wgslsmith_add_i32(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-8232i, 1270i, 0i), global2[_wgslsmith_index_u32(~u_input.c, 32u)])), _wgslsmith_dot_vec2_i32(min(vec2<i32>(1i, 1i), vec2<i32>(-11780i, -1i)), vec2<i32>(0i, 2147483647i)) | 1i, _wgslsmith_div_i32(~1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -19793i, 2942i, -1i), -vec4<i32>(-1i, -2147483647i, 10442i, -1i))), -10238i), Struct_3(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(347f, global0[_wgslsmith_index_u32(u_input.b.x, 28u)], global0[_wgslsmith_index_u32(59269u, 28u)], 398f), vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 28u)], 1000f, 1000f, global0[_wgslsmith_index_u32(18319u, 28u)])))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 28u)], 232f, -1183f, -996f)))), Struct_2(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-160f * _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(11482u, 28u)], -1478f, false)))), -1i, _wgslsmith_clamp_vec3_u32(vec3<u32>(~4294967295u, 1u, u_input.b.x), u_input.a, vec3<u32>(~33885u, _wgslsmith_mod_u32(u_input.b.x, u_input.c), u_input.a.x))), select(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), vec3<bool>(all(vec2<bool>(false, false)), false, any(vec3<bool>(true, true, true))), !(1u <= _wgslsmith_mult_u32(u_input.b.x, 0u))), Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 28u)], global0[_wgslsmith_index_u32(u_input.c, 28u)], 1175f, 1676f), vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(29277u, 28u)], -1239f, 898f)))), Struct_2(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true)), _wgslsmith_f_op_f32(max(441f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 28u)]), 1820f, all(vec3<bool>(true, true, false)))))), abs(min(0i, -57703i)), _wgslsmith_div_vec3_u32(u_input.a, u_input.a)));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.d.a.x))), 1215f)), _wgslsmith_f_op_f32(f32(-1f) * -644f));
    var var_2 = -674f;
    let var_3 = global0[_wgslsmith_index_u32(reverseBits(reverseBits(~(~4294967295u))), 28u)] != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1168f)) * global0[_wgslsmith_index_u32(~abs(_wgslsmith_add_u32(1u, u_input.b.x)), 28u)]);
    let var_4 = global3[_wgslsmith_index_u32(~(~(~13748u)), 17u)];
    return -abs(max(-17354i >> (0u % 32u), var_0.b.d)) << (max(u_input.b.x, 15836u) % 32u);
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: u32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 28u)] + 559f);
    var_0 = 1991f;
    global1 = ~_wgslsmith_dot_vec4_i32(vec4<i32>(~1i, 4174i >> (~4294967295u % 32u), -454i, -firstTrailingBit(2147483647i)), vec4<i32>(5576i, 1i, ~1i, func_3()));
    return Struct_4(~vec4<i32>(1i, func_3(), -50452i, -1i), Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1081f, global0[_wgslsmith_index_u32(u_input.c, 28u)], -1225f, global0[_wgslsmith_index_u32(22864u, 28u)]))), Struct_2(!(!vec3<bool>(false, arg_0, arg_0))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_2, 28u)] + 1863f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1108f, 627f))), all(vec2<bool>(arg_1, arg_1)))), firstLeadingBit(-61918i), _wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(u_input.b.x, u_input.b.x, abs(u_input.a.x)))), !vec3<bool>(arg_0, select(arg_1, arg_0 == false, true), any(select(vec2<bool>(true, false), vec2<bool>(arg_0, arg_1), arg_1))), Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-599f, 1034f, global0[_wgslsmith_index_u32(1u, 28u)], 1147f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1385f, 408f, global0[_wgslsmith_index_u32(arg_2, 28u)], -1000f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(371f, -2113f, 224f, -1424f) - vec4<f32>(2032f, global0[_wgslsmith_index_u32(7112u, 28u)], global0[_wgslsmith_index_u32(u_input.c, 28u)], -913f)))), Struct_2(select(vec3<bool>(true, true, arg_0), select(vec3<bool>(false, false, arg_1), vec3<bool>(true, false, true), vec3<bool>(arg_0, true, arg_1)), global0[_wgslsmith_index_u32(u_input.a.x, 28u)] >= 563f)), _wgslsmith_f_op_f32(sign(425f)), -14695i, ~u_input.b.zww));
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: Struct_5, arg_3: f32) -> vec2<bool> {
    var var_0 = arg_1.b;
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-311f, 1495f, arg_2.c.a.x | false))), _wgslsmith_f_op_f32(206f + _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(arg_1.b.e.x, 28u)])))));
    let var_2 = arg_1.b.e.x;
    var var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(arg_3, _wgslsmith_f_op_f32(-var_1.x), 737f, -107f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(15872u, 28u)], -290f, var_0.a.x, 649f), vec4<f32>(615f, 254f, 1933f, -315f)))));
    global2 = array<vec3<i32>, 32>();
    return !(!(!func_2(true, false, 1u).b.b.a.yy));
}

fn func_1() -> StorageBuffer {
    let var_0 = func_4(1i, func_2(!all(vec4<bool>(true, true, true, true)), true, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b.x, 63829u, u_input.c), u_input.b) | 4294967295u)), global3[_wgslsmith_index_u32(u_input.a.x, 17u)], func_2(2252u > ~u_input.c, true | func_2(any(vec4<bool>(true, true, false, true)), true, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 43316u, u_input.c), vec3<u32>(u_input.b.x, 0u, u_input.b.x))).b.b.a.x, 0u).d.c);
    global3 = array<Struct_5, 17>();
    var var_1 = 8426i;
    var var_2 = Struct_1(true, !select(!var_0, !select(vec2<bool>(false, false), vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, false)), false));
    var_2 = Struct_1(all(var_0), var_2.b);
    return StorageBuffer(1702u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 30654u;
    global2 = array<vec3<i32>, 32>();
    let var_1 = u_input.b.x;
    global2 = array<vec3<i32>, 32>();
    global2 = array<vec3<i32>, 32>();
    var var_2 = vec4<u32>(4294967295u, _wgslsmith_sub_u32(u_input.c, ~(_wgslsmith_mod_u32(u_input.c, 25310u) | _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(1u, var_1, 4294967295u)))), u_input.b.x, u_input.b.x);
    let x = u_input.a;
    s_output = func_1();
}

