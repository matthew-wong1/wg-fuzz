struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(vec3<i32>(-26943i, 1i, 21645i), vec3<f32>(-937f, 1173f, -386f), Struct_1(vec4<f32>(1469f, 1189f, -356f, 713f))), Struct_2(vec3<i32>(2147483647i, 1i, 1i), vec3<f32>(597f, 1000f, 774f), Struct_1(vec4<f32>(1324f, 164f, -604f, 391f))), Struct_2(vec3<i32>(19109i, -1i, -21747i), vec3<f32>(1139f, -1140f, -497f), Struct_1(vec4<f32>(-1065f, 346f, -360f, 464f))), Struct_2(vec3<i32>(2147483647i, 2147483647i, 39298i), vec3<f32>(-1425f, 2210f, 1490f), Struct_1(vec4<f32>(1000f, 860f, 620f, 576f))), Struct_2(vec3<i32>(-12283i, 20443i, -2466i), vec3<f32>(1102f, -1272f, 1082f), Struct_1(vec4<f32>(-760f, 1769f, 1075f, -1000f))), Struct_2(vec3<i32>(1i, 1i, -27612i), vec3<f32>(-429f, 1000f, 1292f), Struct_1(vec4<f32>(1412f, 1028f, -389f, -158f))), Struct_2(vec3<i32>(i32(-2147483648), -1i, 0i), vec3<f32>(-566f, 557f, -336f), Struct_1(vec4<f32>(-111f, -295f, -251f, 897f))), Struct_2(vec3<i32>(1i, -43243i, i32(-2147483648)), vec3<f32>(889f, 373f, -140f), Struct_1(vec4<f32>(1477f, 314f, 806f, 995f))), Struct_2(vec3<i32>(i32(-2147483648), -11097i, 15540i), vec3<f32>(-685f, -1000f, 1789f), Struct_1(vec4<f32>(790f, -292f, 437f, 1346f))), Struct_2(vec3<i32>(1i, 0i, i32(-2147483648)), vec3<f32>(271f, 1057f, -1000f), Struct_1(vec4<f32>(1000f, -796f, 506f, -280f))), Struct_2(vec3<i32>(20106i, -43104i, -1i), vec3<f32>(1989f, 391f, -1000f), Struct_1(vec4<f32>(-1000f, 957f, 1653f, 143f))), Struct_2(vec3<i32>(-1161i, 16993i, 7879i), vec3<f32>(177f, 1377f, 114f), Struct_1(vec4<f32>(1172f, 281f, -1036f, 1984f))), Struct_2(vec3<i32>(i32(-2147483648), 1i, 1i), vec3<f32>(135f, 842f, 1388f), Struct_1(vec4<f32>(-398f, -960f, -638f, 533f))));

var<private> global1: i32;

