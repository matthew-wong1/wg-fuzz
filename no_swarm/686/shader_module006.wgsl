struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6>;

var<private> global1: i32;

var<private> global2: array<vec2<f32>, 16>;

var<private> global3: array<i32, 29> = array<i32, 29>(-22527i, -33782i, -1i, 2147483647i, 2147483647i, 15039i, -20986i, -1i, 2147483647i, -40277i, i32(-2147483648), i32(-2147483648), 42503i, 2147483647i, i32(-2147483648), 1i, -10707i, 2147483647i, 7527i, -8114i, 0i, -106844i, 25488i, 19045i, -12102i, 39910i, 20871i, 1i, 2147483647i);

var<private> global4: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(true, true, false, false)), vec2<bool>(false, true), Struct_2(Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(false, false, false, true)), vec4<f32>(-278f, 1000f, -333f, 901f), vec3<f32>(2836f, -800f, -2708f))), Struct_3(Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(false, true, true, false)), vec2<bool>(false, true), Struct_2(Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(true, true, false, false)), vec4<f32>(-982f, 105f, -626f, -1410f), vec3<f32>(2047f, -838f, -1360f))), Struct_3(Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(true, false, true, true)), vec2<bool>(false, true), Struct_2(Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(false, true, true, false)), vec4<f32>(-507f, -1832f, 1000f, -105f), vec3<f32>(1182f, -2712f, -1049f))), Struct_3(Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(true, false, false, false)), vec2<bool>(false, true), Struct_2(Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(true, true, true, false)), vec4<f32>(-371f, 1534f, -328f, -1266f), vec3<f32>(726f, -934f, -609f))), Struct_3(Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(false, true, false, true)), vec2<bool>(false, true), Struct_2(Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(true, true, true, false)), Struct_1(vec4<bool>(true, false, true, false)), vec4<f32>(-780f, 1000f, -655f, -1844f), vec3<f32>(868f, 448f, 1058f))), Struct_3(Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(false, false, false, true)), vec2<bool>(false, false), Struct_2(Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(false, false, false, false)), vec4<f32>(786f, -1719f, 1806f, -463f), vec3<f32>(1876f, 415f, -1000f))), Struct_3(Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(false, false, false, false)), vec2<bool>(false, true), Struct_2(Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(true, true, false, false)), vec4<f32>(2453f, -1000f, 727f, -1554f), vec3<f32>(-834f, -2150f, -377f))), Struct_3(Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(false, false, true, false)), vec2<bool>(false, false), Struct_2(Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(true, false, true, false)), vec4<f32>(-1010f, -998f, 944f, -329f), vec3<f32>(772f, -840f, 2453f))), Struct_3(Struct_1(vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(true, false, true, false)), vec2<bool>(false, false), Struct_2(Struct_1(vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(true, false, false, false)), vec4<f32>(-287f, 809f, 493f, -316f), vec3<f32>(-1000f, -652f, 600f))), Struct_3(Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(false, false, false, false)), vec2<bool>(true, false), Struct_2(Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(true, true, true, false)), vec4<f32>(-1161f, -381f, -1074f, -484f), vec3<f32>(-426f, -116f, 1719f))), Struct_3(Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(false, true, true, false)), vec2<bool>(true, false), Struct_2(Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(true, false, false, false)), vec4<f32>(-1184f, -1536f, -2803f, 173f), vec3<f32>(-495f, 1000f, -1604f))), Struct_3(Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(true, true, false, false)), vec2<bool>(false, false), Struct_2(Struct_1(vec4<bool>(true, true, true, false)), Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(false, false, false, true)), vec4<f32>(1002f, 1654f, 596f, -790f), vec3<f32>(-339f, -2766f, -780f))), Struct_3(Struct_1(vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(false, false, true, false)), vec2<bool>(true, false), Struct_2(Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(false, true, false, true)), Struct_1(vec4<bool>(false, true, false, false)), vec4<f32>(1332f, -1110f, 240f, -361f), vec3<f32>(964f, -318f, 871f))), Struct_3(Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(false, false, false, true)), vec2<bool>(false, false), Struct_2(Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(false, false, true, false)), vec4<f32>(421f, -172f, -718f, 1000f), vec3<f32>(1350f, 1000f, 1148f))), Struct_3(Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(true, true, true, true)), vec2<bool>(true, true), Struct_2(Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(true, true, false, true)), vec4<f32>(230f, -140f, -1064f, -947f), vec3<f32>(-642f, -431f, -571f))), Struct_3(Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(true, false, true, false)), vec2<bool>(false, false), Struct_2(Struct_1(vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(false, false, false, false)), Struct_1(vec4<bool>(true, false, false, false)), vec4<f32>(147f, -1000f, 644f, 2006f), vec3<f32>(801f, 1656f, -302f))), Struct_3(Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(false, false, false, false)), vec2<bool>(false, false), Struct_2(Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(true, false, true, true)), vec4<f32>(-704f, -362f, -939f, 395f), vec3<f32>(-527f, -650f, 237f))), Struct_3(Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(true, true, true, false)), vec2<bool>(false, true), Struct_2(Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(true, false, false, false)), vec4<f32>(698f, 630f, 1935f, 1029f), vec3<f32>(281f, 364f, -489f))), Struct_3(Struct_1(vec4<bool>(false, false, false, false)), Struct_1(vec4<bool>(true, true, true, true)), vec2<bool>(false, true), Struct_2(Struct_1(vec4<bool>(true, true, true, false)), Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(true, true, true, true)), vec4<f32>(-1281f, 798f, 3155f, 486f), vec3<f32>(-903f, -1054f, -838f))), Struct_3(Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(true, false, false, false)), vec2<bool>(false, false), Struct_2(Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(false, true, false, true)), vec4<f32>(2272f, -571f, -1338f, -1227f), vec3<f32>(450f, 1525f, -479f))), Struct_3(Struct_1(vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(true, true, true, false)), vec2<bool>(false, false), Struct_2(Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(false, false, false, true)), vec4<f32>(1861f, -554f, -1000f, 1250f), vec3<f32>(1331f, -2707f, -1639f))), Struct_3(Struct_1(vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(true, false, false, true)), vec2<bool>(false, false), Struct_2(Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(false, true, false, true)), vec4<f32>(-198f, -1414f, -891f, -1164f), vec3<f32>(1063f, 559f, -902f))), Struct_3(Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(true, false, true, false)), vec2<bool>(false, false), Struct_2(Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(false, true, true, true)), vec4<f32>(-165f, 2554f, 414f, 407f), vec3<f32>(1161f, -1000f, 1252f))), Struct_3(Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(false, false, true, false)), vec2<bool>(true, false), Struct_2(Struct_1(vec4<bool>(false, false, false, false)), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(false, true, true, true)), vec4<f32>(-1773f, -878f, -565f, 2210f), vec3<f32>(-1197f, -904f, 1000f))));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>) -> vec3<i32> {
    global4 = array<Struct_3, 24>();
    let var_0 = vec2<f32>(global0[_wgslsmith_index_u32(1513u, 6u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(905f)) + global0[_wgslsmith_index_u32(0u, 6u)]));
    let var_1 = u_input.b.x;
    var var_2 = !vec4<bool>(select(!(!arg_0.x), arg_0.x, !arg_0.x), any(arg_0.xw), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -178f), _wgslsmith_f_op_f32(370f + global0[_wgslsmith_index_u32(0u, 6u)]))) > _wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(var_1, 6u)]), select(any(arg_0.zwz), true, all(arg_0.wy) | true));
    global0 = array<f32, 6>();
    return u_input.c.yxz;
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: bool) -> f32 {
    let var_0 = Struct_3(arg_1, arg_1, !arg_1.a.xy, Struct_2(Struct_1(vec4<bool>(true, arg_1.a.x, true, u_input.b.x > 1u)), Struct_1(vec4<bool>(any(arg_1.a.yz), !arg_1.a.x, arg_2, arg_2 == arg_2)), arg_1, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 6u)], _wgslsmith_f_op_f32(ceil(-1521f)), -1929f, _wgslsmith_f_op_f32(floor(826f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0[_wgslsmith_index_u32(arg_0, 6u)], global0[_wgslsmith_index_u32(u_input.b.x, 6u)], -183f, -1176f))), arg_1.a)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 6u)], global0[_wgslsmith_index_u32(0u, 6u)], 172f))), vec3<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.b.x, 6u)], 1000f), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, u_input.b.x), 6u)], -1690f), 1u < ~arg_0))));
    let var_1 = !arg_1.a;
    let var_2 = var_0.b;
    var var_3 = _wgslsmith_mod_vec3_i32(min(vec3<i32>(~8942i, -38871i, global3[_wgslsmith_index_u32(u_input.b.x, 29u)]), select(func_3(select(var_0.b.a, var_2.a, arg_1.a.x)), _wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.a.x, 12390i, global3[_wgslsmith_index_u32(4294967295u, 29u)]), u_input.c.xxy), var_2.a.x)), u_input.c.yyx);
    let var_4 = ~min(arg_0, _wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0, 12724u, 0u, 13272u), vec4<u32>(arg_0, 1u, 4294967295u, 0u)), select(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, 4294967295u, 0u, 0u), vec4<u32>(arg_0, 1u, 4294967295u, 4294967295u)), vec4<u32>(4294967295u, 18428u, 0u, 19644u) << (vec4<u32>(arg_0, u_input.b.x, u_input.b.x, arg_0) % vec4<u32>(32u)), var_2.a)));
    return _wgslsmith_f_op_f32(387f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.d.e.x - -683f), _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(var_4, 6u)], global0[_wgslsmith_index_u32(46091u, 6u)], var_0.d.c.a.x)))))));
}

