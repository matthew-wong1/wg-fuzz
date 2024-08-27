struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec4<f32>(-654f, 1000f, 215f, 1985f), 20007u, -570f, vec3<bool>(true, false, true)), Struct_1(vec4<f32>(199f, 1658f, 801f, 1009f), 20956u, -2671f, vec3<bool>(true, false, false)), Struct_1(vec4<f32>(1249f, 428f, 1221f, -141f), 4294967295u, 462f, vec3<bool>(false, true, false)), Struct_1(vec4<f32>(-1954f, 109f, -421f, 591f), 30316u, -754f, vec3<bool>(true, false, false)), Struct_1(vec4<f32>(-804f, -1352f, -263f, -1579f), 0u, 1180f, vec3<bool>(false, true, false)), Struct_1(vec4<f32>(974f, 642f, -1692f, 836f), 4294967295u, -1122f, vec3<bool>(false, false, false)), Struct_1(vec4<f32>(257f, 1000f, -1065f, 1000f), 4294967295u, 788f, vec3<bool>(false, true, true)), Struct_1(vec4<f32>(-705f, -1015f, 534f, 240f), 101979u, -1170f, vec3<bool>(true, false, false)), Struct_1(vec4<f32>(-484f, -948f, -1811f, -1653f), 13397u, -319f, vec3<bool>(true, false, true)), Struct_1(vec4<f32>(-441f, 1236f, 1150f, -1921f), 38272u, 1697f, vec3<bool>(false, false, false)), Struct_1(vec4<f32>(552f, -851f, -1376f, 135f), 25872u, 479f, vec3<bool>(true, false, true)), Struct_1(vec4<f32>(-1409f, 731f, 1000f, 1800f), 4547u, -548f, vec3<bool>(true, false, true)), Struct_1(vec4<f32>(238f, -2004f, 2081f, 265f), 19719u, -559f, vec3<bool>(true, false, true)), Struct_1(vec4<f32>(-577f, -1313f, 534f, -139f), 13032u, -369f, vec3<bool>(false, false, false)), Struct_1(vec4<f32>(-1294f, 556f, -1000f, 634f), 1u, -394f, vec3<bool>(false, false, false)), Struct_1(vec4<f32>(1050f, -232f, 1576f, -1960f), 36473u, 1000f, vec3<bool>(false, false, false)), Struct_1(vec4<f32>(-172f, 470f, 192f, 531f), 57921u, 1059f, vec3<bool>(true, false, false)), Struct_1(vec4<f32>(1226f, -1666f, -942f, 1000f), 14562u, -1188f, vec3<bool>(true, true, false)), Struct_1(vec4<f32>(601f, 515f, -506f, 1584f), 4294967295u, 734f, vec3<bool>(false, true, true)), Struct_1(vec4<f32>(309f, 1025f, 212f, -1918f), 0u, -532f, vec3<bool>(false, false, true)), Struct_1(vec4<f32>(543f, -747f, 1520f, -2039f), 0u, -361f, vec3<bool>(false, true, true)), Struct_1(vec4<f32>(736f, -1000f, -579f, -784f), 13771u, -110f, vec3<bool>(false, true, false)));

