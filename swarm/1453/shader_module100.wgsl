struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec3<f32>,
    d: vec3<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(-769f, Struct_2(1916f, 4294967295u, vec4<f32>(-590f, -1000f, -105f, -402f)), vec3<f32>(296f, -287f, 598f), vec3<f32>(-1000f, 808f, -626f), 20863i), Struct_3(207f, Struct_2(-260f, 9481u, vec4<f32>(1520f, 1162f, 294f, 395f)), vec3<f32>(-2553f, 582f, 161f), vec3<f32>(-1078f, -755f, 419f), -35551i), Struct_3(1534f, Struct_2(1194f, 0u, vec4<f32>(-778f, -1559f, 995f, 1820f)), vec3<f32>(570f, 1155f, 584f), vec3<f32>(1620f, 1629f, 1744f), 65882i), Struct_3(-232f, Struct_2(-1571f, 25169u, vec4<f32>(-1112f, 641f, 803f, 976f)), vec3<f32>(-1000f, -1237f, 141f), vec3<f32>(1776f, -162f, 773f), i32(-2147483648)), Struct_3(2023f, Struct_2(-699f, 0u, vec4<f32>(-654f, 244f, -1000f, -1024f)), vec3<f32>(271f, -212f, -1214f), vec3<f32>(-652f, -927f, -1000f), -1i), Struct_3(1635f, Struct_2(1504f, 0u, vec4<f32>(-142f, 2125f, 608f, 1142f)), vec3<f32>(1835f, 868f, -1159f), vec3<f32>(-398f, -332f, 381f), -1i), Struct_3(1046f, Struct_2(-499f, 21189u, vec4<f32>(-197f, 530f, -761f, -686f)), vec3<f32>(878f, 1352f, -861f), vec3<f32>(-1000f, -1848f, 196f), 1i), Struct_3(-1044f, Struct_2(946f, 0u, vec4<f32>(-604f, 947f, 317f, -578f)), vec3<f32>(1304f, -913f, -1000f), vec3<f32>(-1706f, 605f, 594f), 0i), Struct_3(-1000f, Struct_2(-953f, 0u, vec4<f32>(188f, 274f, -723f, -583f)), vec3<f32>(431f, 1451f, 138f), vec3<f32>(122f, -1528f, 1587f), 1i), Struct_3(317f, Struct_2(259f, 4294967295u, vec4<f32>(1360f, 397f, -300f, -1407f)), vec3<f32>(-578f, 163f, -346f), vec3<f32>(1495f, -213f, 1000f), 22711i), Struct_3(407f, Struct_2(438f, 34576u, vec4<f32>(124f, -255f, 1397f, -1658f)), vec3<f32>(-147f, -681f, 575f), vec3<f32>(1403f, 799f, -1252f), -17715i), Struct_3(-894f, Struct_2(532f, 12601u, vec4<f32>(-188f, -136f, 454f, 1162f)), vec3<f32>(439f, -1330f, -531f), vec3<f32>(1190f, 500f, -352f), i32(-2147483648)), Struct_3(2504f, Struct_2(1131f, 1u, vec4<f32>(965f, -1017f, 365f, -562f)), vec3<f32>(841f, 427f, -1143f), vec3<f32>(598f, -279f, 1224f), 2147483647i), Struct_3(-1820f, Struct_2(1549f, 4294967295u, vec4<f32>(-253f, 1338f, 1000f, 1553f)), vec3<f32>(936f, 319f, 629f), vec3<f32>(-1369f, -459f, -446f), 39437i), Struct_3(-620f, Struct_2(-232f, 13345u, vec4<f32>(-1054f, 262f, -1621f, 1551f)), vec3<f32>(-409f, -282f, 446f), vec3<f32>(-1423f, -861f, 895f), i32(-2147483648)), Struct_3(690f, Struct_2(-247f, 17440u, vec4<f32>(-274f, 1248f, 252f, -1026f)), vec3<f32>(1000f, -978f, 1233f), vec3<f32>(1000f, 948f, -657f), i32(-2147483648)), Struct_3(1581f, Struct_2(354f, 4705u, vec4<f32>(-371f, -981f, 370f, 682f)), vec3<f32>(1545f, -585f, 328f), vec3<f32>(-1000f, 1446f, 253f), 9755i), Struct_3(-1340f, Struct_2(1930f, 4294967295u, vec4<f32>(1000f, 991f, -196f, -689f)), vec3<f32>(-1121f, -192f, 912f), vec3<f32>(396f, 926f, -1000f), -11372i), Struct_3(-776f, Struct_2(433f, 0u, vec4<f32>(1000f, -584f, -1281f, 1353f)), vec3<f32>(1105f, -504f, -126f), vec3<f32>(-672f, 867f, -193f), i32(-2147483648)), Struct_3(190f, Struct_2(-557f, 1u, vec4<f32>(-1000f, -934f, -102f, 315f)), vec3<f32>(-1000f, 1488f, 1000f), vec3<f32>(-888f, 1000f, 243f), 1i), Struct_3(-1314f, Struct_2(308f, 4294967295u, vec4<f32>(1581f, -930f, 985f, -369f)), vec3<f32>(-2674f, 2454f, 797f), vec3<f32>(-651f, 846f, -681f), -1i), Struct_3(-1120f, Struct_2(-2251f, 4294967295u, vec4<f32>(-2028f, -273f, 1729f, -898f)), vec3<f32>(-698f, -919f, -1210f), vec3<f32>(495f, 678f, -1388f), -51611i), Struct_3(-169f, Struct_2(-374f, 18774u, vec4<f32>(1509f, -1122f, 2085f, 447f)), vec3<f32>(-1000f, 1866f, -177f), vec3<f32>(-894f, -1873f, -455f), 354i), Struct_3(646f, Struct_2(-2064f, 39631u, vec4<f32>(-123f, -1550f, 356f, -1194f)), vec3<f32>(-2116f, 119f, 1487f), vec3<f32>(-228f, -133f, -676f), 15281i), Struct_3(-620f, Struct_2(-1125f, 16173u, vec4<f32>(1000f, 1226f, -427f, -1869f)), vec3<f32>(1466f, -146f, 169f), vec3<f32>(3473f, 1000f, -1000f), -1218i), Struct_3(-858f, Struct_2(1000f, 1u, vec4<f32>(-276f, -518f, 321f, 1000f)), vec3<f32>(1805f, -810f, 1524f), vec3<f32>(-825f, -564f, 338f), 0i), Struct_3(-777f, Struct_2(-928f, 0u, vec4<f32>(-747f, -242f, -147f, 1223f)), vec3<f32>(1151f, -1663f, 2090f), vec3<f32>(1243f, 233f, -1253f), 46138i));

