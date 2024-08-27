struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<u32>,
    d: vec4<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<f32>;

var<private> global2: i32 = -6660i;

var<private> global3: array<bool, 31>;

var<private> global4: array<u32, 5> = array<u32, 5>(0u, 63156u, 4294967295u, 0u, 16640u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2) -> vec3<bool> {
    global2 = -2147483647i;
    var var_0 = arg_2.e.c;
    let var_1 = false;
    let var_2 = arg_2;
    var var_3 = Struct_1(var_2.a.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 1239f))) - vec2<f32>(_wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(max(-796f, arg_1.e.b.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.x))))), -abs(1i), u_input.c.x);
    return !select(vec3<bool>(any(!vec2<bool>(arg_1.a.a, true)), var_1, true), !(!select(vec3<bool>(false, true, true), vec3<bool>(var_2.e.a, var_2.a.a, arg_1.a.a), vec3<bool>(true, true, arg_1.e.a))), select(vec3<bool>(!arg_1.a.a, 1u != arg_2.e.d, true), vec3<bool>(arg_2.e.a, all(vec2<bool>(arg_2.e.a, true)), -1000f <= var_2.e.b.x), select(select(vec3<bool>(var_2.e.a, arg_1.e.a, true), vec3<bool>(false, arg_1.a.a, false), vec3<bool>(true, false, var_1)), vec3<bool>(true, true, true), !arg_2.e.a)));
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: u32, arg_3: Struct_2) -> i32 {
    let var_0 = u_input.b;
    global0 = 252f;
    var var_1 = ~abs(countOneBits(~vec3<i32>(2147483647i, arg_3.a.c, -2147483647i)));
    global2 = max(0i, ~reverseBits(2147483647i));
    let var_2 = 17538u;
    return _wgslsmith_dot_vec4_i32(firstTrailingBit(-_wgslsmith_mod_vec4_i32(vec4<i32>(-75161i, 0i, -1i, 0i), reverseBits(vec4<i32>(2147483647i, arg_3.e.c, u_input.b, -2919i)))), vec4<i32>(2147483647i, abs(max(_wgslsmith_mod_i32(var_0, u_input.b), 1i)), arg_3.a.c, 6515i));
}

fn func_2(arg_0: vec4<f32>) -> i32 {
    var var_0 = select(reverseBits(reverseBits(vec3<i32>(~(-9210i), -u_input.a.x, u_input.b >> (global4[_wgslsmith_index_u32(45396u, 5u)] % 32u)))), vec3<i32>(u_input.a.x, u_input.b, func_4(global1.x, select(func_3(-1857f, Struct_2(Struct_1(true, arg_0.yy, -33824i, u_input.c.x), true, vec3<u32>(0u, 0u, 7977u), vec4<f32>(1390f, arg_0.x, arg_0.x, arg_0.x), Struct_1(global3[_wgslsmith_index_u32(4294967295u, 31u)], arg_0.yw, 17189i, 10084u)), Struct_2(Struct_1(global3[_wgslsmith_index_u32(u_input.c.x, 31u)], vec2<f32>(142f, arg_0.x), u_input.b, global4[_wgslsmith_index_u32(15918u, 5u)]), global3[_wgslsmith_index_u32(u_input.c.x, 31u)], u_input.c.yzz, arg_0, Struct_1(false, vec2<f32>(global1.x, global1.x), u_input.a.x, 11253u))), func_3(arg_0.x, Struct_2(Struct_1(global3[_wgslsmith_index_u32(0u, 31u)], arg_0.xx, u_input.a.x, u_input.c.x), false, u_input.c.yzw, arg_0, Struct_1(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 5u)], 31u)], arg_0.xw, u_input.b, u_input.c.x)), Struct_2(Struct_1(global3[_wgslsmith_index_u32(u_input.c.x, 31u)], arg_0.wy, -1i, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(29453u, 5u)], 5u)]), false, vec3<u32>(global4[_wgslsmith_index_u32(u_input.c.x, 5u)], 0u, 98508u), vec4<f32>(128f, global1.x, arg_0.x, 555f), Struct_1(true, arg_0.wy, u_input.b, 1u))), !vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.c.x, 31u)], false)), _wgslsmith_mult_u32(global4[_wgslsmith_index_u32(u_input.c.x, 5u)] << (0u % 32u), _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(global4[_wgslsmith_index_u32(u_input.c.x, 5u)], u_input.c.x, 1u, global4[_wgslsmith_index_u32(u_input.c.x, 5u)]))), Struct_2(Struct_1(false, arg_0.xy, u_input.b, 0u), true, abs(vec3<u32>(45061u, global4[_wgslsmith_index_u32(1u, 5u)], u_input.c.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1523f, global1.x, 1000f, global1.x)), Struct_1(global3[_wgslsmith_index_u32(u_input.c.x, 31u)], vec2<f32>(170f, 146f), u_input.b, 10832u)))), select(!select(!vec3<bool>(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(37861u, 5u)], 31u)], true, global3[_wgslsmith_index_u32(16889u, 31u)]), vec3<bool>(false, true, true), -2147483647i > u_input.a.x), !vec3<bool>(func_3(global1.x, Struct_2(Struct_1(global3[_wgslsmith_index_u32(0u, 31u)], arg_0.zz, -1i, u_input.c.x), global3[_wgslsmith_index_u32(48104u, 31u)], u_input.c.xwy, vec4<f32>(global1.x, global1.x, 536f, -884f), Struct_1(true, vec2<f32>(482f, 210f), u_input.a.x, 35236u)), Struct_2(Struct_1(global3[_wgslsmith_index_u32(u_input.c.x, 31u)], arg_0.xy, u_input.b, 75736u), global3[_wgslsmith_index_u32(4294967295u, 31u)], u_input.c.wwz, arg_0, Struct_1(global3[_wgslsmith_index_u32(u_input.c.x, 31u)], arg_0.wz, 5394i, 18620u))).x, true, all(vec4<bool>(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.c.x, 5u)], 31u)], global3[_wgslsmith_index_u32(u_input.c.x, 31u)], global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.c.x, 5u)], 31u)], false))), vec3<bool>(true, !(322f <= arg_0.x), true)));
    return 0i;
}

