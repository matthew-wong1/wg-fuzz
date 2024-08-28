struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 156f;

var<private> global1: array<vec4<f32>, 18> = array<vec4<f32>, 18>(vec4<f32>(1978f, -1324f, 490f, 627f), vec4<f32>(369f, 834f, -1000f, -1169f), vec4<f32>(864f, -295f, -117f, 1049f), vec4<f32>(-592f, 1031f, -400f, 129f), vec4<f32>(225f, 528f, 1294f, -1461f), vec4<f32>(-169f, -1492f, -766f, 966f), vec4<f32>(3188f, 1130f, -397f, 1000f), vec4<f32>(1268f, 1685f, 476f, 454f), vec4<f32>(-307f, -404f, -773f, -2438f), vec4<f32>(188f, 742f, -1441f, -160f), vec4<f32>(468f, 1099f, -400f, -463f), vec4<f32>(1098f, -584f, -2281f, -1006f), vec4<f32>(2047f, -554f, 1224f, 2599f), vec4<f32>(2025f, 1145f, 508f, 1621f), vec4<f32>(351f, 810f, 983f, 867f), vec4<f32>(-1633f, 728f, -442f, 450f), vec4<f32>(433f, 616f, -617f, -248f), vec4<f32>(-292f, 220f, -216f, -206f));

var<private> global2: array<vec3<f32>, 9> = array<vec3<f32>, 9>(vec3<f32>(1372f, -555f, -520f), vec3<f32>(-863f, 804f, 776f), vec3<f32>(-472f, -935f, 1162f), vec3<f32>(-1105f, -249f, -858f), vec3<f32>(759f, -665f, -1030f), vec3<f32>(1155f, 100f, -1138f), vec3<f32>(-113f, -266f, -593f), vec3<f32>(-264f, 424f, 1509f), vec3<f32>(871f, -2258f, 2827f));

var<private> global3: array<bool, 22>;

var<private> global4: array<vec3<f32>, 20> = array<vec3<f32>, 20>(vec3<f32>(201f, 157f, -815f), vec3<f32>(494f, -1462f, -1710f), vec3<f32>(-155f, 180f, 1000f), vec3<f32>(291f, -1288f, 392f), vec3<f32>(427f, 1000f, -889f), vec3<f32>(-967f, 842f, 563f), vec3<f32>(337f, 801f, 319f), vec3<f32>(1252f, 139f, 115f), vec3<f32>(-971f, -581f, 1000f), vec3<f32>(425f, -1000f, -1805f), vec3<f32>(1232f, -758f, 1726f), vec3<f32>(940f, -1000f, 759f), vec3<f32>(-672f, -909f, -679f), vec3<f32>(1632f, -733f, 601f), vec3<f32>(-500f, 993f, 1504f), vec3<f32>(-616f, 1754f, 305f), vec3<f32>(976f, -1317f, 310f), vec3<f32>(-318f, 669f, 1000f), vec3<f32>(-1110f, 359f, 2857f), vec3<f32>(-1000f, -1193f, 314f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec2<u32> {
    global1 = array<vec4<f32>, 18>();
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(ceil(853f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1013f, 1335f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-935f, 1000f), vec2<f32>(762f, -815f)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1091f, 1153f))))), vec2<i32>(~(i32(-1i) * -20666i), -7550i), 0u, ~(~0i)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_clamp_u32(~u_input.a.x, u_input.a.x, ~u_input.a.x) | ((17436u & u_input.a.x) & (36531u & u_input.a.x))), 22u)]);
    let var_1 = _wgslsmith_mod_u32(u_input.a.x ^ 32021u, 3935u);
    var var_2 = var_0.a;
    global0 = var_2.b.x;
    return ~u_input.a.xy;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: u32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(379f, 2373f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(255f - -932f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-446f, -682f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1103f, 954f) * _wgslsmith_div_vec2_f32(vec2<f32>(1148f, 267f), vec2<f32>(276f, -489f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(136f, 835f)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1704f, -1165f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(342f, 561f)) - vec2<f32>(-1085f, 1423f)))), vec2<i32>(~1i, i32(-1i) * -2147483647i) >> (select(func_3(), ~vec2<u32>(42093u, arg_2), true) % vec2<u32>(32u)), min(u_input.a.x & arg_2, arg_2), -1i);
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x - 1517f) + var_0.b.x)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-654f, -269f, false)), _wgslsmith_f_op_f32(exp2(var_0.a)))), -723f)))));
    var var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(471f, var_0.a), _wgslsmith_f_op_f32(f32(-1f) * -810f)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a + var_0.a)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(var_0.a, _wgslsmith_f_op_f32(round(1363f)))), -1640f, any(vec4<bool>(arg_1.x, arg_1.x, global3[_wgslsmith_index_u32(0u, 22u)], true))))), _wgslsmith_f_op_vec2_f32(sign(var_0.b)), -countOneBits(firstTrailingBit(var_0.c)), (~42135u | _wgslsmith_dot_vec4_u32(select(vec4<u32>(3533u, 4294967295u, 4294967295u, 0u), vec4<u32>(var_0.d, 30149u, 13074u, var_0.d), false), vec4<u32>(arg_2, 5027u, var_0.d, arg_0.x) | vec4<u32>(u_input.a.x, var_0.d, 4294967295u, u_input.a.x))) >> (46525u % 32u), ~min(-2147483647i, 0i >> (0u % 32u)));
    let var_3 = ~4294967295u;
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-var_0.a), vec2<f32>(var_0.a, 193f), var_2.c, 1u, -1i);
    return var_4;
}

