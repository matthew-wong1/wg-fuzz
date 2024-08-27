struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24>;

var<private> global1: array<bool, 22>;

var<private> global2: array<Struct_2, 21>;

var<private> global3: array<vec3<f32>, 25> = array<vec3<f32>, 25>(vec3<f32>(462f, -290f, -1000f), vec3<f32>(-545f, -607f, -212f), vec3<f32>(-376f, 1315f, -1247f), vec3<f32>(-1702f, -1000f, 559f), vec3<f32>(-1819f, -113f, -1000f), vec3<f32>(431f, -1040f, -1000f), vec3<f32>(-236f, -174f, 1134f), vec3<f32>(-1000f, 287f, -715f), vec3<f32>(1810f, -444f, 833f), vec3<f32>(667f, -772f, 1356f), vec3<f32>(-423f, -389f, -926f), vec3<f32>(1241f, -229f, -380f), vec3<f32>(582f, 1035f, 1126f), vec3<f32>(697f, -2156f, 369f), vec3<f32>(-368f, -1344f, 1007f), vec3<f32>(-1256f, -414f, 1213f), vec3<f32>(1342f, -1000f, -309f), vec3<f32>(855f, 1000f, 631f), vec3<f32>(-473f, -1000f, -504f), vec3<f32>(-1680f, -770f, -1816f), vec3<f32>(-1623f, 377f, -1893f), vec3<f32>(-196f, 585f, 670f), vec3<f32>(643f, 338f, -1764f), vec3<f32>(155f, 883f, 1789f), vec3<f32>(662f, -236f, -149f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<bool>) -> Struct_3 {
    return Struct_3(Struct_2(u_input.c.yw, false, all(!vec3<bool>(arg_0.x, false, true))));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: u32) -> vec3<bool> {
    let var_0 = Struct_1(select(!select(select(vec4<bool>(arg_1.a.b, arg_1.a.c, arg_1.a.b, false), vec4<bool>(false, false, global1[_wgslsmith_index_u32(arg_1.a.a.x, 22u)], false), vec4<bool>(arg_1.a.c, arg_1.a.b, false, false)), vec4<bool>(arg_1.a.b, global1[_wgslsmith_index_u32(arg_2, 22u)], arg_1.a.b, arg_1.a.c), select(vec4<bool>(global1[_wgslsmith_index_u32(52032u, 22u)], false, global1[_wgslsmith_index_u32(arg_2, 22u)], false), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 22u)], global1[_wgslsmith_index_u32(4586u, 22u)], arg_1.a.c), vec4<bool>(global1[_wgslsmith_index_u32(11758u, 22u)], true, true, true))), select(!vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(1u, 22u)]), vec4<bool>(true, arg_1.a.c, true, any(vec3<bool>(false, false, arg_1.a.b))), !(!vec4<bool>(true, false, global1[_wgslsmith_index_u32(4294967295u, 22u)], true))), vec4<bool>(false, true, all(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 22u)], global1[_wgslsmith_index_u32(1u, 22u)], global1[_wgslsmith_index_u32(1u, 22u)], true)), true)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(max(arg_0.x, 101536u), 25u)]) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(5798u, 25u)]) - vec3<f32>(global0[_wgslsmith_index_u32(u_input.b, 24u)], global0[_wgslsmith_index_u32(arg_0.x, 24u)], global0[_wgslsmith_index_u32(arg_0.x, 24u)]))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(~arg_1.a.a.x, 25u)]), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global3[_wgslsmith_index_u32(1u, 25u)], global3[_wgslsmith_index_u32(1u, 25u)]) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-101f, global0[_wgslsmith_index_u32(20752u, 24u)], global0[_wgslsmith_index_u32(arg_2, 24u)]) + vec3<f32>(global0[_wgslsmith_index_u32(arg_2, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)], -339f)))), global1[_wgslsmith_index_u32(~1u, 22u)])), vec4<u32>(~(~(~37699u)), arg_2, ~u_input.a.x ^ 4294967295u, ~(~0u)));
    global2 = array<Struct_2, 21>();
    var var_1 = _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(0u, 24u)]));
    let var_2 = var_0.a.xz;
    var var_3 = var_0;
    return var_3.a.wzw;
}