var<private> global2: array<bool, 18>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> f32 {
    global2 = array<bool, 18>();
    let var_0 = countOneBits(_wgslsmith_dot_vec3_u32(~firstLeadingBit(vec3<u32>(1u, 1u, 19002u)), vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.d, u_input.c, u_input.c), abs(vec3<u32>(4294967295u, u_input.d, u_input.d))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.c, u_input.d, 7925u), vec4<u32>(u_input.d, 4294967295u, u_input.c, u_input.d)), 33347u | u_input.d)));
    global2 = array<bool, 18>();
    let var_1 = any(select(!(!select(vec3<bool>(true, global2[_wgslsmith_index_u32(59815u, 18u)], global2[_wgslsmith_index_u32(var_0, 18u)]), vec3<bool>(global2[_wgslsmith_index_u32(6743u, 18u)], false, global2[_wgslsmith_index_u32(15612u, 18u)]), false)), select(vec3<bool>(all(vec4<bool>(true, true, global2[_wgslsmith_index_u32(17212u, 18u)], true)), !global2[_wgslsmith_index_u32(var_0, 18u)], global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, var_0), 18u)]), !select(vec3<bool>(false, true, global2[_wgslsmith_index_u32(var_0, 18u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 18u)], false), false), any(select(vec4<bool>(global2[_wgslsmith_index_u32(1u, 18u)], false, false, global2[_wgslsmith_index_u32(37606u, 18u)]), vec4<bool>(global2[_wgslsmith_index_u32(0u, 18u)], false, true, global2[_wgslsmith_index_u32(24276u, 18u)]), vec4<bool>(global2[_wgslsmith_index_u32(var_0, 18u)], global2[_wgslsmith_index_u32(0u, 18u)], global2[_wgslsmith_index_u32(var_0, 18u)], global2[_wgslsmith_index_u32(u_input.d, 18u)])))), select(true, ~1u < (1u << (u_input.c % 32u)), true)));
    var var_2 = global0[_wgslsmith_index_u32(~(~1368u), 13u)];
    return -434f;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec2<f32>) -> vec4<bool> {
    let var_0 = global0[_wgslsmith_index_u32(1u, 13u)];
    let var_1 = arg_0.c;
    let var_2 = _wgslsmith_f_op_f32(func_3());
    global1 = 36336i;
    let var_3 = Struct_1(_wgslsmith_div_vec4_f32(var_0.c.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(arg_0.c.a)))) + arg_0.c.a)));
    return vec4<bool>((~(~38153u) ^ _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d, u_input.d, 12006u), vec3<u32>(22479u, u_input.c, 34545u), vec3<u32>(89955u, 1u, 31984u)), vec3<u32>(u_input.c, 13901u, 78401u) | vec3<u32>(0u, u_input.c, u_input.c))) == u_input.c, arg_2.x < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) * var_1.a.x), !select(0i == select(-25059i, var_0.a.x, true), select(!global2[_wgslsmith_index_u32(15807u, 18u)], 28124i <= u_input.a, var_1.a.x < var_2), true), !(select(true, true, !arg_1.x) & true));
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_2, arg_3: bool) -> f32 {
    var var_0 = firstLeadingBit(vec2<u32>(~min(4294967295u, u_input.d) | u_input.d, ~firstLeadingBit(_wgslsmith_sub_u32(u_input.d, 50706u))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(trunc(-888f)), _wgslsmith_f_op_f32(-arg_2.c.a.x), -1000f, -130f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(537f, arg_2.b.x, arg_2.b.x, -1000f), _wgslsmith_f_op_vec4_f32(select(arg_2.c.a, vec4<f32>(-235f, -607f, -1000f, 161f), arg_0)), func_2(arg_2, arg_0, arg_2.c.a.xx))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2.c.a + vec4<f32>(1579f, arg_2.b.x, 766f, 530f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.c.a.x, arg_2.c.a.x, arg_2.b.x, arg_2.b.x) * vec4<f32>(arg_2.b.x, arg_2.b.x, arg_2.c.a.x, -1004f))))));
    global1 = u_input.a;
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(arg_2.c.a - arg_2.c.a));
    var var_3 = Struct_2(vec3<i32>(2147483647i, i32(-1i) * -countOneBits(arg_1), arg_1), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-346f, -121f, -1529f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.x, 801f, 805f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, -833f, -2050f))) + var_2.a.yyz), var_1);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-743f + _wgslsmith_f_op_f32(-367f - var_3.c.a.x)) * _wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_f_op_f32(ceil(var_3.b.x))));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: f32) -> vec3<f32> {
    let var_0 = vec4<f32>(1308f, _wgslsmith_f_op_f32(func_4(select(select(vec4<bool>(false, true, global2[_wgslsmith_index_u32(u_input.c, 18u)], global2[_wgslsmith_index_u32(u_input.c, 18u)]), vec4<bool>(global2[_wgslsmith_index_u32(arg_2, 18u)], true, global2[_wgslsmith_index_u32(arg_2, 18u)], true), true), func_2(Struct_2(vec3<i32>(-2147483647i, u_input.a, u_input.a), arg_0.a.xyz, arg_0), !vec4<bool>(false, global2[_wgslsmith_index_u32(33497u, 18u)], global2[_wgslsmith_index_u32(u_input.d, 18u)], global2[_wgslsmith_index_u32(1u, 18u)]), _wgslsmith_f_op_vec2_f32(-arg_0.a.xw)), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, global2[_wgslsmith_index_u32(arg_2, 18u)], global2[_wgslsmith_index_u32(28972u, 18u)], global2[_wgslsmith_index_u32(1u, 18u)]), false)), -countOneBits(firstLeadingBit(u_input.b.x)), global0[_wgslsmith_index_u32(u_input.d, 13u)], func_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, u_input.d, 18670u), vec4<u32>(u_input.d, 0u, arg_2, arg_2)), vec4<u32>(18164u, u_input.d, arg_2, u_input.d)), 13u)], !select(vec4<bool>(global2[_wgslsmith_index_u32(arg_2, 18u)], global2[_wgslsmith_index_u32(4294967295u, 18u)], false, true), vec4<bool>(global2[_wgslsmith_index_u32(4199u, 18u)], global2[_wgslsmith_index_u32(4294967295u, 18u)], false, global2[_wgslsmith_index_u32(7208u, 18u)]), global2[_wgslsmith_index_u32(arg_2, 18u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(arg_0.a.yy)))).x)), -1074f, _wgslsmith_f_op_f32(min(arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1852f * arg_3)))));
    let var_1 = 1u;
    var var_2 = -297f;
    var var_3 = Struct_2(reverseBits(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, -1i, 38338i), vec3<i32>(u_input.b.x, u_input.b.x, 0i)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.b.x, -20907i), vec3<i32>(2147483647i, 0i, 2147483647i)))) ^ (abs(select(vec3<i32>(83466i, 51799i, u_input.b.x), vec3<i32>(37586i, u_input.a, 10669i), vec3<bool>(false, global2[_wgslsmith_index_u32(44965u, 18u)], global2[_wgslsmith_index_u32(u_input.c, 18u)]))) | firstTrailingBit(select(vec3<i32>(1i, u_input.a, u_input.b.x), vec3<i32>(u_input.a, u_input.b.x, 56526i), vec3<bool>(global2[_wgslsmith_index_u32(u_input.c, 18u)], global2[_wgslsmith_index_u32(0u, 18u)], false)))), vec3<f32>(754f, -707f, var_0.x), Struct_1(vec4<f32>(-342f, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1088f, arg_0.a.x, global2[_wgslsmith_index_u32(0u, 18u)])) + _wgslsmith_f_op_f32(1131f + arg_1)), -1000f)));
    var var_4 = ~(~max(_wgslsmith_clamp_u32(arg_2, arg_2, 26387u) & firstTrailingBit(arg_2), _wgslsmith_clamp_u32(abs(1u), arg_2, _wgslsmith_mult_u32(var_1, var_1))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(max(-134f, _wgslsmith_f_op_f32(-var_3.c.a.x))), _wgslsmith_f_op_f32(443f + 484f), var_3.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 13>();
    global0 = array<Struct_2, 13>();
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(Struct_1(vec4<f32>(-1000f, -1180f, 897f, -1764f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -671f)), ~(~7069u), 337f)))));
    global1 = _wgslsmith_mult_i32(u_input.a, i32(-1i) * -24178i);
    global2 = array<bool, 18>();
    var var_1 = Struct_2(~(-(vec3<i32>(u_input.a, u_input.a, 0i) >> (vec3<u32>(u_input.d, 60184u, 1u) % vec3<u32>(32u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -2348f, -1175f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, var_0.x, -1396f)))))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(365f - 1377f), _wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_div_f32(2024f, var_0.x), -1242f) - vec4<f32>(1164f, _wgslsmith_f_op_vec3_f32(func_1(Struct_1(vec4<f32>(1161f, -1424f, -892f, var_0.x)), 743f, u_input.c, var_0.x)).x, var_0.x, -1112f))));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(63364u, 1u, 22641u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, u_input.d, u_input.c), vec3<u32>(0u, 15281u, u_input.d))), ~countOneBits(vec3<u32>(39780u, u_input.d, 23233u))), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(0u, u_input.d, u_input.c)), vec3<u32>(u_input.d, 28027u, u_input.c) << (vec3<u32>(u_input.d, 1u, 54355u) % vec3<u32>(32u))), select(vec3<bool>(false, select(true, false, global2[_wgslsmith_index_u32(8611u, 18u)]), global2[_wgslsmith_index_u32(1u, 18u)] && false), vec3<bool>(global2[_wgslsmith_index_u32(u_input.c, 18u)], true, true), true)), min(vec2<u32>(~u_input.c, _wgslsmith_mult_u32(25291u, 1u)), _wgslsmith_sub_vec2_u32(firstTrailingBit(abs(vec2<u32>(u_input.c, 4294967295u))), countOneBits(~vec2<u32>(u_input.c, u_input.c)))), ~(~firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, u_input.d, 103851u), vec3<u32>(u_input.d, u_input.c, u_input.c)))));
}

