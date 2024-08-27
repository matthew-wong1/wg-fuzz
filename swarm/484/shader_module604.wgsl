struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: bool,
    d: bool,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: vec2<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(62951u, vec3<f32>(1269f, -363f, 420f), false, false, vec4<u32>(22563u, 14461u, 0u, 13609u)), Struct_1(0u, vec3<f32>(-359f, -900f, 276f), true, false, vec4<u32>(4294967295u, 4294967295u, 17250u, 55521u)), Struct_1(0u, vec3<f32>(1441f, -1464f, -143f), true, false, vec4<u32>(0u, 1092u, 14086u, 1u)), Struct_1(4294967295u, vec3<f32>(-1017f, -201f, 472f), false, false, vec4<u32>(84916u, 37565u, 1u, 35465u)), Struct_1(41188u, vec3<f32>(-1435f, -1580f, 704f), true, false, vec4<u32>(0u, 1u, 0u, 82511u)), Struct_1(0u, vec3<f32>(-115f, 1000f, -1251f), false, true, vec4<u32>(11585u, 4294967295u, 1u, 1868u)), Struct_1(25202u, vec3<f32>(-701f, 768f, -1010f), false, true, vec4<u32>(5839u, 4294967295u, 5748u, 0u)), Struct_1(53004u, vec3<f32>(695f, -991f, -2483f), true, false, vec4<u32>(1092u, 49466u, 0u, 4294967295u)), Struct_1(29288u, vec3<f32>(1141f, -234f, 423f), true, false, vec4<u32>(0u, 75284u, 76900u, 1u)), Struct_1(63231u, vec3<f32>(-1701f, -1679f, -1850f), true, true, vec4<u32>(1u, 77548u, 22957u, 3874u)), Struct_1(23921u, vec3<f32>(-387f, -1917f, 1000f), false, true, vec4<u32>(89091u, 13789u, 45561u, 31558u)), Struct_1(60095u, vec3<f32>(797f, 682f, 1000f), true, true, vec4<u32>(20815u, 1u, 69353u, 6066u)), Struct_1(13942u, vec3<f32>(110f, 1331f, 626f), true, true, vec4<u32>(4294967295u, 1u, 24076u, 5753u)), Struct_1(1u, vec3<f32>(146f, -1460f, 1097f), false, true, vec4<u32>(1u, 56115u, 1508u, 0u)), Struct_1(0u, vec3<f32>(814f, -125f, -1229f), true, true, vec4<u32>(85678u, 4190u, 0u, 7908u)), Struct_1(107865u, vec3<f32>(1129f, 1053f, 258f), false, false, vec4<u32>(0u, 119866u, 1u, 13766u)), Struct_1(89875u, vec3<f32>(2464f, -1014f, 763f), false, true, vec4<u32>(1u, 0u, 121563u, 18626u)), Struct_1(4294967295u, vec3<f32>(-943f, -110f, -611f), true, false, vec4<u32>(1u, 8914u, 0u, 19942u)), Struct_1(1u, vec3<f32>(-1476f, 1000f, -451f), false, true, vec4<u32>(1u, 1u, 22856u, 1u)), Struct_1(4294967295u, vec3<f32>(-1184f, 849f, 1257f), false, false, vec4<u32>(0u, 4294967295u, 1u, 1u)), Struct_1(9183u, vec3<f32>(880f, -426f, -139f), true, true, vec4<u32>(1u, 1u, 27014u, 18591u)));

var<private> global1: array<bool, 32>;

var<private> global2: Struct_1 = Struct_1(0u, vec3<f32>(-416f, 1359f, 683f), false, false, vec4<u32>(0u, 4294967295u, 50155u, 24851u));

