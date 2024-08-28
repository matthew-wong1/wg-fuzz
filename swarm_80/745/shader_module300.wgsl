struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 25>;

var<private> global1: array<vec4<bool>, 3>;

var<private> global2: array<vec4<i32>, 24>;

var<private> global3: array<Struct_1, 15>;

var<private> global4: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(29644u, vec3<f32>(-261f, -1200f, -989f), 32629u), Struct_1(0u, vec3<f32>(-1219f, -1000f, -1528f), 65319u), Struct_1(4294967295u, vec3<f32>(1000f, 1027f, 1459f), 0u), Struct_1(1u, vec3<f32>(181f, 1000f, 246f), 16916u), Struct_1(4294967295u, vec3<f32>(-1000f, 314f, -1053f), 10979u), Struct_1(4294967295u, vec3<f32>(1625f, 507f, 1000f), 48375u), Struct_1(42374u, vec3<f32>(-945f, 821f, -1086f), 0u), Struct_1(47008u, vec3<f32>(781f, -1996f, -1039f), 4294967295u), Struct_1(4294967295u, vec3<f32>(-1000f, 2090f, 1000f), 1u), Struct_1(37765u, vec3<f32>(529f, 1000f, -958f), 14703u), Struct_1(4294967295u, vec3<f32>(-1000f, 1624f, -337f), 0u), Struct_1(4294967295u, vec3<f32>(-302f, 972f, 1004f), 11827u), Struct_1(0u, vec3<f32>(1284f, -136f, -1392f), 4294967295u), Struct_1(49975u, vec3<f32>(-1116f, 1104f, 1651f), 1u), Struct_1(71398u, vec3<f32>(1000f, 243f, -523f), 1u), Struct_1(4294967295u, vec3<f32>(859f, 804f, 501f), 33584u), Struct_1(5930u, vec3<f32>(1150f, -842f, -877f), 0u), Struct_1(33270u, vec3<f32>(231f, -816f, -390f), 4294967295u), Struct_1(1u, vec3<f32>(1449f, -1317f, 511f), 18757u), Struct_1(37947u, vec3<f32>(360f, -248f, -559f), 4294967295u), Struct_1(4294967295u, vec3<f32>(1068f, -1865f, -620f), 22393u), Struct_1(0u, vec3<f32>(-1183f, 1028f, -1760f), 4109u), Struct_1(12534u, vec3<f32>(1000f, 142f, -1271f), 0u), Struct_1(74753u, vec3<f32>(1092f, -1107f, -467f), 5114u), Struct_1(1u, vec3<f32>(-1292f, 1735f, 1485f), 1u), Struct_1(0u, vec3<f32>(1000f, -324f, 1496f), 1u), Struct_1(0u, vec3<f32>(-1823f, -1322f, -1000f), 20587u), Struct_1(0u, vec3<f32>(1221f, -1755f, 1000f), 4294967295u), Struct_1(5003u, vec3<f32>(-436f, 940f, 1468f), 21587u), Struct_1(29955u, vec3<f32>(512f, 913f, 458f), 0u), Struct_1(118285u, vec3<f32>(1752f, 791f, 1000f), 67393u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: vec2<f32>, arg_3: vec4<i32>) -> u32 {
    global0 = array<vec4<bool>, 25>();
    let var_0 = -u_input.b;
    let var_1 = 4294967295u;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1000f, -574f, select(true, any(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), var_0.x >= 2147483647i))), -919f));
    global3 = array<Struct_1, 15>();
    return _wgslsmith_dot_vec2_u32(vec2<u32>(abs(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.d, 0u, u_input.d)), ~vec3<u32>(0u, 32793u, 0u))), 28197u), abs(firstLeadingBit(~arg_1.wz)));
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)) * _wgslsmith_f_op_f32(-arg_0.b.x));
    var var_1 = Struct_1(select(arg_1, 0u, all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), true))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) + _wgslsmith_f_op_f32(var_0 * arg_0.b.x))), _wgslsmith_f_op_f32(ceil(1325f)), 2174f), u_input.d);
    let var_2 = 1u;
    global3 = array<Struct_1, 15>();
    global2 = array<vec4<i32>, 24>();
    return select(global1[_wgslsmith_index_u32(arg_1 | (reverseBits(func_3(vec2<bool>(false, false), vec4<u32>(4294967295u, 28910u, u_input.d, arg_0.a), arg_0.b.yx, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.c))) & 68095u), 3u)], !(!global0[_wgslsmith_index_u32(~arg_1, 25u)]), false);
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec4<bool>) -> u32 {
    let var_0 = global3[_wgslsmith_index_u32(u_input.d, 15u)];
    var var_1 = -495f;
    var var_2 = Struct_1(arg_1.a, vec3<f32>(_wgslsmith_f_op_f32(840f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1191f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x - var_0.b.x)), -998f), var_0.a);
    var var_3 = Struct_3(!select(select(select(global1[_wgslsmith_index_u32(arg_1.a, 3u)], vec4<bool>(false, false, false, arg_0), global1[_wgslsmith_index_u32(6617u, 3u)]), func_2(Struct_1(1u, var_0.b, var_2.c), arg_1.c), any(arg_2.wyz)), vec4<bool>(!arg_0, false, arg_2.x, true), arg_2.x), Struct_2(global3[_wgslsmith_index_u32(reverseBits(arg_1.a), 15u)], vec3<f32>(1206f, _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(237f + -2074f))), arg_1.b.x), ~(~vec3<u32>(1u, 20687u, 4294967295u))));
    global1 = array<vec4<bool>, 3>();
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(global1[_wgslsmith_index_u32(~func_1(all(vec3<bool>(true, true, true)), Struct_1(firstTrailingBit(10155u), _wgslsmith_div_vec3_f32(vec3<f32>(-771f, -188f, -292f), vec3<f32>(197f, 574f, -580f)), 4294967295u), global0[_wgslsmith_index_u32(abs(4294967295u), 25u)]), 3u)], Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.d, ~_wgslsmith_mod_u32(21414u, 4294967295u)), 15u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1226f, 224f, -473f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(337f, 1000f, 1000f) - vec3<f32>(-1852f, 649f, 1709f))) - vec3<f32>(-962f, _wgslsmith_f_op_f32(max(1032f, 2042f)), 1000f)), ~select(vec3<u32>(1u, u_input.d, u_input.d), vec3<u32>(0u, 4294967295u, u_input.d), vec3<bool>(true, false, true)) ^ ~vec3<u32>(19227u, u_input.d, u_input.d)));
    let var_1 = any(!select(func_2(Struct_1(u_input.d, var_0.b.b, u_input.d), 0u >> (var_0.b.c.x % 32u)).wy, !var_0.a.yw, false));
    let var_2 = ~(-39035i);
    global0 = array<vec4<bool>, 25>();
    let var_3 = !all(vec3<bool>(var_1 && false, any(var_0.a), true));
    var var_4 = firstTrailingBit(12149u);
    let var_5 = _wgslsmith_clamp_u32(var_0.b.c.x, ~abs(~1u | (0u ^ var_0.b.a.a)), ~_wgslsmith_mod_u32(var_0.b.c.x << (~u_input.d % 32u), u_input.d));
    var var_6 = _wgslsmith_f_op_vec3_f32(sign(var_0.b.a.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(var_0.b.a.b.x)), abs(~36215i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_6.x * var_0.b.a.b.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.b.x) * 692f))));
}

