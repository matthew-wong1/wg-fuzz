struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 4294967295u);

var<private> global1: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec2<f32>(-935f, 328f), vec4<f32>(689f, 1321f, -258f, 492f), vec4<f32>(-1000f, -580f, 1271f, -1184f)), Struct_1(vec2<f32>(1115f, 2544f), vec4<f32>(-1265f, 345f, -165f, 221f), vec4<f32>(1959f, 1033f, 1883f, -741f)), Struct_1(vec2<f32>(226f, -710f), vec4<f32>(607f, 961f, -1371f, 664f), vec4<f32>(-280f, 173f, 505f, 705f)), Struct_1(vec2<f32>(-972f, -1471f), vec4<f32>(158f, 1366f, 552f, -732f), vec4<f32>(1000f, 1410f, 612f, -273f)), Struct_1(vec2<f32>(312f, 1593f), vec4<f32>(1021f, -352f, 930f, -1032f), vec4<f32>(1329f, -225f, -1000f, -143f)), Struct_1(vec2<f32>(2237f, 1251f), vec4<f32>(321f, 1239f, -465f, -1722f), vec4<f32>(-525f, -732f, -1139f, 115f)), Struct_1(vec2<f32>(101f, 1000f), vec4<f32>(-485f, 1000f, -2201f, 426f), vec4<f32>(1985f, 431f, 383f, -855f)), Struct_1(vec2<f32>(109f, -404f), vec4<f32>(1285f, -217f, 2506f, 195f), vec4<f32>(-867f, 719f, 390f, 557f)), Struct_1(vec2<f32>(-945f, 948f), vec4<f32>(-1000f, -687f, -750f, -1662f), vec4<f32>(-337f, -1000f, 2171f, -782f)), Struct_1(vec2<f32>(2299f, -556f), vec4<f32>(457f, -1298f, -925f, 2647f), vec4<f32>(-1707f, -592f, 476f, 317f)), Struct_1(vec2<f32>(-628f, 1238f), vec4<f32>(-472f, 2138f, -1403f, -361f), vec4<f32>(156f, -934f, -2665f, 445f)), Struct_1(vec2<f32>(-1139f, 1457f), vec4<f32>(620f, -974f, -642f, 314f), vec4<f32>(1149f, -790f, -1256f, 660f)), Struct_1(vec2<f32>(430f, 1761f), vec4<f32>(-401f, 1851f, 183f, -2522f), vec4<f32>(470f, 1847f, -1215f, -577f)), Struct_1(vec2<f32>(319f, 625f), vec4<f32>(151f, -378f, 950f, 1478f), vec4<f32>(-485f, 660f, 1757f, 347f)), Struct_1(vec2<f32>(-819f, -3273f), vec4<f32>(-1485f, -1376f, -1503f, 116f), vec4<f32>(110f, -327f, 1247f, -336f)), Struct_1(vec2<f32>(-1000f, 1296f), vec4<f32>(266f, -301f, 143f, -400f), vec4<f32>(356f, 158f, 857f, 102f)), Struct_1(vec2<f32>(360f, 255f), vec4<f32>(119f, 445f, 451f, 1086f), vec4<f32>(103f, -190f, -408f, -2049f)), Struct_1(vec2<f32>(110f, 682f), vec4<f32>(-1230f, 731f, -1540f, -720f), vec4<f32>(-532f, 957f, 1268f, 1396f)), Struct_1(vec2<f32>(1604f, 1767f), vec4<f32>(-1263f, -400f, -924f, -139f), vec4<f32>(-186f, -501f, -515f, 796f)), Struct_1(vec2<f32>(-280f, -1227f), vec4<f32>(-200f, 443f, -1448f, 1344f), vec4<f32>(1057f, -1072f, -555f, 656f)), Struct_1(vec2<f32>(405f, -207f), vec4<f32>(2068f, -2113f, 341f, 320f), vec4<f32>(-696f, -656f, -117f, 1000f)), Struct_1(vec2<f32>(-699f, -302f), vec4<f32>(336f, -548f, -127f, 990f), vec4<f32>(1026f, 1072f, -1999f, -721f)));

