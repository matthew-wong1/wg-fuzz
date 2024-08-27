struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
}

struct Struct_5 {
    a: i32,
    b: vec2<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 8> = array<Struct_4, 8>(Struct_4(Struct_2(Struct_1(-502f, 1000f, vec2<bool>(false, true), 1019f), Struct_1(160f, 256f, vec2<bool>(false, false), 424f), -578f, Struct_1(-1370f, -1286f, vec2<bool>(false, false), 569f), Struct_1(1138f, 1000f, vec2<bool>(true, false), 1438f)), vec4<f32>(-1259f, -1000f, -1000f, -404f)), Struct_4(Struct_2(Struct_1(-626f, -1000f, vec2<bool>(false, true), -123f), Struct_1(-596f, -113f, vec2<bool>(false, false), 968f), 940f, Struct_1(339f, 1532f, vec2<bool>(true, true), -620f), Struct_1(546f, 1549f, vec2<bool>(false, false), -1376f)), vec4<f32>(-2290f, 810f, -541f, 258f)), Struct_4(Struct_2(Struct_1(-558f, 177f, vec2<bool>(true, true), 1298f), Struct_1(-984f, -753f, vec2<bool>(false, false), -1218f), -1109f, Struct_1(-522f, 1044f, vec2<bool>(false, true), 1378f), Struct_1(749f, 1321f, vec2<bool>(true, false), -129f)), vec4<f32>(835f, -310f, -921f, 229f)), Struct_4(Struct_2(Struct_1(-1151f, -1206f, vec2<bool>(true, true), -569f), Struct_1(-654f, 165f, vec2<bool>(true, true), 1791f), 2423f, Struct_1(506f, -165f, vec2<bool>(false, true), -1163f), Struct_1(-427f, -1228f, vec2<bool>(false, true), -227f)), vec4<f32>(915f, 521f, -726f, -364f)), Struct_4(Struct_2(Struct_1(435f, 337f, vec2<bool>(true, true), 1176f), Struct_1(1321f, 679f, vec2<bool>(true, false), -216f), 445f, Struct_1(455f, -1062f, vec2<bool>(true, false), 1346f), Struct_1(-196f, 901f, vec2<bool>(true, true), -871f)), vec4<f32>(-394f, -1000f, -1171f, 941f)), Struct_4(Struct_2(Struct_1(438f, -295f, vec2<bool>(false, false), -1806f), Struct_1(197f, -1000f, vec2<bool>(true, false), 507f), -442f, Struct_1(1191f, -469f, vec2<bool>(true, true), 229f), Struct_1(597f, -500f, vec2<bool>(false, false), 1000f)), vec4<f32>(1511f, 1908f, -1465f, 882f)), Struct_4(Struct_2(Struct_1(429f, 580f, vec2<bool>(false, false), -630f), Struct_1(-806f, 364f, vec2<bool>(false, false), -222f), 1798f, Struct_1(-386f, -416f, vec2<bool>(false, false), 142f), Struct_1(-815f, 336f, vec2<bool>(false, true), -1010f)), vec4<f32>(414f, -172f, -1000f, 1476f)), Struct_4(Struct_2(Struct_1(-1000f, -322f, vec2<bool>(true, false), 1461f), Struct_1(1007f, -1280f, vec2<bool>(false, false), 1182f), -1147f, Struct_1(198f, -1760f, vec2<bool>(false, true), -1366f), Struct_1(2091f, 1624f, vec2<bool>(false, false), -1000f)), vec4<f32>(1272f, -1574f, -770f, 218f)));

var<private> global1: vec4<u32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(979f - -989f) * _wgslsmith_f_op_f32(133f - -157f)), _wgslsmith_f_op_f32(f32(-1f) * -1994f), 1223f, -859f))));
    var var_1 = Struct_4(Struct_2(Struct_1(var_0.a.x, -2937f, vec2<bool>(true, true), -1688f), Struct_1(_wgslsmith_div_f32(-2259f, -1620f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.a.x)) + _wgslsmith_f_op_f32(-var_0.a.x)), vec2<bool>(true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -863f), Struct_1(2131f, _wgslsmith_f_op_f32(-var_0.a.x), vec2<bool>(true, true), var_0.a.x), Struct_1(-406f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.a.x)) * _wgslsmith_f_op_f32(sign(502f))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), _wgslsmith_f_op_f32(floor(-1375f)))), vec4<f32>(_wgslsmith_f_op_f32(sign(-1015f)), _wgslsmith_div_f32(543f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x) * -892f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2192f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-196f, var_0.a.x, false)), -327f, true)))));
    let var_2 = all(var_1.a.d.c);
    let var_3 = vec2<f32>(591f, var_1.a.d.b);
    let var_4 = vec4<i32>((i32(-1i) * -u_input.b.x) | ~(-52083i), i32(-1i) * -74029i, -12503i, ~(-u_input.b.x) >> (~select(4294967295u, global1.x, true) % 32u)) << (u_input.c % vec4<u32>(32u));
    return select(vec3<bool>(true, all(select(vec4<bool>(false, true, false, true), vec4<bool>(var_2, var_1.a.d.c.x, false, var_2), !var_2)), !(!var_1.a.a.c.x)), select(select(!vec3<bool>(true, true, var_2), vec3<bool>(!var_2, true, true), var_1.a.a.c.x), !(!select(vec3<bool>(var_1.a.d.c.x, false, var_1.a.b.c.x), vec3<bool>(false, true, var_2), vec3<bool>(var_1.a.d.c.x, true, true))), vec3<bool>(var_2, !var_1.a.d.c.x, false)), !any(vec3<bool>(false, false, any(var_1.a.d.c))));
}

