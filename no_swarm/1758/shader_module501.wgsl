struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: u32,
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

var<private> global0: array<f32, 15> = array<f32, 15>(245f, -1640f, 962f, 172f, -1341f, 1179f, 990f, -246f, -859f, -1224f, -462f, 2006f, -187f, 1000f, -1350f);

var<private> global1: array<f32, 13> = array<f32, 13>(-1141f, -2287f, 1149f, -744f, 562f, 683f, -103f, -1713f, -147f, -2803f, -2341f, -469f, -339f);

var<private> global2: bool = false;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: f32) -> f32 {
    global0 = array<f32, 15>();
    let var_0 = vec3<bool>(!(!(u_input.c.x > 4294967295u) && true), !(194f > arg_0), true);
    global1 = array<f32, 13>();
    return 477f;
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_3) -> f32 {
    global1 = array<f32, 13>();
    var var_0 = arg_1;
    var_0 = Struct_3(-456f, _wgslsmith_sub_i32(8994i, select(countOneBits(-2147483647i), arg_1.b << (~4294967295u % 32u), select(all(vec3<bool>(false, var_0.d, var_0.d)), true, false))), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 15u)], var_0.c.a.x, -246f, -750f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, -1668f, -166f), _wgslsmith_f_op_vec3_f32(var_0.c.b - vec3<f32>(1703f, -317f, -274f))))), var_0.d);
    let var_1 = var_0.c.a;
    var var_2 = Struct_4(select(vec2<u32>(_wgslsmith_div_u32(~0u, reverseBits(22509u)), 1u), abs(countOneBits(u_input.c)), arg_1.d), Struct_1(-1002f, vec3<u32>(1u, u_input.d, ~(63510u << (0u % 32u))), var_0.b, !all(vec2<bool>(var_0.d, arg_1.d)), 41682i), arg_1.c);
    return _wgslsmith_f_op_f32(-var_2.c.b.x);
}