fn func_4(arg_0: vec3<bool>) -> Struct_3 {
    global3 = array<vec3<f32>, 25>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(abs(-1503f)), 686f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 24u)] - -542f), -572f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], 928f, global0[_wgslsmith_index_u32(u_input.a.x, 24u)], 2407f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-123f, global0[_wgslsmith_index_u32(77070u, 24u)], -161f, global0[_wgslsmith_index_u32(u_input.c.x, 24u)]) * vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(u_input.b, 24u)], -1443f, 821f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], 329f, global0[_wgslsmith_index_u32(u_input.b, 24u)], global0[_wgslsmith_index_u32(1u, 24u)])) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(21214u, 24u)], global0[_wgslsmith_index_u32(1u, 24u)], 1141f, global0[_wgslsmith_index_u32(1u, 24u)]) + vec4<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 24u)], -795f, -609f, 814f))), vec4<bool>(func_2(arg_0.zy).a.c, false, any(arg_0), u_input.b >= 56411u)))));
    global2 = array<Struct_2, 21>();
    let var_1 = min((-13911i << (firstTrailingBit(u_input.b) % 32u)) | firstTrailingBit(1i), 2147483647i);
    let var_2 = Struct_1(vec4<bool>(any(select(select(vec4<bool>(true, true, false, true), vec4<bool>(global1[_wgslsmith_index_u32(75170u, 22u)], global1[_wgslsmith_index_u32(u_input.a.x, 22u)], true, global1[_wgslsmith_index_u32(0u, 22u)]), global1[_wgslsmith_index_u32(21869u, 22u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 22u)], arg_0.x, global1[_wgslsmith_index_u32(u_input.c.x, 22u)], global1[_wgslsmith_index_u32(u_input.b, 22u)]), vec4<bool>(arg_0.x, global1[_wgslsmith_index_u32(u_input.b, 22u)], true, arg_0.x), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 22u)], arg_0.x, arg_0.x)), arg_0.x)), 14993u >= u_input.c.x, any(select(vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(u_input.b, 22u)]), select(vec4<bool>(false, false, false, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, true, true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 22u)], global1[_wgslsmith_index_u32(u_input.a.x, 22u)], global1[_wgslsmith_index_u32(u_input.b, 22u)], false)), any(vec4<bool>(false, true, global1[_wgslsmith_index_u32(54390u, 22u)], false)))), global1[_wgslsmith_index_u32(u_input.b, 22u)]), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-2079f, 891f, -562f), _wgslsmith_f_op_vec3_f32(step(global3[_wgslsmith_index_u32(u_input.c.x, 25u)], var_0.xwx)))))), _wgslsmith_mod_vec4_u32(vec4<u32>(firstLeadingBit(u_input.a.x), 28234u, _wgslsmith_add_u32(32985u, 9677u), abs(9261u)), select(u_input.a, vec4<u32>(u_input.a.x, 54536u, 4294967295u, 62185u), true) | ~vec4<u32>(1314u, 22975u, u_input.c.x, 78490u)) ^ ~(vec4<u32>(u_input.a.x, u_input.b, 806u, u_input.a.x) ^ max(vec4<u32>(25310u, 61121u, 73350u, u_input.c.x), vec4<u32>(32626u, u_input.b, 30145u, 23341u))));
    return Struct_3(func_2(vec2<bool>(any(vec2<bool>(false, var_2.a.x)) && (true || arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -890f) == _wgslsmith_f_op_f32(round(109f)))).a);
}

