struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: u32,
    d: u32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22> = array<f32, 22>(-1544f, -317f, -598f, -1039f, 2042f, -402f, 1140f, 1000f, -1003f, -1020f, 1000f, 1478f, 1000f, 617f, -981f, -2789f, 505f, 645f, 1077f, 848f, -133f, -169f);

var<private> global1: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(10521u, vec4<f32>(1000f, 989f, -1402f, -132f), true), Struct_2(61870u, vec4<f32>(1028f, 268f, 1179f, -175f), false), Struct_2(4294967295u, vec4<f32>(-1563f, 106f, 1010f, -780f), false), Struct_2(1u, vec4<f32>(1627f, 1770f, 2197f, -1000f), true), Struct_2(30968u, vec4<f32>(636f, -1744f, 418f, -805f), true), Struct_2(53871u, vec4<f32>(-361f, -426f, -1720f, -915f), false), Struct_2(57828u, vec4<f32>(-318f, -988f, 1094f, 558f), false), Struct_2(47u, vec4<f32>(1690f, -1579f, -1000f, -489f), false), Struct_2(1u, vec4<f32>(632f, -1000f, 1962f, -283f), false), Struct_2(1u, vec4<f32>(1793f, -261f, -1927f, -1000f), true), Struct_2(4294967295u, vec4<f32>(-1057f, 1156f, 805f, 769f), false), Struct_2(31275u, vec4<f32>(1377f, 334f, 488f, 970f), true), Struct_2(25245u, vec4<f32>(715f, 370f, 958f, -1408f), true), Struct_2(4294967295u, vec4<f32>(-350f, -1819f, 1093f, -184f), true), Struct_2(109248u, vec4<f32>(-460f, 140f, 1916f, 575f), true), Struct_2(16511u, vec4<f32>(-1440f, -149f, 1009f, -211f), true), Struct_2(4294967295u, vec4<f32>(-1485f, -962f, 848f, 917f), true), Struct_2(69143u, vec4<f32>(777f, 763f, 1129f, 1005f), false), Struct_2(0u, vec4<f32>(1986f, 1454f, -1000f, 161f), true), Struct_2(39931u, vec4<f32>(2575f, -1719f, -3257f, -430f), true), Struct_2(9341u, vec4<f32>(-776f, -1136f, -1121f, 1241f), true), Struct_2(1u, vec4<f32>(-1006f, -357f, 565f, 1624f), true), Struct_2(3476u, vec4<f32>(-196f, -1000f, -1000f, 885f), true), Struct_2(4294967295u, vec4<f32>(772f, 279f, -575f, -1099f), false), Struct_2(16785u, vec4<f32>(-405f, -254f, -2311f, 391f), false), Struct_2(6272u, vec4<f32>(-1370f, -588f, 1180f, 1000f), false), Struct_2(89256u, vec4<f32>(196f, 442f, -326f, -604f), true), Struct_2(68385u, vec4<f32>(591f, 1394f, -1209f, -1793f), true), Struct_2(0u, vec4<f32>(1000f, -1277f, 724f, -956f), true), Struct_2(110400u, vec4<f32>(-782f, -461f, -1509f, 794f), true));

var<private> global2: Struct_2;

var<private> global3: i32;

