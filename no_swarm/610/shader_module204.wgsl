struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28> = array<f32, 28>(-614f, 174f, 654f, 622f, 279f, 312f, 1057f, -304f, 204f, 183f, 316f, -213f, 1026f, 451f, 326f, -1364f, -1567f, -328f, -989f, 1314f, 305f, -204f, 869f, -1961f, 277f, 176f, 1311f, -149f);

var<private> global1: Struct_1 = Struct_1(vec2<f32>(392f, 1000f), vec4<bool>(true, false, false, true), -1000f, -1000f);

var<private> global2: vec4<u32>;

var<private> global3: array<f32, 24> = array<f32, 24>(-484f, -237f, 334f, -1519f, 176f, -257f, -120f, 1705f, 240f, -520f, -528f, 844f, 168f, -2608f, -1241f, -815f, 363f, 479f, 191f, -250f, -1558f, -2016f, -985f, -155f);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec2<f32> {
    var var_0 = select(!arg_1.b.zyw, select(global1.b.yxz, select(vec3<bool>(true, true, true), !vec3<bool>(arg_1.b.x, arg_1.b.x, true), true), u_input.b.x == 73772i), !arg_1.b.yzw);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -1714f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(u_input.e, 28u)]) + arg_1.a)))));
    global0 = array<f32, 28>();
    var_0 = vec3<bool>(!arg_1.b.x, any(select(select(vec2<bool>(false, true), vec2<bool>(var_0.x, arg_1.b.x), global1.b.xx), !select(arg_1.b.yz, vec2<bool>(true, false), vec2<bool>(var_0.x, false)), !select(vec2<bool>(arg_1.b.x, false), global1.b.xw, arg_1.b.zw))), true || (firstTrailingBit(u_input.e) < u_input.e));
    let var_2 = Struct_1(global1.a, !select(!select(vec4<bool>(global1.b.x, var_0.x, global1.b.x, false), global1.b, global1.b), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, var_0.x, true), vec4<bool>(false, arg_1.b.x, false, global1.b.x), arg_1.b), !vec4<bool>(arg_1.b.x, true, false, arg_1.b.x), false)), arg_1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.e, 68801u), 24u)] * _wgslsmith_f_op_f32(917f * arg_1.c)))));
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x - arg_1.a.x)), -1336f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1810f, global1.a.x), -1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(arg_1.a.x)), _wgslsmith_f_op_f32(244f - arg_1.c), u_input.b.x < u_input.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<f32>, arg_3: vec3<i32>) -> bool {
    global0 = array<f32, 28>();
    let var_0 = -506f;
    var var_1 = arg_0;
    var var_2 = u_input.d.x;
    let var_3 = arg_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_3.a.x))) <= arg_2.x;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: vec3<bool>) -> f32 {
    let var_0 = func_4(Struct_1(_wgslsmith_f_op_vec2_f32(func_3(global3[_wgslsmith_index_u32(u_input.a.x, 24u)], Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-658f, 101f) - vec2<f32>(-1115f, -307f)), select(global1.b, vec4<bool>(arg_0.x, true, true, false), vec4<bool>(true, global1.b.x, false, false)), _wgslsmith_f_op_f32(global1.d * global0[_wgslsmith_index_u32(43886u, 28u)]), global3[_wgslsmith_index_u32(abs(4294967295u), 24u)]))), global1.b, _wgslsmith_f_op_f32(f32(-1f) * -1377f), -1851f), ~(~_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a.xy, global2.wz), firstTrailingBit(vec2<u32>(u_input.e, u_input.e)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(847f, global0[_wgslsmith_index_u32(57893u, 28u)], -529f, global0[_wgslsmith_index_u32(u_input.a.x, 28u)]) + vec4<f32>(-1000f, global1.a.x, global0[_wgslsmith_index_u32(0u, 28u)], -968f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-977f, global0[_wgslsmith_index_u32(4294967295u, 28u)], -1655f, 1338f), vec4<f32>(global3[_wgslsmith_index_u32(global2.x, 24u)], 764f, global3[_wgslsmith_index_u32(global2.x, 24u)], -769f))))))), true)), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(34237i, u_input.d.x, 32020i, arg_1.x)), _wgslsmith_mod_i32(u_input.d.x, arg_1.x), 58791i), max(u_input.b, vec3<i32>(u_input.d.x, -7112i, 45834i)) ^ vec3<i32>(arg_1.x, -1i, arg_1.x), select(select(vec3<i32>(arg_1.x, -2147483647i, u_input.d.x), vec3<i32>(88803i, arg_1.x, 54341i), arg_2), arg_1, vec3<bool>(true, true, global1.b.x))) | -(~vec3<i32>(2147483647i, 38879i, 2147483647i)));
    let var_1 = (~arg_1.x >> ((_wgslsmith_div_u32(~1u, global2.x) << (~u_input.a.x % 32u)) % 32u)) << (_wgslsmith_sub_u32(4294967295u, u_input.a.x | min(~global2.x, _wgslsmith_clamp_u32(global2.x, u_input.c, global2.x))) % 32u);
    let var_2 = Struct_1(global1.a, global1.b, -1000f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1301f)), 405f), global1.a.x)));
    var var_3 = var_2;
    var var_4 = reverseBits(_wgslsmith_mult_u32(_wgslsmith_div_u32(1u, countOneBits(~u_input.c)), _wgslsmith_mod_u32(global2.x, ~(~u_input.e))));
    return 2040f;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(global1.a + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.a))), vec4<bool>(!(!(global1.b.x & global1.b.x)), false, false, (global2.x != 4294967295u) || global1.b.x), global1.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<bool>(global1.b.x, false), -vec3<i32>(1i, u_input.b.x, u_input.d.x), select(global1.b.xyx, vec3<bool>(false, true, true), global1.b.xwy)))))));
    global3 = array<f32, 24>();
    let var_1 = Struct_1(var_0.a, var_0.b, _wgslsmith_f_op_f32(func_2(!select(!vec2<bool>(global1.b.x, global1.b.x), global1.b.yx, true), (reverseBits(u_input.b) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(2134u, global2.x, 4294967295u), global2.xxx) % vec3<u32>(32u))) ^ vec3<i32>(0i, _wgslsmith_div_i32(u_input.b.x, -2147483647i), 1i), select(!select(vec3<bool>(var_0.b.x, global1.b.x, false), var_0.b.wxy, var_0.b.zwx), var_0.b.xxw, select(!var_0.b.ywz, vec3<bool>(false, global1.b.x, false), global1.b.yxw)))), _wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(global2.x, 24u)])));
    var var_2 = var_0;
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_1.a)))) - var_0.a), select(var_1.b, !var_0.b, select(var_2.b, select(vec4<bool>(global1.b.x, var_1.b.x, var_1.b.x, var_1.b.x), var_0.b, select(var_1.b, vec4<bool>(true, false, true, false), true)), !var_0.b.x && (4294967295u <= u_input.e))), _wgslsmith_f_op_f32(round(var_1.c)), global0[_wgslsmith_index_u32(43796u, 28u)]);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global2 = vec4<u32>(~(1u & u_input.c), _wgslsmith_clamp_u32(u_input.a.x, u_input.e ^ u_input.a.x, _wgslsmith_sub_u32(16895u, 0u)), global2.x, _wgslsmith_mult_u32(u_input.a.x, ~(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, global2.x, 4294967295u), global2.zyz) | select(51549u, global2.x, true))));
    global2 = vec4<u32>(~(~_wgslsmith_mult_u32(0u, 10073u)), ~(global2.x | _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, 85777u, 0u, 28513u), abs(vec4<u32>(22949u, global2.x, u_input.a.x, global2.x)))), countOneBits(50324u), ~0u);
    var var_1 = abs(abs(u_input.a));
    global0 = array<f32, 28>();
    let var_2 = func_1().b.zxz;
    var_1 = u_input.a;
    global1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(542f, var_0.c) * _wgslsmith_f_op_f32(floor(-1301f)))), 1060f), !vec4<bool>(true, !any(var_0.b.zzx), !(global3[_wgslsmith_index_u32(u_input.e, 24u)] >= 1000f), true), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~abs(~vec4<u32>(520u, 4294967295u, 31351u, u_input.c)), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(2050u, u_input.c, u_input.e, 19940u), abs(vec4<u32>(0u, 26294u, u_input.e, var_1.x))), _wgslsmith_clamp_vec4_u32(vec4<u32>(6935u, global2.x, global2.x, u_input.a.x), vec4<u32>(1u, u_input.e, 4294967295u, 1u) >> (vec4<u32>(u_input.e, u_input.a.x, 1u, var_1.x) % vec4<u32>(32u)), ~vec4<u32>(23995u, 3104u, 24618u, u_input.c)))), 28u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -697f)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, 8026u, vec3<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(59269i, 8795i, 6816i, u_input.d.x), u_input.d ^ vec4<i32>(u_input.d.x, -16403i, 17405i, 1i), vec4<bool>(true, true, global1.b.x, global1.b.x)), firstTrailingBit(select(u_input.d, u_input.d, var_2.x))), -u_input.d.x, u_input.b.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~0u, 28u)] - var_0.a.x))));
}