fn func_1(arg_0: f32, arg_1: Struct_2) -> vec3<i32> {
    global2 = u_input.b;
    var var_0 = 0u;
    var var_1 = select(!any(select(select(vec2<bool>(arg_1.b, global3[_wgslsmith_index_u32(u_input.c.x, 31u)]), vec2<bool>(arg_1.a.a, global3[_wgslsmith_index_u32(18866u, 31u)]), false), vec2<bool>(global3[_wgslsmith_index_u32(arg_1.a.d, 31u)], false), global3[_wgslsmith_index_u32(0u, 31u)])), -arg_1.a.c > ~(~firstLeadingBit(-6936i)), global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~_wgslsmith_add_u32(~(~1531u), u_input.c.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 19177u), u_input.c.zz) % 32u)), 5u)], 31u)]);
    global1 = _wgslsmith_f_op_vec2_f32(-arg_1.a.b);
    var var_2 = arg_1.a;
    return vec3<i32>(countOneBits(_wgslsmith_add_i32(0i, var_2.c)), func_2(arg_1.d), _wgslsmith_sub_i32(min(arg_1.a.c, (i32(-1i) * -1i) >> (_wgslsmith_add_u32(1u, 0u) % 32u)), _wgslsmith_div_i32(~u_input.a.x, _wgslsmith_mult_i32(max(-38179i, u_input.a.x), u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.x)) * _wgslsmith_f_op_f32(1000f + 1645f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(global1.x)))))), Struct_2(Struct_1(u_input.a.x < max(-1i, -2147483647i), vec2<f32>(_wgslsmith_div_f32(global1.x, -1174f), global1.x), -25635i | (u_input.b | 2147483647i), ~u_input.c.x << (52029u % 32u)), !(-31168i <= ~u_input.b), ~vec3<u32>(u_input.c.x, global4[_wgslsmith_index_u32(u_input.c.x, 5u)], 25288u) << ((~u_input.c.xyx & u_input.c.zyw) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, global1.x, global1.x, 1568f), vec4<f32>(1082f, 1554f, global1.x, global1.x), true))))), Struct_1(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x))), 12639i, _wgslsmith_add_u32(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(11584u, 4294967295u), 5u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.c.yww, u_input.c.wyw), 5u)], 5u)], 5u)]))));
    let var_1 = max(u_input.c, reverseBits(u_input.c));
    var var_2 = Struct_2(Struct_1(any(func_3(_wgslsmith_f_op_f32(-global1.x), Struct_2(Struct_1(global3[_wgslsmith_index_u32(1u, 31u)], vec2<f32>(global1.x, -1573f), 0i, 0u), false, vec3<u32>(var_1.x, 0u, var_1.x), vec4<f32>(global1.x, -118f, 546f, -701f), Struct_1(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(var_1.x, 5u)], 31u)], vec2<f32>(-261f, global1.x), var_0.x, 71427u)), Struct_2(Struct_1(false, vec2<f32>(108f, 876f), 0i, var_1.x), false, var_1.xzy, vec4<f32>(global1.x, global1.x, global1.x, global1.x), Struct_1(true, vec2<f32>(-120f, -1749f), u_input.b, u_input.c.x)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1747f, -505f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, 721f) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.x, global1.x), vec2<f32>(global1.x, 261f), vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 31u)], true)))))), 1162i, var_1.x), global3[_wgslsmith_index_u32(66577u, 31u)], vec3<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(~u_input.c.x, global4[_wgslsmith_index_u32(27371u, 5u)]), ~(~22089u)), 1u, _wgslsmith_sub_u32(~4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(2409u, 5u)], 5u)] & _wgslsmith_clamp_u32(4294967295u, u_input.c.x, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(397u, 5u)], 5u)]), 5u)], 5u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 1293f, 590f, -1815f))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.x, 1718f, -1421f, -1123f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-603f, global1.x, -1000f, global1.x) - vec4<f32>(global1.x, 227f, global1.x, 1194f)))))), Struct_1(global3[_wgslsmith_index_u32(~max(0u, 0u), 31u)], vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1065f, 2417f))), global1.x), 36108i, 10874u << (_wgslsmith_clamp_u32(98605u, _wgslsmith_clamp_u32(var_1.x, 59038u, 24086u), 0u) % 32u)));
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-537f * var_2.e.b.x)));
    var var_4 = -1121f;
    var var_5 = var_2.e;
    var_2 = Struct_2(Struct_1(true != !global3[_wgslsmith_index_u32(max(u_input.c.x, 32129u), 31u)], _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(var_5.b)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(var_2.a.b)), _wgslsmith_f_op_vec2_f32(select(var_5.b, vec2<f32>(global1.x, var_5.b.x), var_5.a)))), !func_3(1148f, Struct_2(var_2.e, true, vec3<u32>(var_2.e.d, 0u, var_2.c.x), vec4<f32>(global1.x, global1.x, 625f, -741f), Struct_1(false, var_5.b, var_5.c, u_input.c.x)), Struct_2(var_2.a, global3[_wgslsmith_index_u32(var_5.d, 31u)], u_input.c.zyx, var_2.d, Struct_1(var_2.a.a, vec2<f32>(var_2.e.b.x, var_2.d.x), 52517i, u_input.c.x))).zy)), _wgslsmith_add_i32(var_5.c, abs(1i) ^ var_2.e.c), (~75937u << (firstTrailingBit(4294967295u) % 32u)) & 2986u), var_2.a.a, ~u_input.c.wwz, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1722f, var_5.b.x)) + _wgslsmith_f_op_f32(var_5.b.x - var_2.d.x)), _wgslsmith_f_op_f32(trunc(174f)), var_5.b.x, _wgslsmith_f_op_f32(ceil(-1000f))) - _wgslsmith_f_op_vec4_f32(var_2.d + vec4<f32>(_wgslsmith_f_op_f32(-var_5.b.x), global1.x, -129f, _wgslsmith_f_op_f32(ceil(131f))))), Struct_1(true, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-743f, -2095f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1156f, var_2.a.b.x) * vec2<f32>(global1.x, -156f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.d.x, global1.x) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5.b.x, global1.x))))), ~var_0.x, ~(~global4[_wgslsmith_index_u32(max(50538u, global4[_wgslsmith_index_u32(44429u, 5u)]), 5u)])));
    let var_6 = false | all(vec2<bool>(true, true));
    var var_7 = vec2<bool>(!all(!(!vec2<bool>(var_6, true))), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1292f, var_2.a.b.x, -1502f) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.e.b.x, 2501f, -502f)))) * vec3<f32>(global1.x, _wgslsmith_f_op_f32(-var_2.d.x), -1000f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(global1.x - var_5.b.x)))), _wgslsmith_f_op_f32(-var_2.a.b.x));
}

