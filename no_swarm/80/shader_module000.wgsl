struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec2<bool>,
    d: vec3<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(Struct_2(vec3<f32>(-1508f, -1000f, -905f)), vec4<f32>(240f, -1008f, -664f, 713f), vec2<bool>(true, false), vec3<f32>(493f, 2037f, -545f), Struct_2(vec3<f32>(1000f, -1600f, 1390f))), Struct_3(Struct_2(vec3<f32>(447f, -1381f, 1398f)), vec4<f32>(1000f, 248f, -1491f, -407f), vec2<bool>(true, false), vec3<f32>(354f, -236f, 977f), Struct_2(vec3<f32>(327f, -1297f, -424f))), Struct_3(Struct_2(vec3<f32>(-436f, -416f, 1446f)), vec4<f32>(1357f, -1226f, -1000f, -398f), vec2<bool>(false, false), vec3<f32>(-790f, -227f, -720f), Struct_2(vec3<f32>(449f, 1176f, 2070f))));

var<private> global1: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(Struct_2(vec3<f32>(-462f, -840f, -2426f)), vec4<f32>(-267f, 999f, 442f, -818f), vec2<bool>(true, false), vec3<f32>(436f, 1000f, 897f), Struct_2(vec3<f32>(646f, 462f, -839f))), Struct_3(Struct_2(vec3<f32>(-267f, 580f, -601f)), vec4<f32>(884f, 248f, 288f, 345f), vec2<bool>(false, true), vec3<f32>(-499f, 242f, -1627f), Struct_2(vec3<f32>(-1000f, 1000f, -184f))), Struct_3(Struct_2(vec3<f32>(-1693f, -1000f, 198f)), vec4<f32>(286f, 1512f, 1749f, -1582f), vec2<bool>(false, true), vec3<f32>(434f, -1269f, 624f), Struct_2(vec3<f32>(-884f, -1090f, -966f))), Struct_3(Struct_2(vec3<f32>(1038f, -797f, -427f)), vec4<f32>(635f, -1000f, 1399f, -886f), vec2<bool>(false, false), vec3<f32>(-1282f, 556f, 514f), Struct_2(vec3<f32>(1000f, -1255f, -1125f))), Struct_3(Struct_2(vec3<f32>(1580f, -1023f, -680f)), vec4<f32>(608f, 177f, -1180f, -1180f), vec2<bool>(false, false), vec3<f32>(-917f, 221f, -1000f), Struct_2(vec3<f32>(-435f, 1072f, -310f))), Struct_3(Struct_2(vec3<f32>(1193f, -684f, 608f)), vec4<f32>(-839f, -1353f, -173f, 1154f), vec2<bool>(false, true), vec3<f32>(2115f, 690f, -983f), Struct_2(vec3<f32>(1000f, -804f, 1839f))), Struct_3(Struct_2(vec3<f32>(-1649f, 1559f, -1144f)), vec4<f32>(1086f, -1761f, -1000f, -994f), vec2<bool>(true, false), vec3<f32>(-778f, 168f, -1000f), Struct_2(vec3<f32>(-738f, 212f, -240f))), Struct_3(Struct_2(vec3<f32>(1034f, -499f, 299f)), vec4<f32>(310f, -1127f, 1000f, 887f), vec2<bool>(false, true), vec3<f32>(1216f, -108f, 458f), Struct_2(vec3<f32>(-262f, -900f, 2020f))), Struct_3(Struct_2(vec3<f32>(-419f, 1159f, -224f)), vec4<f32>(-558f, 1687f, 1000f, -159f), vec2<bool>(true, true), vec3<f32>(819f, -312f, 1296f), Struct_2(vec3<f32>(1898f, 1686f, -1346f))), Struct_3(Struct_2(vec3<f32>(955f, 305f, -931f)), vec4<f32>(773f, -408f, -158f, -773f), vec2<bool>(true, false), vec3<f32>(-806f, -1144f, 266f), Struct_2(vec3<f32>(-367f, -130f, -1021f))), Struct_3(Struct_2(vec3<f32>(915f, -1687f, 1000f)), vec4<f32>(-856f, -306f, 1432f, 1000f), vec2<bool>(true, true), vec3<f32>(855f, 1406f, 1696f), Struct_2(vec3<f32>(-489f, -626f, -381f))), Struct_3(Struct_2(vec3<f32>(1259f, 297f, -705f)), vec4<f32>(-675f, -439f, 500f, 1011f), vec2<bool>(false, true), vec3<f32>(-1000f, 1636f, -486f), Struct_2(vec3<f32>(-741f, 1000f, -1374f))), Struct_3(Struct_2(vec3<f32>(-1445f, -1656f, 280f)), vec4<f32>(-488f, -1225f, 1704f, 1281f), vec2<bool>(true, true), vec3<f32>(-559f, 297f, 1779f), Struct_2(vec3<f32>(-974f, -272f, 846f))));

