struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 23> = array<Struct_4, 23>(Struct_4(-1880f, Struct_1(vec4<f32>(1254f, 1626f, 1000f, -1454f), -1i, 111f)), Struct_4(-887f, Struct_1(vec4<f32>(-281f, 1658f, 1183f, -270f), i32(-2147483648), 601f)), Struct_4(3043f, Struct_1(vec4<f32>(1000f, 1000f, -1388f, -202f), 1i, 838f)), Struct_4(116f, Struct_1(vec4<f32>(-222f, -1000f, 652f, 246f), -33214i, -664f)), Struct_4(593f, Struct_1(vec4<f32>(570f, -1189f, 2586f, -488f), -17143i, 207f)), Struct_4(1148f, Struct_1(vec4<f32>(818f, -649f, 1217f, 867f), -25288i, 242f)), Struct_4(1000f, Struct_1(vec4<f32>(837f, -626f, 453f, -149f), -14762i, 107f)), Struct_4(558f, Struct_1(vec4<f32>(-167f, 972f, -449f, -1325f), 14840i, -1438f)), Struct_4(-2101f, Struct_1(vec4<f32>(1252f, 1905f, 1267f, 703f), 1i, 504f)), Struct_4(688f, Struct_1(vec4<f32>(-1000f, 1550f, -339f, 2103f), -32781i, 1167f)), Struct_4(536f, Struct_1(vec4<f32>(-188f, 1260f, -1000f, 361f), -1i, 169f)), Struct_4(-1248f, Struct_1(vec4<f32>(-2700f, -689f, -601f, 319f), -21950i, 1306f)), Struct_4(1058f, Struct_1(vec4<f32>(380f, 1554f, -479f, 255f), 0i, -1000f)), Struct_4(-1661f, Struct_1(vec4<f32>(636f, 809f, 680f, -1130f), -30488i, 848f)), Struct_4(686f, Struct_1(vec4<f32>(1911f, -567f, -443f, -314f), 2147483647i, 1024f)), Struct_4(-277f, Struct_1(vec4<f32>(-1328f, -1125f, 246f, -675f), 13603i, -442f)), Struct_4(1000f, Struct_1(vec4<f32>(356f, 1591f, 188f, -2662f), -28704i, 1411f)), Struct_4(-1000f, Struct_1(vec4<f32>(667f, -1795f, -513f, 658f), 1i, -1073f)), Struct_4(1172f, Struct_1(vec4<f32>(-163f, 348f, 2761f, -548f), -70886i, 1000f)), Struct_4(-321f, Struct_1(vec4<f32>(-785f, -668f, 664f, 1287f), 0i, 740f)), Struct_4(-813f, Struct_1(vec4<f32>(878f, 1000f, 672f, 150f), 2147483647i, 284f)), Struct_4(1000f, Struct_1(vec4<f32>(541f, -1037f, -824f, 327f), 0i, 614f)), Struct_4(-657f, Struct_1(vec4<f32>(362f, 1000f, 351f, 303f), -58862i, 347f)));

var<private> global1: Struct_5 = Struct_5(Struct_1(vec4<f32>(-426f, 370f, -1371f, -828f), 3514i, -2148f), Struct_1(vec4<f32>(-1188f, 673f, 460f, -799f), -64837i, -1361f));

