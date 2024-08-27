struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: f32,
    d: vec3<f32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13> = array<u32, 13>(8869u, 11437u, 2191u, 1u, 12750u, 13329u, 11693u, 59139u, 0u, 0u, 4294967295u, 0u, 1u);

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(vec4<bool>(false, false, true, false), 238f, 206f, vec3<f32>(-519f, -168f, -312f), vec3<i32>(9489i, 0i, 51153i));

var<private> global3: i32;

var<private> global4: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec4<bool>(true, false, true, true), 1016f, -467f, vec3<f32>(-100f, 1000f, 419f), vec3<i32>(0i, 1i, 0i)), Struct_1(vec4<bool>(false, false, false, true), 1546f, 620f, vec3<f32>(-1354f, -1205f, -561f), vec3<i32>(12976i, -10589i, i32(-2147483648))), Struct_1(vec4<bool>(false, true, true, true), -1000f, -895f, vec3<f32>(-1301f, -219f, -1394f), vec3<i32>(2147483647i, -7077i, 0i)), Struct_1(vec4<bool>(false, false, true, true), 579f, -563f, vec3<f32>(2647f, 210f, 827f), vec3<i32>(0i, -30615i, 5968i)), Struct_1(vec4<bool>(false, false, false, false), -329f, -1128f, vec3<f32>(1803f, -563f, 1347f), vec3<i32>(0i, 58327i, -57803i)), Struct_1(vec4<bool>(true, true, false, true), -412f, 1000f, vec3<f32>(875f, 1501f, 741f), vec3<i32>(1i, i32(-2147483648), 1i)), Struct_1(vec4<bool>(false, false, false, true), 465f, 656f, vec3<f32>(-1368f, 334f, -1042f), vec3<i32>(27935i, 18700i, 1i)), Struct_1(vec4<bool>(false, false, false, false), 423f, 935f, vec3<f32>(508f, -100f, -1164f), vec3<i32>(0i, 17594i, 25443i)), Struct_1(vec4<bool>(true, false, true, true), 2052f, -321f, vec3<f32>(112f, -1000f, -415f), vec3<i32>(-1i, 2147483647i, 0i)), Struct_1(vec4<bool>(true, false, false, false), 130f, -917f, vec3<f32>(-221f, -1994f, -110f), vec3<i32>(19754i, i32(-2147483648), i32(-2147483648))), Struct_1(vec4<bool>(true, false, true, false), 135f, 1373f, vec3<f32>(2662f, -1082f, 1586f), vec3<i32>(-26415i, 39482i, 2147483647i)), Struct_1(vec4<bool>(false, false, true, true), -2304f, 253f, vec3<f32>(875f, -853f, -1000f), vec3<i32>(2147483647i, 2147483647i, -14253i)), Struct_1(vec4<bool>(true, false, true, false), -730f, 1816f, vec3<f32>(-1089f, 1187f, -719f), vec3<i32>(1i, 22974i, -1i)), Struct_1(vec4<bool>(false, false, false, true), -327f, 263f, vec3<f32>(-838f, 1000f, 609f), vec3<i32>(i32(-2147483648), 1i, -7783i)), Struct_1(vec4<bool>(false, false, false, false), 106f, -270f, vec3<f32>(503f, -1443f, -766f), vec3<i32>(2147483647i, 1i, 34628i)), Struct_1(vec4<bool>(false, false, false, false), -611f, -654f, vec3<f32>(-297f, -2494f, -1297f), vec3<i32>(2071i, -48687i, 1i)), Struct_1(vec4<bool>(false, false, true, false), -1561f, -775f, vec3<f32>(1363f, 192f, -175f), vec3<i32>(15590i, 27776i, 0i)), Struct_1(vec4<bool>(false, true, false, true), 1116f, 400f, vec3<f32>(-698f, 1286f, -1596f), vec3<i32>(29693i, -30224i, -6348i)), Struct_1(vec4<bool>(true, false, false, false), -398f, 582f, vec3<f32>(-1461f, 424f, 660f), vec3<i32>(27252i, 0i, -11746i)), Struct_1(vec4<bool>(true, true, true, true), -828f, 2055f, vec3<f32>(1744f, 836f, 880f), vec3<i32>(i32(-2147483648), i32(-2147483648), -12120i)), Struct_1(vec4<bool>(false, true, true, true), -1261f, 1756f, vec3<f32>(-1000f, 192f, -342f), vec3<i32>(-15497i, 0i, -1i)), Struct_1(vec4<bool>(false, false, true, true), -1164f, 317f, vec3<f32>(-575f, 702f, -739f), vec3<i32>(1i, 0i, i32(-2147483648))), Struct_1(vec4<bool>(true, false, true, true), 574f, -1204f, vec3<f32>(-1822f, 1951f, 312f), vec3<i32>(2147483647i, 22717i, -30902i)), Struct_1(vec4<bool>(true, false, true, true), -1771f, -144f, vec3<f32>(1504f, 1715f, 506f), vec3<i32>(1041i, 1i, -14107i)), Struct_1(vec4<bool>(false, false, false, true), 949f, -776f, vec3<f32>(-508f, -242f, 1382f), vec3<i32>(-1i, -1i, 1i)), Struct_1(vec4<bool>(false, false, true, true), 648f, -984f, vec3<f32>(307f, -1292f, 613f), vec3<i32>(2147483647i, 1i, -9754i)), Struct_1(vec4<bool>(true, false, false, false), -266f, -355f, vec3<f32>(-680f, 1000f, -1541f), vec3<i32>(-26061i, 1i, 0i)), Struct_1(vec4<bool>(true, true, false, false), -530f, -245f, vec3<f32>(-323f, -586f, -880f), vec3<i32>(0i, i32(-2147483648), -4407i)), Struct_1(vec4<bool>(true, true, false, false), 1000f, -828f, vec3<f32>(-478f, -1000f, 432f), vec3<i32>(0i, 11271i, 32164i)), Struct_1(vec4<bool>(false, true, true, false), 257f, 120f, vec3<f32>(246f, -672f, -1000f), vec3<i32>(-51325i, -5611i, -2355i)), Struct_1(vec4<bool>(true, false, false, true), 520f, -345f, vec3<f32>(-1000f, -209f, -910f), vec3<i32>(0i, 0i, 11482i)));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_2(arg_0: vec2<u32>) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.b)) - global2.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + global2.d.x) + global2.d.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.b, 334f)), global1.c)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: i32) -> vec4<bool> {
    global4 = array<Struct_1, 31>();
    global3 = -64178i;
    return arg_2.a;
}