var<private> global4: array<Struct_3, 14>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_1(!(!global2.c));
    global3 = -(-arg_1.x ^ (firstLeadingBit(u_input.a.x >> (4294967295u % 32u)) ^ u_input.b.x));
    var var_1 = 4294967295u;
    let var_2 = vec4<f32>(610f, global2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1615f), -613f);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.x))))), 501f)));
    return var_0;
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~(~global2.a), 22u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(427f)) * global2.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(466f + -706f), _wgslsmith_f_op_f32(-global2.b.x))), _wgslsmith_f_op_f32(-287f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global2.a, 22u)] - global2.b.x)))))));
    let var_1 = Struct_1((global2.a >> (global2.a % 32u)) <= min(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(3389u, global2.a, 0u, 4294967295u), vec4<u32>(0u, 17715u, global2.a, global2.a)) ^ 0u));
    var var_2 = -258f;
    let var_3 = _wgslsmith_add_i32(u_input.b.x, -2147483647i);
    let var_4 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(42827u, global2.a, global2.a, global2.a), _wgslsmith_div_vec4_u32(vec4<u32>(~(1u & global2.a), global2.a, global2.a, ~global2.a), ~vec4<u32>(global2.a >> (global2.a % 32u), global2.a, 92746u, _wgslsmith_dot_vec2_u32(vec2<u32>(global2.a, global2.a), vec2<u32>(25185u, 0u))))), 30u)];
    return _wgslsmith_f_op_f32(-529f * 345f);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: vec3<i32>) -> f32 {
    let var_0 = Struct_3(func_2(arg_2, vec4<i32>(36702i, ~_wgslsmith_div_i32(arg_3.x, 38922i), 34377i, 2147483647i), countOneBits(vec4<u32>(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_1.a, global2.a, 0u), vec4<u32>(global2.a, arg_1.a, arg_1.a, 65991u)), _wgslsmith_mult_u32(16220u, arg_1.a), arg_1.a))), select(!(!(!vec4<bool>(false, true, true, global2.c))), !(!vec4<bool>(arg_1.c, arg_1.c, global2.c, arg_1.c)), select(!(!vec4<bool>(arg_1.c, arg_1.c, true, false)), vec4<bool>(any(vec4<bool>(false, false, false, true)), true, global2.a > arg_1.a, true), vec4<bool>(false, global2.a < arg_1.a, all(vec3<bool>(arg_1.c, true, arg_1.c)), global2.c))), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(0u, ~global2.a), _wgslsmith_mod_u32(1u, 4294967295u), global2.a), ~(~vec3<u32>(arg_1.a, 0u, global2.a))), ~abs(~global2.a) ^ 21258u, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(arg_1.a, 22u)])), 198f), global2.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(41696u, 22u)], _wgslsmith_f_op_f32(f32(-1f) * -1688f))) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_1.a | global2.a, 22u)]))));
    var var_1 = func_2(vec2<f32>(400f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))))), vec4<i32>(arg_3.x, reverseBits(arg_3.x), 0i, i32(-1i) * -2147483647i) & firstLeadingBit(u_input.b), vec4<u32>(1u, global2.a, 0u, global2.a)).a;
    var var_2 = Struct_2(global2.a >> (~1u % 32u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-480f)), _wgslsmith_f_op_f32(f32(-1f) * -2389f), !arg_1.c)), arg_2.x, _wgslsmith_f_op_f32(f32(-1f) * -2163f))), all(!(!select(var_0.b, var_0.b, var_0.b))));
    var var_3 = any(select(!vec4<bool>(false, func_2(vec2<f32>(-785f, var_2.b.x), u_input.b, vec4<u32>(var_2.a, var_2.a, var_2.a, 1u)).a, false, global2.c), !select(vec4<bool>(arg_1.c, true, global2.c, false), !var_0.b, var_0.b), !var_0.b));
    let var_4 = vec2<bool>(!all(var_0.b), var_2.c);
    return _wgslsmith_f_op_f32(func_3());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.a;
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(global2.b.x, global0[_wgslsmith_index_u32(global2.a, 22u)])))) <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(global2.b, Struct_2(29257u, global2.b, false), vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 22u)], 1088f), u_input.b.yxy))))), select(!(!(!vec4<bool>(true, global2.c, false, false))), vec4<bool>(all(!vec3<bool>(false, global2.c, true)), func_2(_wgslsmith_f_op_vec2_f32(-global2.b.wx), vec4<i32>(u_input.b.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, global2.a, global2.a, global2.a)).a, global2.c, -777f > global2.b.x), true), abs(~abs(4294967295u)), abs(42488u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(29528u, 22u)], 890f, 1425f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-535f, global0[_wgslsmith_index_u32(global2.a, 22u)], global0[_wgslsmith_index_u32(global2.a, 22u)]) * global2.b.wwy), vec3<bool>(global2.c, global2.c, global2.c))), _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -113f, 1532f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0[_wgslsmith_index_u32(0u, 22u)], 562f, -837f)))), select(vec3<bool>(true, true, global2.c), select(vec3<bool>(false, global2.c, false), vec3<bool>(false, global2.c, false), false), true))), _wgslsmith_f_op_vec3_f32(step(global2.b.xxw, global2.b.zyy))));
    let x = u_input.a;
    s_output = StorageBuffer(0i, 1i, u_input.a.x, ~vec4<u32>(_wgslsmith_add_u32(18623u, var_1.d), var_1.d, _wgslsmith_sub_u32(var_1.c, global2.a) << (~var_1.c % 32u), 11449u), reverseBits(global2.a));
}