var<private> global2: array<Struct_5, 1> = array<Struct_5, 1>(Struct_5(Struct_1(vec4<f32>(-495f, 989f, -2518f, -218f), 1i, 958f), Struct_1(vec4<f32>(-834f, 1246f, 984f, 905f), 1i, 711f)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(1412f);
    global2 = array<Struct_5, 1>();
    let var_1 = -29786i;
    global2 = array<Struct_5, 1>();
    global2 = array<Struct_5, 1>();
    return Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.a.c))), _wgslsmith_f_op_f32(-var_0.a))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_5, arg_2: vec3<u32>, arg_3: vec3<f32>) -> i32 {
    var var_0 = firstTrailingBit(vec2<u32>(1u, abs(arg_2.x) << ((select(2593u, u_input.a, false) & (arg_2.x << (u_input.a % 32u))) % 32u)));
    var var_1 = arg_0;
    let var_2 = any(arg_0);
    global2 = array<Struct_5, 1>();
    global0 = array<Struct_4, 23>();
    return 1462i;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_3) -> Struct_1 {
    var var_0 = u_input.a;
    var var_1 = !select(select(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), vec3<bool>(any(vec4<bool>(false, false, true, true)), true, true), vec3<bool>(true, true, true)), select(vec3<bool>(select(true, true, true), true, all(vec2<bool>(true, false))), vec3<bool>(true, false, any(vec4<bool>(false, true, false, true))), true), true);
    var var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(global1.b.a.x, global1.b.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(361f)))), arg_2.b.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1) + arg_1), global1.b.a))));
    global2 = array<Struct_5, 1>();
    let var_3 = Struct_5(Struct_1(_wgslsmith_f_op_vec4_f32(floor(global1.a.a)), arg_2.a.x, arg_0.a), Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(global1.b.a, _wgslsmith_f_op_vec4_f32(-global1.a.a))))), min(select(~arg_2.a.x, -46447i, var_1.x), max(2147483647i, arg_2.a.x) << ((1u >> (u_input.a % 32u)) % 32u)), func_2().a));
    return Struct_1(vec4<f32>(1f, 1699f, arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-503f, _wgslsmith_div_f32(1564f, -267f)) * 253f)), var_3.a.b, _wgslsmith_f_op_f32(-342f + _wgslsmith_f_op_f32(f32(-1f) * -176f)));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<u32>) -> f32 {
    var var_0 = !vec3<bool>(false, true, any(vec4<bool>(all(vec4<bool>(true, false, true, true)), any(vec4<bool>(false, true, true, false)), true, true)));
    var var_1 = all(var_0.xz);
    var var_2 = var_0.x;
    let var_3 = Struct_4(_wgslsmith_div_f32(_wgslsmith_div_f32(-1070f, global1.b.a.x), global1.a.c), func_4(func_2(), global1.b.a, Struct_3(vec3<i32>(reverseBits(1i), func_3(vec4<bool>(false, var_0.x, false, var_0.x), Struct_5(global1.b, global1.b), vec3<u32>(arg_1.x, 0u, arg_0.x), vec3<f32>(global1.b.c, -167f, -1424f)), _wgslsmith_mod_i32(global1.a.b, global1.b.b)), Struct_2(_wgslsmith_f_op_f32(floor(global1.b.c))))));
    var_0 = vec3<bool>(1i == ((~var_3.b.b << (10397u % 32u)) | max(~3239i, global1.a.b)), !(!var_0.x & all(vec3<bool>(var_0.x, var_0.x, false))) && true, false);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.c));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 23>();
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(~(~(~vec4<u32>(u_input.a, 0u, 5278u, u_input.a))), ~(~vec2<u32>(42921u, 4294967295u)) & _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a, 58903u), firstLeadingBit(vec2<u32>(u_input.a, u_input.a)), vec2<u32>(u_input.a, 44627u)))), -825f));
    let var_1 = all(!(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)))));
    let var_2 = select(vec3<bool>(var_1, true, true), vec3<bool>(any(!select(vec4<bool>(true, var_1, true, false), vec4<bool>(var_1, true, true, var_1), vec4<bool>(true, var_1, var_1, var_1))), var_1, !var_1), -_wgslsmith_div_i32(global1.a.b ^ 42210i, global1.a.b) != ~(~global1.a.b));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-230f, 391f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(621f * -388f))))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.a.x) * _wgslsmith_f_op_f32(-global1.a.a.x))), _wgslsmith_f_op_f32(-300f * 218f), 720f));
    var var_4 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(231f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(ceil(var_3.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.b.a.x), var_4.a, true)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + var_4.a) - _wgslsmith_f_op_f32(ceil(1096f)))))), global1.b.b);
}