fn func_1(arg_0: f32) -> vec4<f32> {
    return _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 193f, 493f, global1.d.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(1183f, 930f)), global2.b, 716f, arg_0) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-553f, global1.d.x, -939f, global2.d.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b, -550f, global1.b, global1.b) - vec4<f32>(226f, arg_0, -758f, 417f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-858f, -1973f, 399f, 1373f)) - _wgslsmith_f_op_vec4_f32(func_2(u_input.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c, arg_0, global1.b, arg_0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b, arg_0, global1.c, -386f) * vec4<f32>(-996f, arg_0, -343f, 999f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(700f, -1769f, 873f, arg_0) - vec4<f32>(arg_0, arg_0, 1553f, 1167f)))), func_3(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 1u ^ global0[_wgslsmith_index_u32(u_input.b.x, 13u)]), 31u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(-488f, global1.b, arg_0, -583f)), global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(4294967295u, 13u)], u_input.b.x), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(select(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], global0[_wgslsmith_index_u32(96120u, 13u)], global2.a.x), 13u)], 13u)]), 31u)], 55813i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i;
    global3 = -global1.e.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.c))))) * vec4<f32>(global2.d.x, global1.c, _wgslsmith_f_op_vec4_f32(func_2(~u_input.c)).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.d.x)) * _wgslsmith_f_op_f32(-315f - global2.b)))));
    var var_2 = firstLeadingBit(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(select(_wgslsmith_clamp_u32(1u, 1u, 75990u), ~_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(83832u, 13u)], u_input.c.x), false), 1u >> ((_wgslsmith_div_u32(u_input.b.x, u_input.b.x) >> (4294967295u % 32u)) % 32u)), 13u)]);
    var var_3 = min(1u, ~firstLeadingBit(global0[_wgslsmith_index_u32(u_input.b.x, 13u)]));
    global2 = Struct_1(vec4<bool>(true, any(select(select(vec3<bool>(global1.a.x, false, false), vec3<bool>(false, global2.a.x, global1.a.x), global1.a.wyx), global2.a.yyz, select(global1.a.yzz, global1.a.wwz, vec3<bool>(global2.a.x, true, false)))), func_3(Struct_1(global2.a, -1360f, -2040f, global2.d, vec3<i32>(global1.e.x, u_input.d.x, u_input.d.x)), _wgslsmith_div_vec4_f32(vec4<f32>(-1095f, 547f, 1000f, -428f), vec4<f32>(global1.b, -1508f, 498f, var_1.x)), global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(18681u, 36669u), 31u)], _wgslsmith_div_i32(u_input.a.x, 10342i)).x & !global2.a.x, any(global2.a.yz)), var_1.x, _wgslsmith_div_f32(global2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -294f))), global2.d, global2.e);
    var var_4 = !(!(!global1.a));
    var var_5 = Struct_1(vec4<bool>(global1.a.x, !(var_4.x & true), all(func_3(Struct_1(vec4<bool>(false, false, global1.a.x, var_4.x), var_1.x, var_1.x, vec3<f32>(-2664f, global2.d.x, 1929f), vec3<i32>(u_input.a.x, -1i, -1i)), vec4<f32>(var_1.x, global2.d.x, 1182f, global1.b), global4[_wgslsmith_index_u32(1u, 31u)], global1.e.x << (u_input.b.x % 32u))), ~103159u > u_input.c.x), var_1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(482f)), 1028f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_1.xzz)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.zyx * vec3<f32>(625f, global1.c, global1.c)))), reverseBits(_wgslsmith_mod_vec3_i32(global2.e & ~u_input.d.yxx, -_wgslsmith_div_vec3_i32(vec3<i32>(-5792i, global1.e.x, u_input.d.x), global2.e))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_mult_vec2_u32(~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 13u)], 13u)], 1u), u_input.c)));
}

