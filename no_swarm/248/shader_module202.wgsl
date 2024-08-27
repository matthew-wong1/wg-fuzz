struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<f32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
    c: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(Struct_1(2286f, vec3<f32>(-397f, 1137f, 2252f)), Struct_1(-1119f, vec3<f32>(-178f, 1299f, 1105f)), Struct_1(-2639f, vec3<f32>(107f, -163f, 1992f))), Struct_2(Struct_1(1130f, vec3<f32>(1164f, 1348f, -105f)), Struct_1(385f, vec3<f32>(-591f, -336f, -1787f)), Struct_1(-625f, vec3<f32>(891f, 294f, 2064f))), Struct_2(Struct_1(-574f, vec3<f32>(-510f, -1212f, -712f)), Struct_1(-1531f, vec3<f32>(-1263f, 102f, -1081f)), Struct_1(1900f, vec3<f32>(1101f, -1364f, -958f))), Struct_2(Struct_1(1000f, vec3<f32>(-520f, -784f, -613f)), Struct_1(2812f, vec3<f32>(877f, -1000f, -1000f)), Struct_1(1000f, vec3<f32>(-1488f, 1050f, -343f))), Struct_2(Struct_1(1000f, vec3<f32>(-860f, 1000f, 738f)), Struct_1(734f, vec3<f32>(-1705f, 160f, -1683f)), Struct_1(1083f, vec3<f32>(-920f, -205f, 855f))), Struct_2(Struct_1(1242f, vec3<f32>(588f, 218f, -1949f)), Struct_1(239f, vec3<f32>(-212f, -1000f, -1000f)), Struct_1(701f, vec3<f32>(-316f, -218f, -170f))), Struct_2(Struct_1(720f, vec3<f32>(-1417f, 1736f, -1244f)), Struct_1(-1245f, vec3<f32>(223f, -1045f, -1000f)), Struct_1(-245f, vec3<f32>(289f, -775f, 921f))), Struct_2(Struct_1(-1637f, vec3<f32>(1379f, -1941f, -893f)), Struct_1(1626f, vec3<f32>(-1195f, -613f, 789f)), Struct_1(1123f, vec3<f32>(297f, -576f, -603f))), Struct_2(Struct_1(-253f, vec3<f32>(1000f, -782f, -285f)), Struct_1(-1032f, vec3<f32>(-360f, 1226f, -947f)), Struct_1(105f, vec3<f32>(-1178f, -397f, 830f))), Struct_2(Struct_1(-284f, vec3<f32>(276f, -917f, 516f)), Struct_1(1632f, vec3<f32>(-1247f, -700f, -514f)), Struct_1(-402f, vec3<f32>(1851f, -1033f, -907f))), Struct_2(Struct_1(1423f, vec3<f32>(1844f, 532f, 1097f)), Struct_1(-185f, vec3<f32>(2198f, 2052f, 325f)), Struct_1(929f, vec3<f32>(104f, 377f, -526f))), Struct_2(Struct_1(1000f, vec3<f32>(-1000f, -1245f, 1787f)), Struct_1(2304f, vec3<f32>(-470f, -1000f, -799f)), Struct_1(1201f, vec3<f32>(838f, -793f, -655f))), Struct_2(Struct_1(-415f, vec3<f32>(-399f, 1000f, -1873f)), Struct_1(-922f, vec3<f32>(1713f, 2100f, 128f)), Struct_1(-1301f, vec3<f32>(684f, -415f, 560f))), Struct_2(Struct_1(843f, vec3<f32>(291f, 1000f, -431f)), Struct_1(959f, vec3<f32>(1666f, 738f, -1000f)), Struct_1(-1979f, vec3<f32>(-1300f, 1412f, 623f))), Struct_2(Struct_1(-2061f, vec3<f32>(-810f, -905f, 159f)), Struct_1(-734f, vec3<f32>(734f, -318f, -317f)), Struct_1(241f, vec3<f32>(-116f, -1588f, 578f))), Struct_2(Struct_1(-845f, vec3<f32>(1000f, -1034f, 381f)), Struct_1(1000f, vec3<f32>(-211f, -852f, -643f)), Struct_1(712f, vec3<f32>(254f, -1000f, -2061f))), Struct_2(Struct_1(-398f, vec3<f32>(-1000f, 1444f, 2486f)), Struct_1(584f, vec3<f32>(-293f, 1057f, -381f)), Struct_1(-746f, vec3<f32>(-1152f, 958f, -2398f))), Struct_2(Struct_1(-529f, vec3<f32>(1000f, -1000f, -477f)), Struct_1(459f, vec3<f32>(854f, -1066f, 1000f)), Struct_1(-1000f, vec3<f32>(493f, -946f, 478f))), Struct_2(Struct_1(-1012f, vec3<f32>(-1000f, 1415f, 1013f)), Struct_1(302f, vec3<f32>(619f, -1015f, 1134f)), Struct_1(-2181f, vec3<f32>(-741f, -1000f, -513f))), Struct_2(Struct_1(-801f, vec3<f32>(869f, 1281f, 334f)), Struct_1(1509f, vec3<f32>(2264f, 133f, 510f)), Struct_1(-1104f, vec3<f32>(1581f, 193f, -381f))));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_3) -> vec3<f32> {
    let var_0 = !(!select(!vec4<bool>(true, true, arg_0.x, arg_0.x), select(vec4<bool>(false, arg_0.x, arg_0.x, false), !vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), false), arg_0.x));
    var var_1 = Struct_1(-443f, vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(arg_1.b.x)))), _wgslsmith_div_f32(arg_1.b.x, _wgslsmith_f_op_f32(ceil(1737f))), _wgslsmith_div_f32(-976f, arg_1.b.x)));
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1832f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2377f, -1178f))), !arg_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.b - vec3<f32>(1012f, var_1.a, var_1.a)))));
    var var_2 = all(arg_0);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(826f + -210f), _wgslsmith_f_op_f32(arg_1.b.x * -962f), _wgslsmith_div_f32(var_1.a, var_1.b.x)))) + _wgslsmith_div_vec3_f32(var_1.b, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2766f, 1602f, -132f) * var_1.b))))));
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-1076f * _wgslsmith_f_op_f32(var_1.b.x + 727f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1889f + -2135f))), 1000f)))));
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    global0 = array<Struct_2, 20>();
    global0 = array<Struct_2, 20>();
    var var_0 = arg_0;
    var var_1 = global0[_wgslsmith_index_u32(min(~_wgslsmith_clamp_u32(58813u, ~4294967295u, _wgslsmith_clamp_u32(u_input.d, 6297u, 43538u)) << (u_input.d % 32u), ~_wgslsmith_div_u32(49748u, _wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.c.yww), u_input.c.ywy))), 20u)];
    var_1 = global0[_wgslsmith_index_u32(u_input.d, 20u)];
    return Struct_1(_wgslsmith_f_op_f32(ceil(-138f)), _wgslsmith_f_op_vec3_f32(func_3(!arg_0, Struct_3(_wgslsmith_f_op_vec2_f32(-var_1.c.b.xx), var_1.c.b.yz))));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> Struct_2 {
    var var_0 = Struct_5(7971i, Struct_2(arg_3, Struct_1(arg_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_3.b))), func_2(vec2<bool>(true, u_input.c.x != 33427u))));
    var_0 = Struct_5(-18871i, global0[_wgslsmith_index_u32(~85180u, 20u)]);
    var var_1 = u_input.e;
    global0 = array<Struct_2, 20>();
    var_1 = u_input.b.yxw;
    return Struct_2(arg_3, func_2(!vec2<bool>(all(vec2<bool>(false, true)), true)), arg_3);
}

fn func_1() -> f32 {
    global0 = array<Struct_2, 20>();
    let var_0 = func_4(1u, _wgslsmith_f_op_f32(max(310f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -252f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1463f * 2210f)))) * 406f), func_2(vec2<bool>(true, true)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 20>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1003f, -757f) * vec2<f32>(-1000f, 464f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(165f, -620f) + vec2<f32>(1336f, -527f))))));
    let var_1 = false;
    global0 = array<Struct_2, 20>();
    global0 = array<Struct_2, 20>();
    global0 = array<Struct_2, 20>();
    var var_2 = Struct_1(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(2017f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, var_0.x, true))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), var_0.x)));
    global0 = array<Struct_2, 20>();
    var var_3 = Struct_5(u_input.a.x, global0[_wgslsmith_index_u32(u_input.d, 20u)]);
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.e, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_3.b.c.b))), select(~max(~u_input.b, vec4<i32>(u_input.b.x, 1i, var_3.a, -10764i)), (u_input.b | -u_input.b) | u_input.b, _wgslsmith_f_op_f32(f32(-1f) * -2070f) <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-289f)), _wgslsmith_f_op_f32(sign(-351f))))));
}

