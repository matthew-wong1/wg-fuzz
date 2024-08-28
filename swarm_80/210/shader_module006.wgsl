struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<vec4<bool>, 9>;

var<private> global2: array<Struct_4, 28> = array<Struct_4, 28>(Struct_4(Struct_3(Struct_2(vec2<bool>(true, true), Struct_1(1u, vec4<f32>(-235f, 125f, 1176f, 760f), vec2<bool>(false, false)), -747f)), vec2<i32>(-2417i, 1i)), Struct_4(Struct_3(Struct_2(vec2<bool>(false, true), Struct_1(0u, vec4<f32>(-1188f, 1000f, -679f, -645f), vec2<bool>(false, false)), 726f)), vec2<i32>(i32(-2147483648), -1429i)), Struct_4(Struct_3(Struct_2(vec2<bool>(false, false), Struct_1(4294967295u, vec4<f32>(-1000f, 212f, 1243f, 604f), vec2<bool>(true, true)), 684f)), vec2<i32>(-10840i, -28894i)), Struct_4(Struct_3(Struct_2(vec2<bool>(true, false), Struct_1(1u, vec4<f32>(-1000f, 1000f, 482f, 708f), vec2<bool>(false, false)), -1078f)), vec2<i32>(i32(-2147483648), -35399i)), Struct_4(Struct_3(Struct_2(vec2<bool>(true, false), Struct_1(14434u, vec4<f32>(365f, 2477f, 1571f, 527f), vec2<bool>(false, false)), 608f)), vec2<i32>(-19418i, -1i)), Struct_4(Struct_3(Struct_2(vec2<bool>(true, true), Struct_1(1u, vec4<f32>(-1000f, -693f, -1088f, 1235f), vec2<bool>(true, false)), 290f)), vec2<i32>(0i, 1i)), Struct_4(Struct_3(Struct_2(vec2<bool>(false, true), Struct_1(0u, vec4<f32>(488f, -265f, -404f, -303f), vec2<bool>(true, false)), 304f)), vec2<i32>(i32(-2147483648), 35252i)), Struct_4(Struct_3(Struct_2(vec2<bool>(true, true), Struct_1(53668u, vec4<f32>(112f, -682f, -1304f, -560f), vec2<bool>(true, false)), -108f)), vec2<i32>(16724i, 4168i)), Struct_4(Struct_3(Struct_2(vec2<bool>(true, true), Struct_1(1u, vec4<f32>(-1504f, -614f, -155f, -156f), vec2<bool>(true, false)), -1260f)), vec2<i32>(-30696i, 1i)), Struct_4(Struct_3(Struct_2(vec2<bool>(true, false), Struct_1(56235u, vec4<f32>(1055f, 397f, -635f, 329f), vec2<bool>(false, false)), 795f)), vec2<i32>(2147483647i, i32(-2147483648))), Struct_4(Struct_3(Struct_2(vec2<bool>(true, false), Struct_1(121365u, vec4<f32>(848f, -850f, 2052f, -714f), vec2<bool>(false, true)), -569f)), vec2<i32>(88738i, i32(-2147483648))), Struct_4(Struct_3(Struct_2(vec2<bool>(false, false), Struct_1(0u, vec4<f32>(-1748f, -104f, 293f, 669f), vec2<bool>(false, true)), -943f)), vec2<i32>(-1i, -51630i)), Struct_4(Struct_3(Struct_2(vec2<bool>(false, true), Struct_1(151u, vec4<f32>(126f, 303f, 983f, -384f), vec2<bool>(true, false)), 1000f)), vec2<i32>(i32(-2147483648), 1i)), Struct_4(Struct_3(Struct_2(vec2<bool>(true, false), Struct_1(13014u, vec4<f32>(1096f, -558f, 214f, 898f), vec2<bool>(true, false)), 501f)), vec2<i32>(55208i, 41503i)), Struct_4(Struct_3(Struct_2(vec2<bool>(false, true), Struct_1(4294967295u, vec4<f32>(779f, 1036f, -222f, -1118f), vec2<bool>(false, true)), -162f)), vec2<i32>(i32(-2147483648), 19978i)), Struct_4(Struct_3(Struct_2(vec2<bool>(true, true), Struct_1(51904u, vec4<f32>(-1320f, 490f, -1335f, -195f), vec2<bool>(false, true)), 145f)), vec2<i32>(2147483647i, 0i)), Struct_4(Struct_3(Struct_2(vec2<bool>(true, false), Struct_1(4294967295u, vec4<f32>(-1041f, -2598f, -1436f, -574f), vec2<bool>(true, true)), 227f)), vec2<i32>(i32(-2147483648), 3102i)), Struct_4(Struct_3(Struct_2(vec2<bool>(false, true), Struct_1(11433u, vec4<f32>(-357f, 360f, 1189f, 500f), vec2<bool>(true, true)), 1584f)), vec2<i32>(9811i, 24784i)), Struct_4(Struct_3(Struct_2(vec2<bool>(false, true), Struct_1(43837u, vec4<f32>(-1874f, -513f, 1352f, -1252f), vec2<bool>(false, false)), 175f)), vec2<i32>(-32107i, 22969i)), Struct_4(Struct_3(Struct_2(vec2<bool>(false, false), Struct_1(36712u, vec4<f32>(-1023f, -585f, -348f, -802f), vec2<bool>(false, false)), 340f)), vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_4(Struct_3(Struct_2(vec2<bool>(true, true), Struct_1(1u, vec4<f32>(-241f, -1000f, 820f, -716f), vec2<bool>(false, false)), 1850f)), vec2<i32>(-27852i, 0i)), Struct_4(Struct_3(Struct_2(vec2<bool>(true, false), Struct_1(0u, vec4<f32>(624f, -796f, 617f, -646f), vec2<bool>(false, true)), -984f)), vec2<i32>(-45409i, 33630i)), Struct_4(Struct_3(Struct_2(vec2<bool>(false, true), Struct_1(4294967295u, vec4<f32>(316f, 1000f, 211f, -1225f), vec2<bool>(false, true)), 1267f)), vec2<i32>(2147483647i, i32(-2147483648))), Struct_4(Struct_3(Struct_2(vec2<bool>(true, true), Struct_1(51445u, vec4<f32>(-1858f, -1000f, -1094f, 1000f), vec2<bool>(false, false)), -456f)), vec2<i32>(46939i, 13502i)), Struct_4(Struct_3(Struct_2(vec2<bool>(false, false), Struct_1(0u, vec4<f32>(-989f, 931f, -808f, 727f), vec2<bool>(false, true)), 299f)), vec2<i32>(i32(-2147483648), 69915i)), Struct_4(Struct_3(Struct_2(vec2<bool>(false, false), Struct_1(4606u, vec4<f32>(-2151f, 1000f, 264f, 186f), vec2<bool>(true, true)), -637f)), vec2<i32>(169i, -1i)), Struct_4(Struct_3(Struct_2(vec2<bool>(false, false), Struct_1(0u, vec4<f32>(497f, 250f, 315f, 1412f), vec2<bool>(false, true)), 1675f)), vec2<i32>(-12622i, 1i)), Struct_4(Struct_3(Struct_2(vec2<bool>(true, false), Struct_1(1u, vec4<f32>(1000f, -471f, -791f, -891f), vec2<bool>(true, false)), -1660f)), vec2<i32>(2147483647i, -54234i)));

var<private> global3: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(vec2<bool>(false, false), Struct_1(2818u, vec4<f32>(-570f, -1607f, -519f, 268f), vec2<bool>(false, true)), 1932f), Struct_2(vec2<bool>(false, true), Struct_1(36724u, vec4<f32>(-749f, 1022f, -1000f, -982f), vec2<bool>(false, false)), -762f), Struct_2(vec2<bool>(true, true), Struct_1(10496u, vec4<f32>(728f, 1093f, 1137f, -468f), vec2<bool>(true, false)), -280f), Struct_2(vec2<bool>(true, true), Struct_1(0u, vec4<f32>(-648f, -778f, -3028f, -1997f), vec2<bool>(false, false)), 761f), Struct_2(vec2<bool>(true, false), Struct_1(1u, vec4<f32>(126f, 919f, -1162f, 993f), vec2<bool>(false, false)), -357f), Struct_2(vec2<bool>(false, true), Struct_1(56181u, vec4<f32>(-985f, 116f, -347f, -202f), vec2<bool>(true, false)), 425f), Struct_2(vec2<bool>(false, false), Struct_1(0u, vec4<f32>(-1000f, -413f, 1803f, 825f), vec2<bool>(false, false)), 1007f), Struct_2(vec2<bool>(false, false), Struct_1(0u, vec4<f32>(1999f, -1000f, 129f, -195f), vec2<bool>(true, true)), 511f), Struct_2(vec2<bool>(false, false), Struct_1(0u, vec4<f32>(-341f, 775f, -577f, 1000f), vec2<bool>(false, true)), -854f), Struct_2(vec2<bool>(false, true), Struct_1(15952u, vec4<f32>(1000f, 131f, -1483f, 389f), vec2<bool>(true, false)), 1616f), Struct_2(vec2<bool>(true, false), Struct_1(4294967295u, vec4<f32>(-974f, -931f, 163f, 1129f), vec2<bool>(false, false)), 2272f), Struct_2(vec2<bool>(false, true), Struct_1(11411u, vec4<f32>(788f, -494f, -1773f, -584f), vec2<bool>(false, true)), -203f), Struct_2(vec2<bool>(false, false), Struct_1(1u, vec4<f32>(-2295f, -210f, -315f, -398f), vec2<bool>(true, false)), 824f), Struct_2(vec2<bool>(false, true), Struct_1(32635u, vec4<f32>(889f, 1144f, -1661f, 650f), vec2<bool>(false, true)), -751f), Struct_2(vec2<bool>(false, true), Struct_1(42593u, vec4<f32>(1459f, 1357f, 261f, -383f), vec2<bool>(false, false)), -301f), Struct_2(vec2<bool>(true, false), Struct_1(4294967295u, vec4<f32>(-1820f, 146f, -668f, -814f), vec2<bool>(true, true)), 404f), Struct_2(vec2<bool>(true, false), Struct_1(38049u, vec4<f32>(1225f, -290f, -1084f, 811f), vec2<bool>(false, false)), -1000f), Struct_2(vec2<bool>(true, true), Struct_1(51096u, vec4<f32>(1558f, 466f, -726f, -2337f), vec2<bool>(false, false)), 2006f), Struct_2(vec2<bool>(true, false), Struct_1(1u, vec4<f32>(946f, 1481f, -839f, 1518f), vec2<bool>(true, false)), -1514f), Struct_2(vec2<bool>(false, true), Struct_1(74897u, vec4<f32>(-1495f, -565f, 1384f, -185f), vec2<bool>(true, false)), 413f), Struct_2(vec2<bool>(false, true), Struct_1(1u, vec4<f32>(-2193f, 611f, 909f, -193f), vec2<bool>(true, false)), -457f), Struct_2(vec2<bool>(true, true), Struct_1(0u, vec4<f32>(154f, 931f, -1540f, -436f), vec2<bool>(true, true)), 1646f), Struct_2(vec2<bool>(false, true), Struct_1(1u, vec4<f32>(-605f, 101f, 728f, 896f), vec2<bool>(true, false)), -1000f), Struct_2(vec2<bool>(true, true), Struct_1(1u, vec4<f32>(164f, 320f, 923f, 432f), vec2<bool>(false, true)), -125f), Struct_2(vec2<bool>(false, true), Struct_1(45064u, vec4<f32>(-1404f, 1032f, 848f, -986f), vec2<bool>(true, true)), -137f), Struct_2(vec2<bool>(false, false), Struct_1(50808u, vec4<f32>(489f, 1310f, 572f, -990f), vec2<bool>(false, true)), 1362f), Struct_2(vec2<bool>(false, true), Struct_1(4294967295u, vec4<f32>(-1000f, 521f, 964f, 845f), vec2<bool>(false, true)), 291f), Struct_2(vec2<bool>(false, true), Struct_1(4294967295u, vec4<f32>(-1348f, -1257f, -696f, 204f), vec2<bool>(true, false)), -1636f), Struct_2(vec2<bool>(false, false), Struct_1(1u, vec4<f32>(-788f, 1046f, 296f, 664f), vec2<bool>(true, false)), 727f), Struct_2(vec2<bool>(true, false), Struct_1(4294967295u, vec4<f32>(503f, -208f, -461f, -1460f), vec2<bool>(true, true)), -617f), Struct_2(vec2<bool>(true, false), Struct_1(5254u, vec4<f32>(-1387f, 619f, -1000f, 595f), vec2<bool>(false, false)), -2566f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2() -> Struct_5 {
    let var_0 = max(u_input.a, 1955u);
    var var_1 = global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(67790u, u_input.a), 28u)];
    global2 = array<Struct_4, 28>();
    let var_2 = _wgslsmith_f_op_vec3_f32(ceil(var_1.a.a.b.b.wxy));
    var var_3 = Struct_4(var_1.a, ~(var_1.b >> (min(vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(var_0, u_input.a)) % vec2<u32>(32u))));
    return Struct_5(false);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<f32>) -> Struct_5 {
    let var_0 = ~select(firstLeadingBit(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 0u, 7711u), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 96u, u_input.a, u_input.a), vec4<u32>(84017u, 31747u, u_input.a, u_input.a)))), vec4<u32>(u_input.a, ~u_input.a, ~_wgslsmith_div_u32(77112u, u_input.a), ~u_input.a), select(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, u_input.a) << (~u_input.a % 32u), 9u)], vec4<bool>(!global0.a, !global0.a, true, true), select(!vec4<bool>(true, false, global0.a, global0.a), global1[_wgslsmith_index_u32(~38462u, 9u)], all(vec2<bool>(global0.a, true)))));
    var var_1 = -1861f;
    var var_2 = func_2();
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)) * -269f))) - -608f);
    return func_2();
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_5, arg_2: i32, arg_3: i32) -> Struct_2 {
    global0 = arg_1;
    var var_0 = Struct_1(_wgslsmith_add_u32(~0u, ~_wgslsmith_mult_u32(u_input.a, 0u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1716f, -272f, 286f, 394f), vec4<f32>(255f, 1226f, 362f, -733f))), vec4<f32>(_wgslsmith_f_op_f32(276f - 594f), _wgslsmith_f_op_f32(f32(-1f) * -681f), -619f, 389f)))), !(!vec2<bool>(true, arg_1.a)));
    var var_1 = global3[_wgslsmith_index_u32(arg_0.x, 31u)];
    var var_2 = vec4<i32>(8406i, -17083i, countOneBits(~_wgslsmith_div_i32(arg_3 << (arg_0.x % 32u), 2147483647i | arg_2)), 14564i);
    var var_3 = var_2.wwz;
    return global3[_wgslsmith_index_u32(max(var_0.a, var_0.a), 31u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_3(~(~(vec3<u32>(5732u, 4294967295u, u_input.a) << (vec3<u32>(28175u, 0u, 7300u) % vec3<u32>(32u)))), func_1(vec2<i32>(min(u_input.d, u_input.c), -u_input.d), vec2<f32>(2640f, _wgslsmith_f_op_f32(abs(585f)))), u_input.b.x, ~(-3286i)));
    global3 = array<Struct_2, 31>();
    let var_1 = Struct_3(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(43357u, _wgslsmith_add_u32(1u, func_3(vec3<u32>(0u, 4294967295u, 4294967295u), Struct_5(true), u_input.b.x, firstTrailingBit(2147483647i)).b.a)), 31u)]);
    global3 = array<Struct_2, 31>();
    var var_2 = func_1(firstTrailingBit(u_input.b.xy), var_0.a.b.b.yz);
    global3 = array<Struct_2, 31>();
    var var_3 = vec2<i32>(~u_input.c, abs(u_input.c));
    var var_4 = ~vec4<u32>((_wgslsmith_add_u32(var_0.a.b.a, u_input.a) << (21724u % 32u)) & _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.b.a, var_0.a.b.a, 1u, 4294967295u) & vec4<u32>(var_0.a.b.a, u_input.a, var_1.a.b.a, 0u), ~vec4<u32>(0u, var_1.a.b.a, 1u, var_0.a.b.a)), u_input.a, ~4294967295u, _wgslsmith_sub_u32(u_input.a, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, var_0.a.b.a, 38389u), vec3<u32>(u_input.a, 48016u, var_1.a.b.a))));
    let var_5 = !vec4<bool>(true, var_0.a.b.c.x, true, false);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.b.b.zw, ~vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 169427u), var_4.ww), ~var_0.a.b.a), 79842u), _wgslsmith_f_op_f32(sign(-481f)), select(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-63858i, -1i, var_3.x, -33492i), abs(vec4<i32>(0i, u_input.c, 0i, 68962i))), -17057i), ~abs(30908i) << (_wgslsmith_clamp_u32(83352u, 12021u, ~u_input.a) % 32u), var_1.a.c < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1505f, var_1.a.c)))));
}