var<private> global2: vec4<f32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    global1 = array<Struct_3, 13>();
    var var_0 = u_input.b & ~u_input.b;
    var var_1 = select(select(!arg_0.xxx, !select(select(vec3<bool>(true, arg_0.x, arg_0.x), arg_0.yyz, arg_0.x), select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), arg_0.wzx, true), select(arg_0.x, true, false)), vec3<bool>(all(select(vec4<bool>(true, false, arg_0.x, false), arg_0, true)), false, true)), !select(select(select(vec3<bool>(arg_0.x, arg_0.x, false), arg_0.wxx, arg_0.x), select(arg_0.zzy, vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), !arg_0.x), arg_0.ywy, arg_0.x), !(!select(vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(arg_0.x, true, arg_0.x), any(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)))));
    let var_2 = global2.x;
    var var_3 = vec2<i32>(_wgslsmith_div_i32(u_input.a.x, _wgslsmith_div_i32(~min(0i, u_input.a.x), u_input.a.x)), -(~(-u_input.a.x)));
    return _wgslsmith_clamp_u32(15051u, _wgslsmith_add_u32(_wgslsmith_add_u32(~select(u_input.b, u_input.b, arg_0.x), select(25885u, ~u_input.b, true)), u_input.b), ~52759u);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<bool>) -> Struct_1 {
    global2 = arg_0.a;
    var var_0 = 57296u;
    var var_1 = ~countOneBits(vec2<u32>(~(~arg_0.b), 15625u));
    var_1 = vec2<u32>(46594u, ~func_3(select(select(arg_2, vec4<bool>(false, false, false, arg_2.x), false), arg_2, any(vec4<bool>(true, arg_2.x, true, false)))));
    var var_2 = arg_2.x;
    return Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)), -2496f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_1.a.x, -564f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.a.x, 1954f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(arg_0.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1192f, -1000f, arg_1.a.x, global2.x)))), ~reverseBits(arg_0.b));
}

fn func_1(arg_0: vec2<f32>) -> StorageBuffer {
    var var_0 = global2.x;
    let var_1 = ~(~_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i) >> (vec3<u32>(0u, 4294967295u, 4294967295u) % vec3<u32>(32u)), vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x)), firstLeadingBit(vec3<i32>(0i, u_input.a.x, -1i))));
    let var_2 = _wgslsmith_clamp_u32(u_input.b | 4294967295u, 0u >> (_wgslsmith_mult_u32(~u_input.b, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 19918u, 8439u), vec4<u32>(1u, u_input.b, 24059u, 20231u))) % 32u), _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.b, ~9467u), 35771u));
    let var_3 = func_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, arg_0.x, -1415f, global2.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, global2.x, 805f) + vec4<f32>(arg_0.x, 880f, arg_0.x, global2.x))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.x, 332f, 730f, arg_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 111f, global2.x, 335f))))), 0u), Struct_2(global2.wxz), select(!select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    global0 = array<Struct_3, 3>();
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1141f * global2.x))), -1596f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a.x + var_3.a.x) * _wgslsmith_f_op_f32(ceil(global2.x)))))), vec3<u32>(90730u, 54113u, 1u), vec2<f32>(-1937f, global2.x), -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec2_i32(reverseBits(-_wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, -2147483647i))), vec2<i32>(-1i) * -abs(~u_input.a));
    global0 = array<Struct_3, 3>();
    let var_1 = _wgslsmith_f_op_f32(1098f + _wgslsmith_f_op_f32(trunc(531f)));
    global1 = array<Struct_3, 13>();
    let var_2 = ~89864u;
    global0 = array<Struct_3, 3>();
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_vec2_f32(floor(global2.xy)));
}

