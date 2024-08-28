struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
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

var<private> global0: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec2<f32>(-198f, 1998f), 85440i), Struct_1(vec2<f32>(1016f, -1713f), 46838i), Struct_1(vec2<f32>(-688f, 1432f), -29133i), Struct_1(vec2<f32>(1000f, 1273f), -29594i), Struct_1(vec2<f32>(-599f, -1092f), -1192i), Struct_1(vec2<f32>(122f, 541f), -53921i), Struct_1(vec2<f32>(931f, 2064f), 37743i), Struct_1(vec2<f32>(-376f, -1000f), 24587i), Struct_1(vec2<f32>(-410f, 1682f), 1i), Struct_1(vec2<f32>(986f, -1000f), 2147483647i), Struct_1(vec2<f32>(-1225f, -1744f), -1i), Struct_1(vec2<f32>(540f, 497f), -22444i), Struct_1(vec2<f32>(594f, -1316f), i32(-2147483648)), Struct_1(vec2<f32>(815f, -129f), -30686i));

var<private> global1: vec4<bool>;

var<private> global2: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec2<f32>(156f, -352f), 1i), Struct_1(vec2<f32>(-1294f, -878f), -2785i), Struct_1(vec2<f32>(-1185f, 420f), 0i), Struct_1(vec2<f32>(392f, 1153f), 38544i), Struct_1(vec2<f32>(-723f, 1007f), -1i), Struct_1(vec2<f32>(1000f, 1020f), 45383i), Struct_1(vec2<f32>(1000f, 1273f), 2147483647i), Struct_1(vec2<f32>(-605f, 334f), -7201i), Struct_1(vec2<f32>(1064f, 1000f), -1i), Struct_1(vec2<f32>(1213f, -328f), 2147483647i), Struct_1(vec2<f32>(1120f, -965f), -1i), Struct_1(vec2<f32>(-188f, -289f), 21523i), Struct_1(vec2<f32>(-776f, -1207f), 1i), Struct_1(vec2<f32>(-1240f, -741f), -29012i), Struct_1(vec2<f32>(398f, 2068f), 1i), Struct_1(vec2<f32>(-1000f, -473f), -1i), Struct_1(vec2<f32>(-1780f, -2549f), 81866i), Struct_1(vec2<f32>(111f, 701f), 74695i), Struct_1(vec2<f32>(2133f, -2264f), 2147483647i), Struct_1(vec2<f32>(-611f, -475f), 22134i), Struct_1(vec2<f32>(1555f, 172f), 1i), Struct_1(vec2<f32>(-553f, -255f), -9533i), Struct_1(vec2<f32>(191f, -623f), -1i), Struct_1(vec2<f32>(-810f, 1087f), 0i), Struct_1(vec2<f32>(-282f, 341f), 0i), Struct_1(vec2<f32>(-289f, -1133f), i32(-2147483648)), Struct_1(vec2<f32>(287f, 1198f), 2147483647i), Struct_1(vec2<f32>(227f, 2173f), -33714i), Struct_1(vec2<f32>(647f, -709f), -35227i), Struct_1(vec2<f32>(1000f, 769f), 17786i), Struct_1(vec2<f32>(-1173f, -744f), -1i));

var<private> global3: Struct_1 = Struct_1(vec2<f32>(223f, -341f), 2147483647i);