fn func_2(arg_0: Struct_5, arg_1: Struct_4) -> vec3<bool> {
    return !select(func_3(), vec3<bool>(arg_0.c.a.c.x, all(vec3<bool>(arg_1.a.b.c.x, false, arg_0.c.e.c.x)), select(arg_0.c.d.c.x, false, any(vec3<bool>(false, arg_0.c.a.c.x, false)))), false | any(!vec3<bool>(arg_1.a.a.c.x, true, false)));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = !(!select(vec3<bool>(true, all(vec2<bool>(true, false)), true), func_2(Struct_5(2147483647i, u_input.b.zz, Struct_2(Struct_1(-723f, 127f, vec2<bool>(true, true), arg_1.a.x), Struct_1(1000f, -300f, vec2<bool>(false, false), 862f), arg_1.a.x, Struct_1(826f, 1000f, vec2<bool>(false, true), arg_1.a.x), Struct_1(563f, arg_1.a.x, vec2<bool>(true, false), arg_1.a.x))), Struct_4(Struct_2(Struct_1(arg_2.x, arg_1.a.x, vec2<bool>(true, false), arg_1.a.x), Struct_1(arg_2.x, arg_2.x, vec2<bool>(false, false), arg_1.a.x), arg_1.a.x, Struct_1(-1285f, 1296f, vec2<bool>(true, true), arg_2.x), Struct_1(arg_2.x, -265f, vec2<bool>(false, false), -857f)), arg_2)), false));
    global0 = array<Struct_4, 8>();
    global1 = ~vec4<u32>(abs(u_input.c.x), 25779u, 1u, select(arg_0.x, 1u, var_0.x));
    global0 = array<Struct_4, 8>();
    let var_1 = Struct_4(Struct_2(Struct_1(arg_2.x, arg_1.a.x, var_0.zx, _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(f32(-1f) * -810f), true))), Struct_1(_wgslsmith_f_op_f32(round(280f)), _wgslsmith_div_f32(297f, _wgslsmith_f_op_f32(1730f * arg_1.a.x)), !select(var_0.zz, vec2<bool>(var_0.x, false), true), 1230f), -885f, Struct_1(1000f, arg_2.x, !vec2<bool>(true, var_0.x), _wgslsmith_f_op_f32(max(arg_2.x, -384f))), Struct_1(-992f, _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(sign(-365f))), var_0.zx, _wgslsmith_f_op_f32(-arg_1.a.x))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-804f - _wgslsmith_f_op_f32(arg_2.x - -1147f))), arg_1.a.x, arg_1.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x - arg_2.x) - _wgslsmith_f_op_f32(ceil(-826f)))))));
    return Struct_2(Struct_1(1598f, 816f, func_2(Struct_5(-34651i, ~u_input.b.wy, var_1.a), var_1).xz, 408f), var_1.a.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-337f + 947f) + var_1.a.e.b)), var_1.a.a, Struct_1(436f, _wgslsmith_f_op_f32(-1f), var_1.a.e.c, _wgslsmith_f_op_f32(var_1.b.x + _wgslsmith_f_op_f32(abs(-270f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(reverseBits(-42219i), vec2<i32>(_wgslsmith_sub_i32(1i, u_input.b.x), 1i ^ u_input.a), func_1(~u_input.c.wy, Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(592f, 688f, -1000f, -1075f)) * vec4<f32>(764f, 435f, 639f, 886f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1618f, 2057f, -560f, 1513f), vec4<f32>(1322f, 1055f, 601f, 233f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -249f, -872f, -1038f) * vec4<f32>(-2450f, -1564f, -2012f, 781f))))));
    let var_1 = _wgslsmith_dot_vec4_i32(~(vec4<i32>(20872i, -var_0.a, _wgslsmith_div_i32(var_0.a, -12745i), _wgslsmith_add_i32(var_0.b.x, 0i)) >> (~(u_input.c | u_input.c) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(-(u_input.b | vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, var_0.a)), u_input.b));
    let var_2 = ~0u;
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-160f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-640f)) * _wgslsmith_f_op_f32(-2129f + -405f)), 331f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(var_0.c.c)), _wgslsmith_f_op_f32(select(var_0.c.c, 1159f, var_0.c.e.c.x))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.c.e.a)), 371f, _wgslsmith_f_op_f32(f32(-1f) * -177f), _wgslsmith_f_op_f32(f32(-1f) * -749f)))));
    let var_4 = var_3.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~min(vec2<u32>(0u, 7391u), vec2<u32>(var_2, 4294967295u))), var_3.a);
}