var<private> global2: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec4<f32>(1314f, -1071f, 1806f, -1000f), 7947u, 810f, vec3<bool>(false, true, true)), Struct_1(vec4<f32>(199f, -187f, -338f, 1000f), 26602u, 1592f, vec3<bool>(false, false, true)), Struct_1(vec4<f32>(1127f, -672f, -676f, -1588f), 1u, -515f, vec3<bool>(true, false, true)), Struct_1(vec4<f32>(1906f, 654f, -593f, 294f), 81111u, 1405f, vec3<bool>(true, false, false)), Struct_1(vec4<f32>(848f, -809f, 459f, 490f), 4294967295u, 390f, vec3<bool>(false, true, false)), Struct_1(vec4<f32>(-445f, -1000f, 1108f, 148f), 51761u, -1229f, vec3<bool>(false, true, true)), Struct_1(vec4<f32>(1321f, -419f, 1648f, 627f), 45756u, -547f, vec3<bool>(false, true, false)), Struct_1(vec4<f32>(890f, -468f, 925f, 495f), 0u, 1001f, vec3<bool>(false, false, false)), Struct_1(vec4<f32>(-1000f, -1178f, -1025f, -1276f), 54560u, 508f, vec3<bool>(true, true, false)), Struct_1(vec4<f32>(-150f, -1057f, -556f, 1407f), 1u, 183f, vec3<bool>(false, true, false)), Struct_1(vec4<f32>(-1193f, 563f, 749f, -288f), 12040u, -139f, vec3<bool>(true, false, true)), Struct_1(vec4<f32>(1723f, 787f, 665f, -202f), 0u, 878f, vec3<bool>(false, false, true)), Struct_1(vec4<f32>(-679f, 1000f, 1753f, 1283f), 1u, -482f, vec3<bool>(true, true, true)), Struct_1(vec4<f32>(1668f, 120f, 1000f, 1246f), 4294967295u, -268f, vec3<bool>(false, true, false)), Struct_1(vec4<f32>(1099f, 980f, -374f, -237f), 44085u, 310f, vec3<bool>(false, true, true)), Struct_1(vec4<f32>(-398f, -1068f, 580f, -285f), 0u, -1157f, vec3<bool>(false, false, true)), Struct_1(vec4<f32>(-195f, 1122f, -974f, 1711f), 14598u, 556f, vec3<bool>(false, true, false)), Struct_1(vec4<f32>(-1043f, -135f, -1000f, -1778f), 54586u, -1000f, vec3<bool>(false, true, false)), Struct_1(vec4<f32>(-2173f, -753f, -357f, -1930f), 4294967295u, 574f, vec3<bool>(true, false, false)), Struct_1(vec4<f32>(-1000f, 1142f, -635f, 390f), 15864u, -1270f, vec3<bool>(true, false, true)), Struct_1(vec4<f32>(920f, 860f, 532f, -2100f), 4695u, 735f, vec3<bool>(true, true, true)), Struct_1(vec4<f32>(2235f, -565f, -949f, -1000f), 3763u, -2351f, vec3<bool>(true, true, true)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>) -> bool {
    let var_0 = u_input.b.x;
    var var_1 = select(select(vec4<bool>(arg_1.d.x, arg_0.d.x, true, false), select(!select(vec4<bool>(arg_1.d.x, true, arg_1.d.x, arg_2.x), vec4<bool>(arg_0.d.x, arg_1.d.x, arg_2.x, false), arg_0.d.x), select(!vec4<bool>(arg_0.d.x, arg_2.x, false, arg_2.x), !vec4<bool>(arg_0.d.x, arg_2.x, arg_0.d.x, true), vec4<bool>(arg_2.x, false, true, arg_0.d.x)), !(!vec4<bool>(arg_0.d.x, arg_2.x, arg_0.d.x, false))), select(!(!vec4<bool>(arg_1.d.x, false, false, arg_1.d.x)), vec4<bool>(true, true, true, true), !(!arg_0.d.x))), !vec4<bool>(all(select(arg_0.d.xz, arg_2, arg_2)), true && any(vec4<bool>(false, false, arg_2.x, true)), _wgslsmith_f_op_f32(-1461f * arg_1.a.x) != _wgslsmith_f_op_f32(round(arg_1.c)), arg_0.d.x), arg_1.c != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    global0 = ~4294967295u;
    let var_2 = arg_1;
    let var_3 = abs(_wgslsmith_add_i32(-_wgslsmith_div_i32(-u_input.b.x, _wgslsmith_sub_i32(var_0, u_input.b.x)), countOneBits(u_input.a) << (_wgslsmith_mult_u32(max(arg_0.b, arg_1.b), ~36683u) % 32u)));
    return var_1.x && arg_1.d.x;
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: vec2<i32>, arg_3: vec2<bool>) -> u32 {
    var var_0 = !select(!vec2<bool>(all(vec4<bool>(arg_0, arg_0, arg_0, arg_0)), any(arg_3)), vec2<bool>(arg_3.x, true), true);
    let var_1 = ~_wgslsmith_add_vec3_u32(u_input.c, u_input.c) & vec3<u32>(u_input.c.x, ~_wgslsmith_add_u32(_wgslsmith_mult_u32(0u, 28404u), ~4294967295u), _wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(55583u, 42746u, u_input.e.x, u_input.c.x), vec4<u32>(10173u, 0u, u_input.c.x, 4294967295u)), vec4<u32>(u_input.c.x & 1u, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(5570u, 55893u, u_input.e.x, u_input.c.x), vec4<u32>(u_input.c.x, u_input.e.x, 18750u, 1u)), ~4294967295u)));
    var var_2 = global1[_wgslsmith_index_u32(~(_wgslsmith_sub_u32(~u_input.c.x, u_input.c.x) ^ u_input.c.x), 22u)];
    let var_3 = vec2<u32>(u_input.c.x & (var_1.x ^ max(var_2.b & u_input.e.x, ~4294967295u)), 4294967295u);
    let var_4 = 1i;
    return 4294967295u;
}

