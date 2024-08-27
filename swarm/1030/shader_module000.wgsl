struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<u32, 3> = array<u32, 3>(0u, 67691u, 0u);

var<private> global2: array<vec3<bool>, 1>;

var<private> global3: array<Struct_4, 24> = array<Struct_4, 24>(Struct_4(vec4<f32>(-1559f, -251f, 598f, 1078f)), Struct_4(vec4<f32>(-2245f, -924f, -418f, -526f)), Struct_4(vec4<f32>(-1275f, -1014f, 448f, -1246f)), Struct_4(vec4<f32>(-454f, 872f, -949f, -1067f)), Struct_4(vec4<f32>(-293f, -977f, 1151f, -679f)), Struct_4(vec4<f32>(-444f, 1000f, 1000f, 1256f)), Struct_4(vec4<f32>(105f, -884f, 382f, -874f)), Struct_4(vec4<f32>(-205f, 1000f, -712f, 428f)), Struct_4(vec4<f32>(-322f, -1709f, 409f, -198f)), Struct_4(vec4<f32>(538f, -351f, 1374f, 1000f)), Struct_4(vec4<f32>(-936f, -1692f, -595f, -469f)), Struct_4(vec4<f32>(-129f, 2401f, -1293f, -1106f)), Struct_4(vec4<f32>(-2506f, 1000f, -293f, 1542f)), Struct_4(vec4<f32>(-1000f, -870f, 282f, 1133f)), Struct_4(vec4<f32>(1600f, 1066f, 516f, 649f)), Struct_4(vec4<f32>(335f, -756f, 886f, 963f)), Struct_4(vec4<f32>(-1126f, 1356f, 654f, 588f)), Struct_4(vec4<f32>(1268f, 666f, -1499f, -910f)), Struct_4(vec4<f32>(249f, 1000f, 1709f, -1669f)), Struct_4(vec4<f32>(-592f, -218f, 516f, 260f)), Struct_4(vec4<f32>(1062f, 1000f, 310f, -961f)), Struct_4(vec4<f32>(572f, -593f, -716f, 1262f)), Struct_4(vec4<f32>(612f, 955f, 1110f, 1000f)), Struct_4(vec4<f32>(-1000f, -1620f, 1679f, -220f)));

var<private> global4: array<Struct_4, 4>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>, arg_1: bool) -> f32 {
    var var_0 = _wgslsmith_sub_u32(4294967295u, u_input.b.x);
    var var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-616f * -841f)), 212f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-316f, 1095f, true))))));
    global1 = array<u32, 3>();
    let var_3 = Struct_3(Struct_2(global1[_wgslsmith_index_u32(abs(4294967295u), 3u)], Struct_1(vec3<bool>(true, true, true), !arg_1), firstLeadingBit(-35907i), Struct_1(!vec3<bool>(false, false, arg_1), all(vec3<bool>(false, arg_1, arg_1)))), Struct_1(vec3<bool>(true, any(!vec2<bool>(arg_1, false)), select(false, arg_1, arg_1)), !arg_1 && any(select(vec4<bool>(false, false, false, false), vec4<bool>(arg_1, false, arg_1, arg_1), arg_1))), var_2);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_3.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -320f), -487f, var_3.a.d.b)))));
}

fn func_2(arg_0: Struct_4, arg_1: f32, arg_2: i32) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(-arg_1);
    let var_1 = Struct_3(Struct_2(4294967295u, Struct_1(global2[_wgslsmith_index_u32(0u, 1u)], true), -abs(~18671i), Struct_1(global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(0u, 87285u), 1u)], true)), Struct_1(global2[_wgslsmith_index_u32(u_input.e.x, 1u)], true && all(vec3<bool>(false, false, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.c.zz, all(global2[_wgslsmith_index_u32(91173u, 1u)]) || true)) - -947f));
    return vec4<i32>(reverseBits(-1i) << (~var_1.a.a % 32u), _wgslsmith_add_i32(~(~(u_input.a ^ -2147483647i)), var_1.a.c), firstLeadingBit(51528i), var_1.a.c);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2) -> Struct_1 {
    global1 = array<u32, 3>();
    var var_0 = -_wgslsmith_div_vec4_i32(-firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.a.c, arg_0.a.c, 1i, arg_0.a.c), vec4<i32>(-2147483647i, arg_0.a.c, -1535i, -18425i))), ~(max(vec4<i32>(-30373i, arg_1.c, -2147483647i, arg_0.a.c), vec4<i32>(u_input.a, -2147483647i, 2147483647i, 2147483647i)) | func_2(Struct_4(vec4<f32>(301f, arg_0.c, arg_0.c, arg_0.c)), 317f, 45128i)));
    global3 = array<Struct_4, 24>();
    let var_1 = Struct_3(Struct_2(arg_0.a.a, arg_0.b, arg_1.c, Struct_1(vec3<bool>(arg_0.b.a.x || arg_1.d.b, arg_0.a.c <= 0i, arg_0.a.d.a.x), _wgslsmith_div_f32(-822f, -1896f) < arg_0.c)), Struct_1(!select(select(vec3<bool>(true, arg_0.b.a.x, false), vec3<bool>(arg_0.b.b, false, true), false), !arg_1.d.a, any(arg_1.b.a)), select(true, true, all(arg_1.d.a.zy)) != arg_0.b.a.x), _wgslsmith_f_op_f32(arg_0.c * -319f));
    global3 = array<Struct_4, 24>();
    return Struct_1(select(vec3<bool>(var_1.a.d.b, !arg_1.b.a.x, true), select(vec3<bool>(true, true, true), var_1.a.d.a, arg_0.a.d.a), vec3<bool>(false, !(arg_1.d.a.x | true), true)), true | any(!select(var_1.b.a.yy, vec2<bool>(true, true), arg_1.b.a.zy)));
}