fn func_1(arg_0: vec3<f32>, arg_1: u32, arg_2: bool) -> Struct_1 {
    let var_0 = Struct_2(func_2(u_input.a, select(!select(vec3<bool>(false, true, global3[_wgslsmith_index_u32(37137u, 22u)]), vec3<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 22u)], arg_2, false), vec3<bool>(arg_2, false, global3[_wgslsmith_index_u32(0u, 22u)])), vec3<bool>(arg_2, arg_0.x < arg_0.x, true), true == !global3[_wgslsmith_index_u32(0u, 22u)]), _wgslsmith_sub_u32(firstTrailingBit(u_input.a.x), u_input.a.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x))), all(select(vec3<bool>(all(vec2<bool>(false, arg_2)), false, !global3[_wgslsmith_index_u32(4294967295u, 22u)]), !(!vec3<bool>(arg_2, true, true)), true)));
    var var_1 = -_wgslsmith_div_i32(abs(-2147483647i), -374i) << (arg_1 % 32u);
    global1 = array<vec4<f32>, 18>();
    var var_2 = vec4<bool>(arg_2 & global3[_wgslsmith_index_u32(56506u, 22u)], false, false, any(select(!vec4<bool>(global3[_wgslsmith_index_u32(var_0.a.d, 22u)], global3[_wgslsmith_index_u32(1u, 22u)], arg_2, false), vec4<bool>(true, true, true, true), false)));
    var var_3 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -158f)), var_0.b), vec2<f32>(arg_0.x, 1263f), ~(~(-var_0.a.c)), u_input.a.x, abs(select(max(37604i, var_0.a.c.x), -2147483647i << (var_0.a.d % 32u), any(vec4<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 22u)], var_2.x, false, var_2.x))))), 758f, global3[_wgslsmith_index_u32(~1u, 22u)]);
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(1261f, -247f), _wgslsmith_f_op_f32(step(-1000f, 1651f)), -741f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1676f, 1000f, 1060f)))), u_input.a.x, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-169f, -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -118f)), 317f)) + _wgslsmith_f_op_f32(-func_2(u_input.a, !vec3<bool>(global3[_wgslsmith_index_u32(14802u, 22u)], false, global3[_wgslsmith_index_u32(1u, 22u)]), abs(0u)).a)), true);
    global3 = array<bool, 22>();
    let var_1 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global4[_wgslsmith_index_u32(1u, 20u)])))))), var_0.a.d, !(_wgslsmith_mod_u32(var_0.a.d & 46929u, var_0.a.d) <= func_2(abs(u_input.a), !vec3<bool>(var_0.c, false, false), var_0.a.d).d));
    let var_2 = vec3<bool>(!(any(!vec3<bool>(var_0.c, global3[_wgslsmith_index_u32(10597u, 22u)], var_0.c)) == global3[_wgslsmith_index_u32(~var_1.d, 22u)]), false, var_0.c);
    var var_3 = var_1;
    global2 = array<vec3<f32>, 9>();
    var var_4 = u_input.a.x;
    var var_5 = select(!((_wgslsmith_f_op_f32(f32(-1f) * -408f) != _wgslsmith_f_op_f32(max(var_0.a.b.x, 1000f))) & true), all(select(vec3<bool>(var_2.x, all(vec2<bool>(false, true)), true), !(!vec3<bool>(true, global3[_wgslsmith_index_u32(var_1.d, 22u)], var_2.x)), 405f >= _wgslsmith_f_op_f32(-var_3.b.x))), false);
    global1 = array<vec4<f32>, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a);
}