var<private> global2: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> bool {
    let var_0 = ~(~min(~25304u, global0.x));
    let var_1 = global1[_wgslsmith_index_u32(~1u, 22u)];
    var var_2 = ~vec4<u32>(global0.x << (min(1u, _wgslsmith_dot_vec3_u32(u_input.b.xxw, vec3<u32>(54305u, var_0, var_0))) % 32u), var_0, var_0, ~4294967295u);
    var var_3 = global1[_wgslsmith_index_u32(26829u, 22u)];
    let var_4 = true;
    return any(vec2<bool>(any(select(vec4<bool>(true, var_4, true, var_4), !vec4<bool>(var_4, false, var_4, var_4), true)), true));
}

fn func_2() -> vec4<f32> {
    var var_0 = false;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global2.a.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.a.x))))))));
    var var_2 = vec2<bool>(true, !func_3());
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(max(global2.b.xw, _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(298f, -1000f)), global2.c.yw), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2.b.x, global2.b.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c.x, 223f))))))), global2.b, vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(abs(933f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.a.x))), global2.b.x));
    var_2 = vec2<bool>(!var_2.x, var_2.x);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_3.b)) - vec4<f32>(_wgslsmith_f_op_f32(min(681f, 1431f)), 1f, var_3.a.x, _wgslsmith_f_op_f32(593f + var_3.b.x)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(478f, var_3.c.x, 819f, var_3.b.x)));
}

fn func_1(arg_0: u32) -> u32 {
    global1 = array<Struct_1, 22>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(max(global2.a.x, 221f)), _wgslsmith_div_f32(global2.b.x, -117f), _wgslsmith_f_op_f32(trunc(global2.b.x)), global2.a.x), vec4<f32>(_wgslsmith_div_f32(946f, global2.c.x), _wgslsmith_f_op_f32(-global2.a.x), -2141f, 1f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2()))), _wgslsmith_f_op_vec4_f32(select(global2.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global2.b.x, global2.a.x), _wgslsmith_div_f32(-1944f, global2.b.x), -404f, -969f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.c * global2.b))), vec4<bool>(true, true, any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true)), func_3()))));
    var var_1 = !(!select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true))), true));
    global1 = array<Struct_1, 22>();
    var var_2 = u_input.a;
    return abs(arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(func_1(1u), 22u)];
    var var_1 = select(select(vec4<bool>(false, false, true, any(vec3<bool>(false, false, true))), vec4<bool>(false, all(vec4<bool>(false, true, false, true)), any(vec4<bool>(true, true, true, true)), true), select(vec4<bool>(true, false, any(vec3<bool>(true, true, true)), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), any(vec4<bool>(false, false, false, true))), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(false, false, true, false), all(vec3<bool>(true, false, true))))), !(!vec4<bool>(true, true, all(vec2<bool>(true, true)), true)), vec4<bool>(true, true, true, true));
    let var_2 = _wgslsmith_div_i32(abs(i32(-1i) * -1i), -13403i) | select(~firstLeadingBit(-23908i), -1i, var_1.x);
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.b.xy) + _wgslsmith_f_op_vec2_f32(-var_0.c.yy)))), var_0.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1375f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2.a.x - 1333f))), 1f, var_0.b.x)));
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.c.x) - -989f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.b.x * var_0.b.x), 695f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_3.b.x, 877f, false)))))));
    let var_5 = global2.b;
    let var_6 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(var_0.c * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_3.c * vec4<f32>(-253f, -663f, var_3.c.x, var_4.x)), vec4<f32>(-1216f, var_0.a.x, -438f, -728f))))));
    let var_7 = global1[_wgslsmith_index_u32(firstTrailingBit(reverseBits(min(~u_input.b.x & ~global0.x, ~u_input.b.x & 77451u))), 22u)];
    var_0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(0u, 92061u, 17459u, 1u)), vec4<u32>(global0.x, 87431u, 4294967295u, firstTrailingBit(u_input.b.x))) & _wgslsmith_mult_u32(~u_input.b.x, u_input.b.x), _wgslsmith_mod_u32(global0.x, 40419u)), 22u)];
    let x = u_input.a;
    s_output = StorageBuffer(max(var_2, var_2));
}