fn func_4(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = any(!(!(!(!arg_2.b.a.xx))));
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(215f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-487f, -859f), _wgslsmith_f_op_f32(f32(-1f) * -159f), var_0)))))));
    return Struct_1(vec3<bool>(true, true, arg_0), !(!(_wgslsmith_f_op_f32(-var_1.x) <= _wgslsmith_div_f32(971f, 434f))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<bool>, 1>();
    let var_0 = Struct_3(Struct_2(u_input.b.x, Struct_1(select(select(global2[_wgslsmith_index_u32(1u, 1u)], global2[_wgslsmith_index_u32(0u, 1u)], true), vec3<bool>(true, true, true), any(vec2<bool>(false, false))), true), _wgslsmith_mod_i32(~u_input.a, ~(-41426i)), func_4(false, select(countOneBits(u_input.d), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, u_input.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3003u, 3u)], 3u)]), u_input.d), select(global2[_wgslsmith_index_u32(4294967295u, 1u)], global2[_wgslsmith_index_u32(96544u, 1u)], vec3<bool>(true, true, true))), Struct_2(0u, Struct_1(vec3<bool>(false, true, false), true), -1i, func_1(Struct_3(Struct_2(u_input.e.x, Struct_1(vec3<bool>(true, false, true), true), u_input.a, Struct_1(vec3<bool>(false, false, false), true)), Struct_1(vec3<bool>(true, false, false), true), 1000f), Struct_2(59003u, Struct_1(global2[_wgslsmith_index_u32(596u, 1u)], true), u_input.a, Struct_1(vec3<bool>(false, false, true), false)))))), Struct_1(vec3<bool>(!any(global2[_wgslsmith_index_u32(4294967295u, 1u)]), 191f != _wgslsmith_f_op_f32(floor(-1577f)), true), !((u_input.a != 2147483647i) & true)), -1179f);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(var_0.c * 535f), -1228f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, -572f)) * vec2<f32>(-1136f, _wgslsmith_f_op_f32(var_0.c - var_0.c)))));
    var var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(222f, var_0.c, var_0.c, var_1.x)) + vec4<f32>(var_0.c, var_1.x, var_0.c, -916f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(sign(-430f)), _wgslsmith_f_op_f32(max(var_1.x, var_1.x)), 679f, _wgslsmith_div_f32(-1000f, var_1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.c, 181f, -1588f, 140f), vec4<f32>(1000f, var_1.x, 1545f, var_0.c))), true)), all(select(select(vec4<bool>(var_0.b.a.x, var_0.b.a.x, var_0.a.b.b, var_0.b.b), vec4<bool>(var_0.b.a.x, var_0.a.d.a.x, var_0.b.b, true), var_0.b.a.x), select(vec4<bool>(true, var_0.a.b.a.x, true, true), vec4<bool>(true, var_0.a.d.a.x, var_0.a.b.a.x, true), true), select(vec4<bool>(false, var_0.a.d.a.x, var_0.b.b, true), vec4<bool>(var_0.b.a.x, false, false, var_0.b.a.x), true))))));
    let var_3 = Struct_3(var_0.a, var_0.b, _wgslsmith_f_op_f32(-var_0.c));
    let x = u_input.a;
    s_output = StorageBuffer(max(-2147483647i, ~(i32(-1i) * -16167i)), -vec4<i32>(~reverseBits(-2147483647i), 2147483647i, _wgslsmith_clamp_i32(func_2(Struct_4(var_2.a), -1401f, 2147483647i).x, var_3.a.c, 2147483647i), -u_input.a));
}