fn func_4(arg_0: vec4<f32>, arg_1: u32, arg_2: vec3<f32>) -> bool {
    let var_0 = vec4<f32>(arg_2.x, -1195f, global1[_wgslsmith_index_u32(~select(3252u, u_input.c.x, any(vec4<bool>(true, true, true, true)) & true), 13u)], _wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.c.x, 13u)], _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * 648f)))));
    global2 = any(vec4<bool>(all(vec4<bool>(true, false, all(vec4<bool>(true, true, true, true)), false)), any(vec3<bool>(select(true, false, false), any(vec4<bool>(true, false, true, true)), true)), true, all(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), false))));
    var var_1 = Struct_1(global0[_wgslsmith_index_u32(83078u, 15u)], ~abs(vec3<u32>(u_input.c.x, 56211u, 68330u)) & vec3<u32>(arg_1, _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.c.x, u_input.d), 31165u), ~15391u), 33212i, true, ~(-74647i));
    let var_2 = Struct_1(-533f, ~vec3<u32>(_wgslsmith_sub_u32(arg_1 & var_1.b.x, var_1.b.x), _wgslsmith_add_u32(u_input.c.x, arg_1), select(4294967295u, 40434u, true)), 26472i, select(true, any(!(!vec3<bool>(false, var_1.d, false))), !any(vec2<bool>(var_1.d, true))), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(1i, i32(-1i) * -1i)), abs(vec2<i32>(-24797i, -36746i << (u_input.d % 32u)))));
    global2 = !any(select(select(!vec4<bool>(var_2.d, var_1.d, var_1.d, false), !vec4<bool>(true, var_1.d, false, false), !vec4<bool>(var_1.d, true, false, false)), !vec4<bool>(var_2.d, false, var_1.d, var_2.d), all(vec3<bool>(var_2.d, true, false))));
    return any(vec2<bool>(true | !var_1.d, all(select(vec3<bool>(false, true, var_1.d), vec3<bool>(false, true, var_1.d), !var_1.d))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<u32>) -> f32 {
    global2 = func_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-726f - global0[_wgslsmith_index_u32(abs(5523u), 15u)]), _wgslsmith_f_op_f32(-326f + global1[_wgslsmith_index_u32(~0u, 13u)]), 697f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -918f) + _wgslsmith_f_op_f32(func_3(vec4<f32>(810f, -130f, -260f, global0[_wgslsmith_index_u32(u_input.d, 15u)]), Struct_3(global1[_wgslsmith_index_u32(u_input.c.x, 13u)], -4516i, Struct_2(vec4<f32>(1980f, global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(69202u, 15u)], 1101f), vec3<f32>(2080f, 770f, -636f)), true))))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_1.x, 13u)] * global1[_wgslsmith_index_u32(u_input.c.x, 13u)]), global0[_wgslsmith_index_u32(4294967295u, 15u)], -760f, _wgslsmith_f_op_f32(min(-136f, global0[_wgslsmith_index_u32(arg_1.x, 15u)]))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -262f) * _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(arg_1.x, 13u)]))) <= _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 13u)] + -853f))), u_input.c.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 13u)], _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(4294967295u, 13u)])), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -904f))))));
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(444f, 2330f)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c.x, 14200u), 13u)])), 191f, _wgslsmith_f_op_f32(f32(-1f) * -1289f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(352f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 13u)] - -1629f), -955f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 13u)])))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(170f, -1000f, global0[_wgslsmith_index_u32(0u, 15u)])))) * _wgslsmith_div_vec3_f32(vec3<f32>(-830f, -411f, global0[_wgslsmith_index_u32(arg_1.x, 15u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(1u, 15u)], -535f, -792f) - vec3<f32>(1067f, global1[_wgslsmith_index_u32(34087u, 13u)], -669f))))));
    global0 = array<f32, 15>();
    var var_1 = !select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), select(vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true)), vec3<bool>(true, true, 4294967295u <= u_input.c.x)), select(vec3<bool>(any(vec3<bool>(true, false, true)), false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), 994f < global0[_wgslsmith_index_u32(~4294967295u, 15u)]), any(vec3<bool>(true, true, true)));
    let var_2 = vec3<bool>(select(true, !var_1.x, var_1.x), var_1.x, any(select(select(select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(var_1.x, var_1.x, false), var_1.x), select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(true, var_1.x, true), var_1.x), select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(false, false, true), false)), select(vec3<bool>(false, false, var_1.x), vec3<bool>(false, var_1.x, var_1.x), any(vec3<bool>(var_1.x, false, true))), vec3<bool>(0u > u_input.d, true, !var_1.x))));
    return _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 15u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_1(945f)), -1155f, _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.c.x, 15u)], -716f))) + vec3<f32>(_wgslsmith_f_op_f32(round(757f)), _wgslsmith_f_op_f32(func_2(vec4<i32>(u_input.a, u_input.b, 0i, 11640i), vec2<u32>(4294967295u, u_input.c.x))), 651f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1414f, 307f, 364f), vec3<f32>(727f, -116f, 2412f), vec3<bool>(true, true, false))))))) * _wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(select(1u, 0u, all(vec2<bool>(false, true))), 15u)], _wgslsmith_f_op_f32(-1000f + 552f), global1[_wgslsmith_index_u32(~12418u, 13u)]), vec3<f32>(global0[_wgslsmith_index_u32(countOneBits(~10674u), 15u)], _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1181f) - global1[_wgslsmith_index_u32(firstLeadingBit(0u), 13u)]))));
    var var_1 = Struct_4(max(vec2<u32>(select(firstLeadingBit(4294967295u), _wgslsmith_add_u32(u_input.d, 1u), false), min(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 0u), vec4<u32>(19813u, 115015u, u_input.d, 1u)), 1u)), vec2<u32>(select(_wgslsmith_mod_u32(u_input.c.x, u_input.d), max(u_input.c.x, u_input.d), true), u_input.c.x)), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d, 15u)]))))), _wgslsmith_mult_vec3_u32(select(~vec3<u32>(u_input.d, u_input.c.x, 5060u), vec3<u32>(u_input.c.x, 4294967295u, 24742u) << (vec3<u32>(u_input.d, 20288u, 4294967295u) % vec3<u32>(32u)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), (vec3<u32>(50891u, u_input.d, 55536u) >> (vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x) % vec3<u32>(32u))) << ((vec3<u32>(76673u, u_input.d, u_input.c.x) ^ vec3<u32>(52866u, u_input.c.x, 4294967295u)) % vec3<u32>(32u))), ~_wgslsmith_sub_i32(u_input.b, -u_input.a), !all(vec3<bool>(true, false, true)), u_input.a), Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.c.x, 15u)], global1[_wgslsmith_index_u32(u_input.c.x, 13u)]), global1[_wgslsmith_index_u32(2273u, 13u)], _wgslsmith_f_op_f32(ceil(911f)), _wgslsmith_div_f32(961f, var_0.x)) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 13u)], 1136f, -1234f, 1000f))))), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, -532f, 1377f), _wgslsmith_f_op_vec3_f32(exp2(var_0)))));
    let var_2 = u_input.c.x;
    let var_3 = vec2<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_1.b.b.zx, ~vec2<u32>(4294967295u, var_2)) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(61390u, var_1.b.b.x, 25103u, var_1.b.b.x), firstTrailingBit(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, var_2))) % 32u), 15u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(44779u, 15u)] + global0[_wgslsmith_index_u32(13909u, 15u)]) * global1[_wgslsmith_index_u32(u_input.d, 13u)]))), global1[_wgslsmith_index_u32(min(~(~33981u), var_1.b.b.x) << (62728u % 32u), 13u)]);
    let var_4 = var_1.b;
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x));
    var var_6 = Struct_2(var_1.c.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-548f, var_0.x, var_4.a)) - _wgslsmith_f_op_vec3_f32(-var_1.c.a.wyy)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_1.c.a.wxy)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(var_1.c.a.wxy * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 1818f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-329f - global0[_wgslsmith_index_u32(4294967295u, 15u)]) + 290f), _wgslsmith_f_op_f32(-var_3.x))), _wgslsmith_f_op_f32(f32(-1f) * -209f));
}