fn func_1() -> StorageBuffer {
    var var_0 = Struct_1(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true)), true), select(vec4<bool>(true, false, false, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), false), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(select(vec2<bool>(true, true), vec2<bool>(true, true), true))), _wgslsmith_sub_i32(-13903i, -global3[_wgslsmith_index_u32(u_input.b.x, 29u)]) == 0i));
    global0 = array<f32, 6>();
    let var_1 = select(any(var_0.a.yyz) || false, false, -15826i > global3[_wgslsmith_index_u32(0u, 29u)]);
    let var_2 = Struct_1(!vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 6u)] <= 699f, var_0.a.x, !var_1));
    var var_3 = var_2.a.yxy;
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_2(u_input.b.x, var_2, var_1)), _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(u_input.b.x, 6u)], -470f)), global0[_wgslsmith_index_u32(16548u, 6u)])))), _wgslsmith_add_i32(u_input.c.x, min(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 6794i, 1i, u_input.c.x), vec4<i32>(global3[_wgslsmith_index_u32(u_input.b.x, 29u)], global3[_wgslsmith_index_u32(u_input.b.x, 29u)], -2147483647i, global3[_wgslsmith_index_u32(4294967295u, 29u)])), reverseBits(countOneBits(global3[_wgslsmith_index_u32(4294967295u, 29u)])))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