var<private> global2: array<Struct_2, 1>;

var<private> global3: array<bool, 28> = array<bool, 28>(true, true, true, true, true, true, true, false, false, false, false, true, false, true, false, true, true, false, true, false, true, true, true, true, true, true, true, true);

var<private> global4: array<vec3<f32>, 23> = array<vec3<f32>, 23>(vec3<f32>(277f, 1000f, 1233f), vec3<f32>(-1009f, 185f, -265f), vec3<f32>(1879f, 1000f, -1218f), vec3<f32>(-813f, -461f, -976f), vec3<f32>(-1589f, -741f, -1000f), vec3<f32>(-347f, -715f, 1108f), vec3<f32>(-1403f, -312f, -862f), vec3<f32>(-258f, -971f, -890f), vec3<f32>(-203f, -974f, -342f), vec3<f32>(-446f, -572f, 200f), vec3<f32>(-1000f, -365f, 133f), vec3<f32>(-531f, -129f, -828f), vec3<f32>(794f, -896f, -692f), vec3<f32>(-1252f, -677f, 136f), vec3<f32>(-1833f, -1984f, -1765f), vec3<f32>(1000f, 1725f, 1015f), vec3<f32>(690f, -505f, -529f), vec3<f32>(-900f, -767f, 1048f), vec3<f32>(444f, -219f, 1791f), vec3<f32>(796f, -112f, -156f), vec3<f32>(786f, 937f, 958f), vec3<f32>(2629f, 511f, -1000f), vec3<f32>(-838f, -1000f, 1312f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: i32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_1.b.c.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(arg_1.d.x))))), _wgslsmith_f_op_f32(-arg_1.a), global3[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_sub_u32(~(~arg_1.b.b), 0u)), 28u)]));
    let var_1 = Struct_2(218f, (firstLeadingBit(abs(1u)) ^ firstLeadingBit(max(arg_1.b.b, arg_1.b.b))) >> (_wgslsmith_dot_vec4_u32(select(vec4<u32>(8123u, arg_1.b.b, 1u, arg_1.b.b), vec4<u32>(14345u, arg_1.b.b, 0u, arg_1.b.b), arg_0.x) & vec4<u32>(27187u, arg_1.b.b, 4294967295u, arg_1.b.b), firstLeadingBit(~vec4<u32>(arg_1.b.b, 0u, arg_1.b.b, arg_1.b.b))) % 32u), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_1.b.c), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0, -124f, -1760f, arg_1.b.a))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.b.c.x, -1558f, 362f, -788f), vec4<f32>(-535f, var_0, -867f, -1553f), vec4<bool>(arg_0.x, true, global0.x, false))), global3[_wgslsmith_index_u32(~arg_1.b.b, 28u)])), false)))));
    let var_2 = Struct_1(9264u, vec2<f32>(-1031f, 557f), _wgslsmith_div_vec2_f32(arg_1.d.xx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(var_1.a, var_0, global0.x)), var_1.c.x))), !(!vec4<bool>(true, global3[_wgslsmith_index_u32(var_1.b, 28u)], true, true)));
    var var_3 = ~vec4<u32>(var_1.b, _wgslsmith_dot_vec2_u32(~reverseBits(vec2<u32>(26866u, var_1.b)), ~vec2<u32>(4294967295u, var_1.b)), countOneBits(~var_2.a), 0u);
    global1 = array<Struct_3, 27>();
    return vec4<bool>(true, global0.x, true, global0.x);
}

