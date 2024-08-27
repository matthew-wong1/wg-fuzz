struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: vec3<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6> = array<f32, 6>(306f, 1554f, -540f, 251f, 1000f, 1386f);

var<private> global1: bool = true;

var<private> global2: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(i32(-2147483648), vec4<f32>(247f, 502f, -581f, -647f), vec2<f32>(1292f, 500f), false), Struct_2(38612i, vec4<f32>(179f, 370f, 590f, -1140f), vec2<f32>(340f, 794f), true), Struct_2(-10650i, vec4<f32>(-238f, -460f, 925f, -439f), vec2<f32>(-652f, 1608f), true), Struct_2(2147483647i, vec4<f32>(1217f, 3165f, -1070f, -147f), vec2<f32>(-877f, 1121f), false), Struct_2(20504i, vec4<f32>(-1000f, -335f, -1016f, -801f), vec2<f32>(-760f, 573f), false), Struct_2(0i, vec4<f32>(233f, -1425f, 2439f, -709f), vec2<f32>(-1877f, 3517f), false), Struct_2(-1i, vec4<f32>(1005f, -883f, 353f, -488f), vec2<f32>(-1708f, 821f), false), Struct_2(-23574i, vec4<f32>(-463f, 2365f, -736f, -1668f), vec2<f32>(-350f, 1099f), true), Struct_2(2147483647i, vec4<f32>(571f, 643f, 942f, 473f), vec2<f32>(-1001f, 108f), false), Struct_2(0i, vec4<f32>(-750f, 764f, 1499f, -887f), vec2<f32>(1000f, 711f), false), Struct_2(28751i, vec4<f32>(-123f, 2706f, 160f, 655f), vec2<f32>(-1866f, 619f), false), Struct_2(i32(-2147483648), vec4<f32>(-659f, -1689f, -1387f, -782f), vec2<f32>(737f, 1276f), false), Struct_2(25217i, vec4<f32>(542f, 810f, 1053f, -270f), vec2<f32>(-1596f, 128f), false), Struct_2(76661i, vec4<f32>(-1615f, -1381f, -818f, -464f), vec2<f32>(1000f, -135f), false), Struct_2(2147483647i, vec4<f32>(1000f, 1280f, 963f, 1000f), vec2<f32>(460f, -1015f), true), Struct_2(1i, vec4<f32>(981f, -1279f, -1397f, 734f), vec2<f32>(-1985f, 647f), false), Struct_2(0i, vec4<f32>(-2239f, 1730f, -637f, -1461f), vec2<f32>(1216f, 861f), false), Struct_2(-1i, vec4<f32>(1420f, 1133f, -1795f, 1146f), vec2<f32>(1116f, 275f), false), Struct_2(78245i, vec4<f32>(-235f, 2185f, -530f, 286f), vec2<f32>(307f, -529f), false), Struct_2(-9574i, vec4<f32>(2293f, 461f, -1000f, -206f), vec2<f32>(-302f, -259f), true), Struct_2(1004i, vec4<f32>(795f, -775f, -206f, 1147f), vec2<f32>(-632f, 1803f), true), Struct_2(2147483647i, vec4<f32>(816f, 1098f, -2076f, -540f), vec2<f32>(-215f, 1066f), true), Struct_2(2147483647i, vec4<f32>(417f, 107f, 635f, -605f), vec2<f32>(425f, -1609f), false), Struct_2(50749i, vec4<f32>(841f, 791f, 1194f, -249f), vec2<f32>(733f, 738f), true), Struct_2(9607i, vec4<f32>(258f, -1018f, -508f, 611f), vec2<f32>(977f, 1544f), true), Struct_2(1i, vec4<f32>(-149f, 780f, -1675f, -1224f), vec2<f32>(-609f, -944f), false), Struct_2(-25422i, vec4<f32>(425f, -1005f, 701f, 1165f), vec2<f32>(-1202f, -1000f), true), Struct_2(-1i, vec4<f32>(-619f, 895f, 322f, 1290f), vec2<f32>(1029f, -1159f), false), Struct_2(1i, vec4<f32>(-239f, -1195f, 1367f, 1000f), vec2<f32>(2459f, -508f), false));

var<private> global3: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(28049i, vec4<f32>(1087f, -410f, 610f, -343f), vec2<f32>(837f, 459f), true), Struct_2(-34311i, vec4<f32>(463f, -830f, -1054f, -1083f), vec2<f32>(-1000f, 665f), true), Struct_2(14752i, vec4<f32>(-1753f, -553f, 1018f, -1207f), vec2<f32>(1122f, -1000f), true), Struct_2(0i, vec4<f32>(-1105f, 249f, -1032f, 593f), vec2<f32>(-926f, 1579f), false), Struct_2(0i, vec4<f32>(609f, 842f, -570f, 1779f), vec2<f32>(346f, 590f), false), Struct_2(1i, vec4<f32>(1000f, -730f, -1000f, -235f), vec2<f32>(-1689f, -166f), true), Struct_2(-1i, vec4<f32>(1033f, -217f, -1000f, -245f), vec2<f32>(-1000f, 261f), false), Struct_2(-29540i, vec4<f32>(1643f, -2022f, -1677f, -672f), vec2<f32>(-137f, 691f), true), Struct_2(0i, vec4<f32>(-1100f, -1655f, -1514f, 724f), vec2<f32>(938f, 314f), false), Struct_2(1i, vec4<f32>(-502f, 1696f, -1000f, 225f), vec2<f32>(1393f, -677f), true));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec4<f32>) -> u32 {
    global0 = array<f32, 6>();
    let var_0 = Struct_1(vec4<bool>(u_input.a.x < abs(u_input.b.x), all(!vec2<bool>(arg_0.d, true)), 1u > (min(4294967295u, arg_1) & _wgslsmith_add_u32(73337u, 3700u)), arg_0.d), vec3<i32>(-2147483647i, ~(i32(-1i) * -1i), arg_0.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_0.b.zz, arg_2.xw, vec2<bool>(false, true))) - arg_0.b.xz)))));
    global2 = array<Struct_2, 29>();
    global1 = false;
    global1 = !arg_0.d;
    return reverseBits(arg_1);
}