fn func_2(arg_0: bool, arg_1: bool) -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_mult_u32(4294967295u, ~u_input.e.x) >> (~u_input.c.x % 32u), _wgslsmith_mod_u32(u_input.c.x, reverseBits(1u)) >> (u_input.c.x % 32u)), 22u)];
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_4(true, _wgslsmith_f_op_f32(select(-549f, _wgslsmith_f_op_f32(max(624f, _wgslsmith_f_op_f32(-1585f + var_0.a.x))), !var_0.d.x)), u_input.b, select(select(select(var_0.d.zy, var_0.d.xy, vec2<bool>(true, false)), var_0.d.zz, all(vec3<bool>(true, true, false))), !var_0.d.yy, func_3(Struct_1(vec4<f32>(var_0.a.x, 1762f, var_0.c, var_0.a.x), u_input.c.x, var_0.c, var_0.d), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(50898u, u_input.c.x), 22u)], select(var_0.d.xy, vec2<bool>(false, true), arg_1)))), ~u_input.e.x), 22u)];
    var_1 = global1[_wgslsmith_index_u32(var_1.b, 22u)];
    global0 = ~u_input.e.x;
    var_1 = global2[_wgslsmith_index_u32(u_input.c.x, 22u)];
    return Struct_1(var_0.a, var_1.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -630f), var_0.a.x)), _wgslsmith_f_op_f32(-var_0.a.x))), !(!select(!var_0.d, vec3<bool>(true, false, var_0.d.x), !var_0.d)));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    global2 = array<Struct_1, 22>();
    var var_0 = -vec4<i32>(firstLeadingBit(~51028i), 0i, ~u_input.a, _wgslsmith_sub_i32(~(-12611i), u_input.a) | -1i);
    var var_1 = func_2(true, !all(select(!arg_2.d.yz, arg_2.d.yy, arg_1.d.yy)));
    global2 = array<Struct_1, 22>();
    var var_2 = ~(var_0.x >> (u_input.e.x % 32u));
    return 1104f;
}

fn func_1(arg_0: u32, arg_1: vec2<i32>, arg_2: u32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(~u_input.e, func_2(true, false), func_2(true, true))) * 1000f))));
    global2 = array<Struct_1, 22>();
    global0 = ~select(10282u, ~_wgslsmith_dot_vec3_u32(u_input.c, ~u_input.c), func_3(Struct_1(vec4<f32>(-1202f, 2364f, 263f, -340f), ~arg_2, 1000f, func_2(false, true).d), global2[_wgslsmith_index_u32(10242u, 22u)], !select(vec2<bool>(true, false), vec2<bool>(true, true), true)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2174f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(u_input.e, func_2(true, true), Struct_1(vec4<f32>(-261f, 1632f, 1794f, 691f), 11127u, 335f, vec3<bool>(true, true, false)))))) - _wgslsmith_f_op_f32(sign(554f)));
    let var_2 = true;
    return _wgslsmith_f_op_f32(select(635f, var_1, !(!any(vec2<bool>(true, var_2)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(func_1(u_input.e.x, vec2<i32>(0i, u_input.b.x) >> (u_input.e % vec2<u32>(32u)), 4294967295u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(763f)) * _wgslsmith_f_op_f32(f32(-1f) * -1640f)), -972f)), vec4<f32>(101f, -761f, _wgslsmith_f_op_f32(1409f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2207f), 154f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-829f)))))));
    global1 = array<Struct_1, 22>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0 * var_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2157f, var_0.x, var_0.x, var_0.x)))), var_0));
    let var_2 = vec3<bool>(any(select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), vec2<bool>(true, true), true)) || !func_3(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 26439u), 22u)], global2[_wgslsmith_index_u32(67002u ^ u_input.c.x, 22u)], select(vec2<bool>(true, false), vec2<bool>(true, false), true)), true, all(func_2(all(vec2<bool>(true, true)), false).d));
    global0 = u_input.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, ~firstLeadingBit(vec3<u32>(0u, 4294967295u, u_input.e.x) & u_input.c), ~(~(~vec4<i32>(u_input.a, -1226i, -56137i, -42647i))) >> (~(~countOneBits(vec4<u32>(4294967295u, u_input.e.x, u_input.c.x, u_input.c.x))) % vec4<u32>(32u)));
}