var<private> global4: array<u32, 11> = array<u32, 11>(0u, 1u, 4294967295u, 16054u, 44904u, 18052u, 5149u, 29716u, 11381u, 4294967295u, 1u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec2<u32>) -> i32 {
    global2 = array<Struct_1, 31>();
    var var_0 = vec2<i32>(_wgslsmith_mult_i32(0i | select(u_input.a, i32(-1i) * -49106i, true), 1i), _wgslsmith_div_i32(arg_1.b, 27605i));
    var var_1 = global1.x;
    let var_2 = vec4<f32>(global3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(922f - 171f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(723f)), _wgslsmith_f_op_f32(843f * -1850f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x + arg_1.a.x)))));
    global3 = Struct_1(arg_1.a, u_input.a);
    return abs(global3.b);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(global3.a, func_3(false, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(0u, 98165u, 4294967295u, 45143u)), countOneBits(vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], u_input.c, u_input.d, global4[_wgslsmith_index_u32(0u, 11u)]))), 14u)], select(vec2<u32>(4558u, 1u), vec2<u32>(1u, u_input.b), vec2<bool>(global1.x, false)) & ~vec2<u32>(global4[_wgslsmith_index_u32(u_input.b, 11u)], u_input.c), _wgslsmith_mult_vec2_u32(vec2<u32>(27686u, 4294967295u), ~vec2<u32>(global4[_wgslsmith_index_u32(42176u, 11u)], 48134u))) << (~(~(4294967295u ^ global4[_wgslsmith_index_u32(4294967295u, 11u)])) % 32u));
    var var_1 = -1109f;
    global2 = array<Struct_1, 31>();
    global4 = array<u32, 11>();
    global4 = array<u32, 11>();
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -585f) - var_0.a.x)), global3.a.x), var_0.b << (global4[_wgslsmith_index_u32(~4294967295u, 11u)] % 32u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, ~_wgslsmith_sub_u32(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(48396u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 11u)], 11u)]), ~1u), 11u)], ~(~u_input.c))), 14u)];
    let var_1 = global2[_wgslsmith_index_u32(79548u & _wgslsmith_div_u32(~min(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 11u)], 11u)], 4294967295u) << (u_input.c % 32u), 22252u), 31u)];
    global4 = array<u32, 11>();
    var var_2 = 0u;
    var var_3 = vec3<bool>(any(!vec2<bool>(false, global3.a.x <= 188f)), ~_wgslsmith_sub_u32(~u_input.c, min(1u, u_input.b)) < abs(global4[_wgslsmith_index_u32(~(~global4[_wgslsmith_index_u32(u_input.d, 11u)]), 11u)]), true & all(global1.wyy));
    return global0[_wgslsmith_index_u32(u_input.b, 14u)];
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = vec3<i32>(u_input.a, ((26532i | u_input.a) << ((select(4294967295u, 51936u, global1.x) >> (global4[_wgslsmith_index_u32(u_input.c, 11u)] % 32u)) % 32u)) & u_input.a, arg_3.b);
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1739f, 1000f, 1442f)))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(346f, arg_1.a.x, arg_0.a.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global3.a.x, _wgslsmith_f_op_f32(abs(-750f)), _wgslsmith_f_op_f32(-arg_0.a.x)))))));
    let var_2 = false;
    var var_3 = func_2();
    let var_4 = func_2();
    return global1.zy;
}

fn func_1(arg_0: f32, arg_1: vec4<i32>) -> vec2<i32> {
    var var_0 = !select(global1.zw, func_5(Struct_1(vec2<f32>(1231f, -319f), 26476i), func_4(func_2(), global2[_wgslsmith_index_u32(~4294967295u, 31u)], global3.b ^ global3.b, func_2()), func_4(Struct_1(vec2<f32>(224f, global3.a.x), -1i), Struct_1(global3.a, u_input.a), 0i, Struct_1(vec2<f32>(-1343f, global3.a.x), arg_1.x)), global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(71868u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(13333u, 11u)], 11u)]), 31u)]), true);
    let var_1 = _wgslsmith_f_op_f32(-arg_0) != 1387f;
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(203f - _wgslsmith_f_op_f32(751f * 191f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1000f)), global3.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_4(global2[_wgslsmith_index_u32(1u, 31u)], global2[_wgslsmith_index_u32(47854u, 31u)], global3.b, global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.c, 11u)], 14u)]).a.x) * _wgslsmith_f_op_f32(318f * global3.a.x)), _wgslsmith_f_op_f32(round(246f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global3.a.x, -139f, 448f, -1000f)))))) + vec4<f32>(-1724f, -657f, _wgslsmith_div_f32(global3.a.x, -1044f), global3.a.x)));
    let var_3 = 56247u;
    let var_4 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2373f))), global3.a.x));
    return arg_1.xw;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -func_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(min(global3.a.x, 1604f))) + _wgslsmith_f_op_f32(-960f - -257f)), vec4<i32>(-1i) * -(vec4<i32>(global3.b, 2147483647i, u_input.a, 1i) ^ vec4<i32>(u_input.a, -9341i, global3.b, global3.b)));
    global3 = Struct_1(vec2<f32>(938f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-583f, 1000f) * _wgslsmith_f_op_f32(global3.a.x * global3.a.x)))), -var_0.x);
    var var_1 = ~(~vec2<u32>(~(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 11u)], 11u)] >> (0u % 32u)), 1u >> (~u_input.d % 32u)));
    var var_2 = select(!(!(global1.x | (global3.a.x > global3.a.x))), select(true, all(vec2<bool>(false, global1.x)) & true, any(global1.xx) | false) || !global1.x, global1.x);
    var_1 = ~firstTrailingBit(firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(var_1.x, 53338u), vec2<u32>(1u, var_1.x)))) | ~(~vec2<u32>(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(40553u, 11u)], 11u)], ~9398u));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mod_u32(4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c, 4294967295u), 11u)], 11u)])));
}