fn func_2(arg_0: u32) -> u32 {
    global1 = 1000f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-445f + _wgslsmith_f_op_f32(-836f - _wgslsmith_f_op_f32(min(-810f, global0[_wgslsmith_index_u32(5654u, 6u)])))));
    global0 = array<f32, 6>();
    let var_0 = vec4<bool>(!any(vec3<bool>(true, true, true)), true, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(func_3(global2[_wgslsmith_index_u32(~u_input.d.x, 29u)], ~u_input.c.x, vec4<f32>(global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(8453u, 6u)], global0[_wgslsmith_index_u32(5161u, 6u)], global0[_wgslsmith_index_u32(u_input.d.x, 6u)])), 6u)]) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -298f))), select(true, true, true));
    let var_1 = Struct_1(var_0, u_input.a, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, global0[_wgslsmith_index_u32(4294967295u, 6u)]))))));
    let var_2 = var_1;
    return countOneBits(arg_0);
}

fn func_1(arg_0: vec4<bool>, arg_1: i32, arg_2: bool, arg_3: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-718f, _wgslsmith_f_op_f32(-447f * _wgslsmith_f_op_f32(-1277f + _wgslsmith_f_op_f32(sign(arg_3.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1680f, 837f)))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(arg_3.c.x)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 6u)])))))));
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.d.x, _wgslsmith_add_u32(_wgslsmith_div_u32(0u, func_2(u_input.d.x)), select(1u, u_input.d.x, true)), u_input.d.x), abs(u_input.c)), 10u)];
    global2 = array<Struct_2, 29>();
    var var_2 = select(true, !arg_2 & false, -550f > _wgslsmith_f_op_f32(var_0.x - 458f));
    var var_3 = var_1.d;
    return u_input.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 29>();
    let var_0 = vec2<bool>(true, true);
    let var_1 = _wgslsmith_mod_u32((min(24938u << (1u % 32u), _wgslsmith_mult_u32(1u, 11969u)) ^ ~_wgslsmith_mult_u32(0u, u_input.c.x)) << (0u % 32u), max(countOneBits(u_input.c.x >> (1u % 32u)), select(26102u, func_1(vec4<bool>(var_0.x, var_0.x, false, false), 1i, var_0.x, Struct_1(vec4<bool>(true, true, true, true), u_input.b, vec2<f32>(-1078f, 708f))), false)));
    var var_2 = Struct_2(u_input.b.x, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-551f, global0[_wgslsmith_index_u32(u_input.d.x, 6u)], -1000f, -884f) + vec4<f32>(global0[_wgslsmith_index_u32(16774u, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(42600u, 6u)], global0[_wgslsmith_index_u32(1u, 6u)])))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0[_wgslsmith_index_u32(var_1, 6u)], -1000f, global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(9751u, 6u)]), vec4<f32>(-1154f, -255f, global0[_wgslsmith_index_u32(var_1, 6u)], global0[_wgslsmith_index_u32(20467u, 6u)]))), vec4<f32>(-124f, global0[_wgslsmith_index_u32(78561u, 6u)], global0[_wgslsmith_index_u32(56835u, 6u)], global0[_wgslsmith_index_u32(48572u, 6u)]))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-142f, _wgslsmith_f_op_f32(floor(-961f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(483f, global0[_wgslsmith_index_u32(u_input.c.x, 6u)]))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, global0[_wgslsmith_index_u32(43688u, 6u)]) + vec2<f32>(global0[_wgslsmith_index_u32(20992u, 6u)], global0[_wgslsmith_index_u32(22679u, 6u)]))))))), true);
    var var_3 = _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(countOneBits(countOneBits(-vec4<i32>(-45648i, var_2.a, -2147483647i, u_input.b.x))), ~abs(~vec4<i32>(u_input.a.x, -2147483647i, -1i, 2393i))), _wgslsmith_mult_i32(u_input.a.x, firstTrailingBit(1i)));
    let var_4 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.a, 27704i, var_2.a, -2147483647i), vec4<i32>(var_2.a, -3160i, -1i, u_input.a.x)), 90955i, 1i)) >> (~min(vec4<u32>(1u, 4294967295u, 0u, u_input.c.x), select(u_input.c, u_input.c, true)) % vec4<u32>(32u)), _wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(14672i, -2147483647i) >> (u_input.c.x % 32u), abs(_wgslsmith_sub_i32(var_2.a, -29077i))), -68958i | _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -7329i, u_input.b.x), vec3<i32>(var_2.a, u_input.a.x, 14236i)), ~(-1i))), -119f, _wgslsmith_f_op_vec3_f32(-var_2.b.zxz), -select(-u_input.b.zz, select(abs(vec2<i32>(0i, var_2.a)), -u_input.b.xy, var_2.a > u_input.b.x), false));
}