fn func_2(arg_0: f32, arg_1: f32) -> u32 {
    let var_0 = func_3(vec2<bool>(true, countOneBits(-u_input.a.x) <= u_input.a.x), global1[_wgslsmith_index_u32(0u, 27u)], 2147483647i);
    let var_1 = 1u >> (_wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(~vec2<u32>(35000u, 27821u), vec2<u32>(48710u, 5298u)), select(select(vec2<u32>(46097u, 0u), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 2502u), vec2<u32>(2272u, 1u), vec2<u32>(48428u, 4700u)), true), vec2<u32>(1u, 1u), !(!var_0.xx))) % 32u);
    let var_2 = func_3(var_0.ww, global1[_wgslsmith_index_u32(var_1, 27u)], -29085i).wxx;
    global0 = !var_0.yw;
    let var_3 = select(var_0, !(!select(vec4<bool>(global3[_wgslsmith_index_u32(22805u, 28u)], false, global3[_wgslsmith_index_u32(var_1, 28u)], true), vec4<bool>(true, var_2.x, var_2.x, false), var_0)), !select(var_0, select(func_3(vec2<bool>(true, false), global1[_wgslsmith_index_u32(var_1, 27u)], u_input.a.x), var_0, var_0), !(!global3[_wgslsmith_index_u32(var_1, 28u)])));
    return ~_wgslsmith_div_u32(~(~(~6663u)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u >> (1u % 32u), ~var_1), ~vec3<u32>(var_1, 4294967295u, 4294967295u)));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec4<f32>, arg_3: i32) -> bool {
    let var_0 = u_input.a.wz;
    let var_1 = Struct_2(1438f, abs(~_wgslsmith_clamp_u32(1u, 0u, 4294967295u) ^ arg_1), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(926f, -440f)), _wgslsmith_f_op_f32(f32(-1f) * -1605f), _wgslsmith_f_op_f32(1003f - arg_2.x), _wgslsmith_f_op_f32(arg_2.x - 586f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, arg_2.x, -159f, -1316f) - vec4<f32>(arg_2.x, arg_0.b.x, arg_0.c.x, -2047f)))))));
    let var_2 = Struct_2(671f, _wgslsmith_mult_u32(firstLeadingBit(arg_0.a), ~_wgslsmith_add_u32(var_1.b, var_1.b) >> ((var_1.b | 42295u) % 32u)), vec4<f32>(var_1.a, arg_0.b.x, arg_0.c.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_3 = select(~_wgslsmith_mult_vec3_u32(vec3<u32>(abs(45304u), _wgslsmith_mult_u32(arg_0.a, 1u), 34662u), ~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1, arg_0.a, arg_1), vec3<u32>(52075u, 25019u, 87874u))), ~(vec3<u32>(func_2(arg_0.b.x, 1906f), var_1.b, arg_0.a) | vec3<u32>(var_1.b & 16783u, _wgslsmith_mod_u32(33671u, var_1.b), ~var_2.b)), arg_0.d.zyz);
    var var_4 = ~(~(~max(firstTrailingBit(vec3<u32>(var_1.b, 1u, var_2.b)), vec3<u32>(4294967295u, 47749u, arg_0.a))));
    return !(!all(!arg_0.d.zwy));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 27>();
    global0 = !select(!select(vec2<bool>(global3[_wgslsmith_index_u32(1u, 28u)], global0.x), vec2<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 28u)]), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, global0.x))), vec2<bool>(global3[_wgslsmith_index_u32(~min(0u, 20659u), 28u)], global0.x), select(vec2<bool>(true, true), !vec2<bool>(global0.x, global0.x), !(!vec2<bool>(global3[_wgslsmith_index_u32(1u, 28u)], true))));
    var var_0 = global2[_wgslsmith_index_u32(~56112u, 1u)];
    let var_1 = Struct_1(~_wgslsmith_mult_u32(var_0.b, _wgslsmith_clamp_u32(4294967295u | var_0.b, var_0.b, 78617u)), var_0.c.yy, _wgslsmith_f_op_vec2_f32(floor(var_0.c.yx)), vec4<bool>(false, global3[_wgslsmith_index_u32(var_0.b, 28u)], select(select(false, true, global0.x) || any(vec2<bool>(false, global0.x)), any(vec4<bool>(false, false, true, global3[_wgslsmith_index_u32(var_0.b, 28u)])) == func_1(Struct_1(var_0.b, var_0.c.xx, var_0.c.xx, vec4<bool>(true, global3[_wgslsmith_index_u32(var_0.b, 28u)], false, true)), var_0.b, vec4<f32>(var_0.a, var_0.c.x, var_0.a, var_0.a), -35296i), global0.x), all(vec2<bool>(true, true))));
    let var_2 = countOneBits(u_input.a);
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~1u, var_0.b), 27u)];
    global2 = array<Struct_2, 1>();
    let var_4 = var_2.zzw;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.c.x) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c.x, 115f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(473f * -1495f))))));
}