fn func_1(arg_0: u32, arg_1: vec2<i32>) -> Struct_3 {
    global0 = array<f32, 24>();
    var var_0 = 0u;
    var var_1 = u_input.b;
    var var_2 = -1168f;
    var var_3 = Struct_2(vec2<u32>(arg_0, arg_0), true, !(!(_wgslsmith_mult_u32(1u, 39957u) < (u_input.b & 3666u))));
    return func_4(!select(vec3<bool>(!var_3.b, true, global1[_wgslsmith_index_u32(var_3.a.x, 22u)] != var_3.c), vec3<bool>(-780f >= global0[_wgslsmith_index_u32(0u, 24u)], any(vec3<bool>(var_3.b, true, false)), !global1[_wgslsmith_index_u32(arg_0, 22u)]), func_3(~var_3.a, func_2(vec2<bool>(true, false)), _wgslsmith_mult_u32(u_input.c.x, var_3.a.x))));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: Struct_2) -> Struct_2 {
    let var_0 = func_2(vec2<bool>(false, 1i == (~(-56056i) << (arg_2.a.x % 32u))));
    let var_1 = vec4<u32>(1u, ~reverseBits(53030u), 24023u, ~arg_1.a.a.x);
    let var_2 = var_0.a;
    var var_3 = ~arg_2.a;
    let var_4 = Struct_1(select(!select(!vec4<bool>(false, false, arg_1.a.c, true), select(vec4<bool>(arg_2.b, true, true, false), vec4<bool>(true, global1[_wgslsmith_index_u32(var_2.a.x, 22u)], false, arg_2.b), vec4<bool>(false, true, var_2.c, true)), select(vec4<bool>(global1[_wgslsmith_index_u32(35346u, 22u)], false, false, arg_2.c), vec4<bool>(arg_1.a.c, true, false, false), vec4<bool>(true, true, global1[_wgslsmith_index_u32(var_3.x, 22u)], true))), !vec4<bool>(false, var_2.c || global1[_wgslsmith_index_u32(8142u, 22u)], !var_2.b, global1[_wgslsmith_index_u32(~arg_1.a.a.x, 22u)]), vec4<bool>(_wgslsmith_clamp_u32(arg_2.a.x, var_1.x, 0u) <= 0u, ~var_0.a.a.x <= 105817u, true, arg_1.a.b)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.www - vec3<f32>(arg_0.x, -1442f, global0[_wgslsmith_index_u32(var_1.x, 24u)])) + _wgslsmith_f_op_vec3_f32(arg_0.wxw + global3[_wgslsmith_index_u32(1u, 25u)]))))), min(~(~vec4<u32>(0u, 4294967295u, u_input.b, 1u)), ~vec4<u32>(firstLeadingBit(u_input.a.x), 96917u, ~38046u, ~67080u)));
    return Struct_2(var_2.a, arg_1.a.c, arg_1.a.b);
}

fn func_6(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-arg_2.b.x);
    var_0 = arg_2.b.x;
    let var_1 = arg_2.b.x;
    var var_2 = arg_2;
    var var_3 = vec2<u32>(min(arg_2.c.x, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(arg_0.a.a, u_input.c.wy), _wgslsmith_clamp_vec2_u32(func_5(vec4<f32>(572f, 683f, global0[_wgslsmith_index_u32(u_input.a.x, 24u)], global0[_wgslsmith_index_u32(32481u, 24u)]), Struct_3(Struct_2(u_input.a.xw, arg_0.a.b, true)), arg_1.a).a, var_2.c.xz, max(vec2<u32>(arg_2.c.x, 50169u), arg_1.a.a)))), ~firstTrailingBit(abs(~4294967295u)));
    return Struct_1(!vec4<bool>(true, !arg_1.a.b, all(vec3<bool>(false, false, false)) | true, func_4(select(arg_2.a.ywy, var_2.a.zyz, var_2.a.xzx)).a.b), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.b) + _wgslsmith_f_op_vec3_f32(max(arg_2.b, vec3<f32>(var_2.b.x, var_1, var_1)))) * global3[_wgslsmith_index_u32(arg_1.a.a.x, 25u)]))), vec4<u32>(38486u, firstTrailingBit(56671u) | var_3.x, 4294967295u, ~4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 24>();
    let var_0 = Struct_3(global2[_wgslsmith_index_u32(reverseBits(u_input.c.x), 21u)]);
    var var_1 = func_6(Struct_3(func_5(vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 24u)]), -151f, -889f, _wgslsmith_f_op_f32(-1100f - 1168f)), func_1(4294967295u, firstTrailingBit(vec2<i32>(10790i, 1i))), var_0.a)), Struct_3(global2[_wgslsmith_index_u32(15399u, 21u)]), Struct_1(!(!select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 22u)], true, false, global1[_wgslsmith_index_u32(22377u, 22u)]), vec4<bool>(var_0.a.c, var_0.a.b, true, false), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 22u)], false, false))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global3[_wgslsmith_index_u32(26824u, 25u)]))), _wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(4294967295u, 25u)]))), _wgslsmith_mod_vec4_u32(select(u_input.c & vec4<u32>(var_0.a.a.x, var_0.a.a.x, var_0.a.a.x, var_0.a.a.x), u_input.a, true), vec4<u32>(_wgslsmith_sub_u32(91871u, 49607u), 50763u, var_0.a.a.x, 55526u))));
    let x = u_input.a;
    s_output = StorageBuffer(21290u, _wgslsmith_f_op_f32(f32(-1f) * -516f), vec2<u32>(firstTrailingBit(u_input.c.x & var_1.c.x), func_2(var_1.a.xw).a.a.x ^ 1u) ^ var_0.a.a, min(firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(15343i, -22582i), vec2<i32>(-2147483647i, -1i))) ^ (10716i << (max(var_1.c.x, 95508u) % 32u)), -2147483647i << (max(firstLeadingBit(var_0.a.a.x), max(59066u, 126727u)) % 32u)));
}