var<private> global3: Struct_1 = Struct_1(4294967295u, vec3<f32>(-1000f, 845f, 121f), true, true, vec4<u32>(4294967295u, 17948u, 0u, 1u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> bool {
    global0 = array<Struct_1, 21>();
    global2 = global0[_wgslsmith_index_u32(global2.e.x ^ ~4293u, 21u)];
    global1 = array<bool, 32>();
    let var_0 = all(vec4<bool>(global3.c, global1[_wgslsmith_index_u32(global2.a, 32u)], true, true));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(913f, 199f, 1000f)) - _wgslsmith_f_op_vec3_f32(-global2.b))))));
    return all(vec4<bool>(!(abs(3976u) > select(global3.e.x, global2.e.x, var_0)), !any(select(vec2<bool>(global3.d, global3.d), vec2<bool>(global2.d, true), false)), 1i < -(~u_input.a), !var_0));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    return 0u;
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.b.x, global3.b.x));
    let var_1 = Struct_1(~countOneBits(global2.e.x), _wgslsmith_f_op_vec3_f32(global2.b * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.b - global2.b), vec3<f32>(-1302f, -1428f, var_0)))), global3.a == (min(global2.e.x, firstLeadingBit(global2.a)) | global2.a), any(vec4<bool>(true, true, any(vec2<bool>(true, true)), select(48234u == global2.a, global2.c, true))), global3.e);
    let var_2 = u_input.a;
    return select(_wgslsmith_div_u32(func_4(4294967295u, true, var_1, Struct_1(0u, _wgslsmith_f_op_vec3_f32(-var_1.b), func_3(), true, ~vec4<u32>(64186u, global2.a, 22332u, 67468u))), 55118u), _wgslsmith_clamp_u32(var_1.a, global3.a, ~(~84407u)), global3.c);
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = vec2<i32>(u_input.a, u_input.a);
    var var_1 = -firstTrailingBit(~max(vec2<i32>(var_0.x, var_0.x), vec2<i32>(35107i, -37436i)));
    var var_2 = all(select(!select(!vec4<bool>(global2.d, true, true, false), !vec4<bool>(global2.d, false, global2.d, true), true), !(!select(vec4<bool>(global1[_wgslsmith_index_u32(global2.e.x, 32u)], global3.d, false, global2.d), vec4<bool>(true, true, global3.c, global3.d), global1[_wgslsmith_index_u32(20191u, 32u)])), all(select(vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(global3.a, 32u)]), select(vec4<bool>(global2.d, true, global2.d, global3.c), vec4<bool>(true, global1[_wgslsmith_index_u32(global2.a, 32u)], global3.d, true), vec4<bool>(false, global1[_wgslsmith_index_u32(25476u, 32u)], true, global3.c)), select(vec4<bool>(false, true, false, global3.c), vec4<bool>(true, false, global3.c, true), global3.d)))));
    let var_3 = u_input.a == var_0.x;
    var var_4 = 56815u >> (firstLeadingBit(firstLeadingBit(~global2.a & func_2())) % 32u);
    return global0[_wgslsmith_index_u32(~global3.a, 21u)];
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> vec4<u32> {
    global0 = array<Struct_1, 21>();
    global2 = global0[_wgslsmith_index_u32(~13890u, 21u)];
    global1 = array<bool, 32>();
    let var_0 = countOneBits(vec4<u32>(func_2(), arg_0.e.x, 9650u, func_1(arg_3.b.x).e.x));
    let var_1 = global3.d;
    return _wgslsmith_mod_vec4_u32(arg_0.e, global2.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(1u, global2.a, global3.a, _wgslsmith_add_u32(_wgslsmith_mod_u32(~global3.e.x | ~global2.a, _wgslsmith_dot_vec4_u32(global2.e, vec4<u32>(global2.e.x, 113674u, global2.a, 4294967295u) << (global3.e % vec4<u32>(32u)))), _wgslsmith_mod_u32(1u, ~reverseBits(global3.e.x))));
    global0 = array<Struct_1, 21>();
    var var_1 = vec4<bool>(!global2.d, !(!(!(false && global3.d))), global2.c, global3.d);
    let var_2 = select(func_5(Struct_1(_wgslsmith_div_u32(1417u, global2.e.x), vec3<f32>(-1000f, global3.b.x, global3.b.x), !var_1.x, true, var_0), global0[_wgslsmith_index_u32(~abs(9478u), 21u)], -1092f, func_1(-540f)), global2.e, select(select(vec4<bool>(false, false, var_1.x, var_1.x), !vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 32u)], true, var_1.x), select(vec4<bool>(var_1.x, true, true, global2.d), vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 32u)], false, true, global3.d), vec4<bool>(var_1.x, global1[_wgslsmith_index_u32(19237u, 32u)], true, var_1.x))), !vec4<bool>(global1[_wgslsmith_index_u32(0u, 32u)], true, true, var_1.x), !any(var_1.zx))) & abs(abs(global2.e));
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, var_0.x), 21u)];
    let var_3 = Struct_1(~abs(~0u) & var_2.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global2.b.x + 547f), 3592f, _wgslsmith_f_op_f32(global2.b.x + global3.b.x)) - _wgslsmith_f_op_vec3_f32(global3.b * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, global3.b.x, global3.b.x)))))), any(!vec4<bool>(true, global3.b.x >= global2.b.x, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(51622u, 4294967295u, var_0.x, var_0.x), var_2), 32u)], true)), false, vec4<u32>(max(var_2.x >> (var_0.x % 32u), ~(var_0.x | 101187u)), firstLeadingBit(max(global2.a, global3.e.x) & ~1u), abs(~abs(0u)), ~(~(global3.e.x ^ 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(select(vec2<u32>(27917u, global3.a), var_0.ww, global1[_wgslsmith_index_u32(var_3.a, 32u)]), ~vec2<u32>(1u, 0u)), var_2.zw), reverseBits(vec2<u32>(var_3.e.x, 95277u)), -1864f, global2.b.zz, _wgslsmith_f_op_vec2_f32(var_3.b.yy + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-260f, 950f), global2.b.xx))))));
}

