struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec3<f32>,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(false, vec4<f32>(-856f, 1288f, 602f, 655f), 15937u), Struct_2(false, vec4<f32>(402f, 648f, -543f, 597f), 0u), Struct_2(false, vec4<f32>(2276f, 857f, 1196f, -413f), 4294967295u), Struct_2(false, vec4<f32>(-709f, 1478f, -2210f, 967f), 1u), Struct_2(false, vec4<f32>(-529f, 231f, 624f, 349f), 4294967295u), Struct_2(true, vec4<f32>(-649f, 444f, 234f, 244f), 0u), Struct_2(true, vec4<f32>(156f, -1439f, -705f, 1071f), 8103u), Struct_2(false, vec4<f32>(1421f, 723f, 584f, 813f), 1u), Struct_2(false, vec4<f32>(-1000f, -1000f, -1139f, 1074f), 4294967295u), Struct_2(false, vec4<f32>(-2767f, -428f, 1254f, 1928f), 4294967295u), Struct_2(true, vec4<f32>(-1474f, 2191f, -232f, -2079f), 0u));

var<private> global1: array<Struct_4, 10> = array<Struct_4, 10>(Struct_4(Struct_2(false, vec4<f32>(-1077f, -278f, -1000f, -481f), 4294967295u), Struct_3(Struct_2(true, vec4<f32>(1098f, 439f, -1232f, 658f), 1u), vec2<u32>(12077u, 2112u), vec4<u32>(4294967295u, 25825u, 8434u, 0u)), vec3<f32>(-126f, -1249f, -1000f), 1i, -88703i), Struct_4(Struct_2(true, vec4<f32>(392f, -745f, 495f, -2160f), 5216u), Struct_3(Struct_2(false, vec4<f32>(270f, 254f, -634f, 867f), 4294967295u), vec2<u32>(4294967295u, 0u), vec4<u32>(1u, 1u, 105311u, 4294967295u)), vec3<f32>(1415f, 748f, -702f), -85018i, i32(-2147483648)), Struct_4(Struct_2(false, vec4<f32>(-632f, -1344f, 1748f, 372f), 1019u), Struct_3(Struct_2(true, vec4<f32>(-796f, 1727f, 999f, 747f), 4294967295u), vec2<u32>(38773u, 0u), vec4<u32>(35188u, 27448u, 33777u, 108481u)), vec3<f32>(657f, 214f, 303f), -1i, -2809i), Struct_4(Struct_2(false, vec4<f32>(-251f, 1536f, -643f, 1554f), 0u), Struct_3(Struct_2(false, vec4<f32>(602f, 339f, 1559f, -156f), 4294967295u), vec2<u32>(1u, 31762u), vec4<u32>(20168u, 28187u, 0u, 1u)), vec3<f32>(-226f, -789f, 1520f), 9977i, -47012i), Struct_4(Struct_2(true, vec4<f32>(815f, 1287f, -603f, 304f), 43297u), Struct_3(Struct_2(true, vec4<f32>(-1522f, 1000f, -962f, -769f), 45817u), vec2<u32>(10542u, 0u), vec4<u32>(589u, 1u, 14460u, 0u)), vec3<f32>(100f, 466f, -461f), 34706i, -44582i), Struct_4(Struct_2(true, vec4<f32>(382f, -167f, 1450f, 266f), 5077u), Struct_3(Struct_2(true, vec4<f32>(528f, 3091f, 1000f, 1791f), 39163u), vec2<u32>(4310u, 4294967295u), vec4<u32>(1u, 26024u, 6774u, 4294967295u)), vec3<f32>(2025f, -2080f, 816f), -13726i, -17823i), Struct_4(Struct_2(true, vec4<f32>(-722f, -1332f, 337f, -274f), 0u), Struct_3(Struct_2(true, vec4<f32>(916f, 227f, 1675f, 1065f), 61699u), vec2<u32>(30682u, 4294967295u), vec4<u32>(53778u, 0u, 99675u, 22605u)), vec3<f32>(704f, 557f, 2059f), 0i, -4158i), Struct_4(Struct_2(true, vec4<f32>(-685f, 1504f, -495f, 1000f), 48181u), Struct_3(Struct_2(false, vec4<f32>(703f, 164f, 643f, 974f), 25509u), vec2<u32>(0u, 4294967295u), vec4<u32>(0u, 30200u, 7148u, 27156u)), vec3<f32>(-1000f, -458f, -959f), 0i, -49863i), Struct_4(Struct_2(false, vec4<f32>(-1885f, 536f, -1294f, -695f), 0u), Struct_3(Struct_2(true, vec4<f32>(-1312f, 776f, -921f, -1414f), 1u), vec2<u32>(38128u, 23311u), vec4<u32>(3522u, 4294967295u, 76525u, 4294967295u)), vec3<f32>(820f, -297f, -1169f), i32(-2147483648), 14272i), Struct_4(Struct_2(false, vec4<f32>(1000f, -931f, 1193f, -902f), 27425u), Struct_3(Struct_2(false, vec4<f32>(3079f, 973f, 1372f, -565f), 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec4<u32>(1u, 3176u, 4294967295u, 1u)), vec3<f32>(1664f, 1000f, -555f), 61449i, -48987i));

var<private> global2: vec3<bool> = vec3<bool>(true, false, true);

var<private> global3: array<vec3<f32>, 19> = array<vec3<f32>, 19>(vec3<f32>(1543f, 888f, -1302f), vec3<f32>(2003f, -497f, -504f), vec3<f32>(-317f, 742f, -1373f), vec3<f32>(674f, -817f, -1064f), vec3<f32>(591f, -237f, -579f), vec3<f32>(891f, -229f, -1000f), vec3<f32>(372f, -572f, -683f), vec3<f32>(-1000f, 191f, 1000f), vec3<f32>(-618f, 366f, -142f), vec3<f32>(-632f, 1000f, 131f), vec3<f32>(-1904f, -1946f, 2552f), vec3<f32>(-852f, -295f, 2132f), vec3<f32>(1150f, 1000f, -289f), vec3<f32>(-1478f, 1345f, 720f), vec3<f32>(349f, -331f, 1069f), vec3<f32>(155f, 1000f, -851f), vec3<f32>(-729f, 997f, -176f), vec3<f32>(-1456f, -341f, -1060f), vec3<f32>(316f, -1594f, 942f));

var<private> global4: Struct_2 = Struct_2(true, vec4<f32>(-800f, -287f, -2516f, -427f), 72147u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: f32, arg_1: vec2<u32>, arg_2: f32, arg_3: vec4<f32>) -> vec4<bool> {
    var var_0 = arg_1;
    global1 = array<Struct_4, 10>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-arg_3.wxz);
    global2 = !(!(!select(select(vec3<bool>(false, global2.x, global4.a), vec3<bool>(false, global4.a, global4.a), global4.a), select(vec3<bool>(global4.a, false, global2.x), vec3<bool>(global2.x, global4.a, false), vec3<bool>(global4.a, true, true)), vec3<bool>(false, true, global4.a))));
    let var_2 = 1000f;
    return !(!vec4<bool>(true & (var_2 > global4.b.x), all(select(vec3<bool>(global2.x, false, global4.a), vec3<bool>(global4.a, global4.a, true), vec3<bool>(true, global4.a, false))), !global2.x, (var_0.x ^ 4294967295u) != reverseBits(arg_1.x)));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_1) -> u32 {
    global1 = array<Struct_4, 10>();
    let var_0 = arg_2;
    var var_1 = ~vec3<i32>(u_input.a, reverseBits(1i), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, 2147483647i), firstLeadingBit(vec2<i32>(-596i, -6936i))), _wgslsmith_dot_vec4_i32(-vec4<i32>(1i, 1i, -41594i, arg_0), vec4<i32>(11573i, u_input.a, arg_0, arg_0))));
    var var_2 = Struct_4(global0[_wgslsmith_index_u32(global4.c, 11u)], Struct_3(Struct_2(true, vec4<f32>(1413f, arg_2.c, _wgslsmith_f_op_f32(min(-1323f, -308f)), _wgslsmith_f_op_f32(f32(-1f) * -791f)), global4.c), ~abs(min(vec2<u32>(arg_1.x, global4.c), vec2<u32>(arg_2.a.x, 99884u))), vec4<u32>(~_wgslsmith_mult_u32(0u, arg_1.x), arg_1.x, firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, global4.c), arg_1)), firstLeadingBit(arg_1.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-239f)), _wgslsmith_f_op_f32(-973f - var_0.c))), -1175f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-223f + 235f), -1151f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(-631f, global4.b.x)), _wgslsmith_div_f32(-502f, 781f), _wgslsmith_f_op_f32(-global4.b.x)))), -1i, -u_input.a);
    var_1 = reverseBits(vec3<i32>(~(-2147483647i), ~13245i, ~(~(-40204i)))) & vec3<i32>(firstLeadingBit(var_2.e), 2147483647i, 1i);
    return arg_2.b.x;
}

fn func_2(arg_0: bool) -> bool {
    let var_0 = global2.xx;
    global2 = !vec3<bool>(((u_input.a << (7497u % 32u)) ^ -18348i) <= u_input.a, func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global4.b.x, global4.b.x, false))), firstTrailingBit(vec2<u32>(1u, 24429u)), _wgslsmith_f_op_f32(trunc(global4.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-920f, 780f, -443f, global4.b.x), global4.b, vec4<bool>(true, global4.a, false, true))))).x, true);
    global0 = array<Struct_2, 11>();
    let var_1 = global4.c;
    var var_2 = Struct_4(global0[_wgslsmith_index_u32(global4.c, 11u)], Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~global4.c, 52542u), 11u)], ~vec2<u32>(func_3(10171i, vec2<u32>(45863u, 0u), Struct_1(vec4<u32>(global4.c, global4.c, 63000u, 21752u), vec3<u32>(global4.c, global4.c, 64487u), -1764f, global2.x)), global4.c), _wgslsmith_mult_vec4_u32(~vec4<u32>(global4.c, global4.c, global4.c, global4.c), firstTrailingBit(vec4<u32>(global4.c, 30014u, 0u, global4.c)) | vec4<u32>(4294967295u, global4.c, global4.c, global4.c))), global4.b.yxx, 33437i, abs(firstLeadingBit(u_input.a) ^ 38819i));
    return var_2.b.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4.b.x;
    var var_1 = _wgslsmith_mod_u32(1u, ~0u) & global4.c;
    let var_2 = func_2(all(select(!func_1(-963f, vec2<u32>(global4.c, 17565u), global4.b.x, vec4<f32>(global4.b.x, 1617f, 902f, global4.b.x)), !func_1(-1000f, vec2<u32>(global4.c, 12687u), global4.b.x, vec4<f32>(global4.b.x, global4.b.x, global4.b.x, 1636f)), select(!vec4<bool>(global2.x, global4.a, true, global4.a), select(vec4<bool>(global2.x, global4.a, false, false), vec4<bool>(global2.x, true, true, global2.x), vec4<bool>(global4.a, true, false, global4.a)), func_1(global4.b.x, vec2<u32>(4294967295u, 36465u), -171f, global4.b)))));
    global0 = array<Struct_2, 11>();
    let var_3 = global4.c;
    let var_4 = _wgslsmith_clamp_u32(37765u, _wgslsmith_dot_vec3_u32(vec3<u32>(~1u, 0u, 32742u) << (_wgslsmith_sub_vec3_u32(vec3<u32>(global4.c, 52313u, 34788u) >> (vec3<u32>(global4.c, global4.c, global4.c) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(global4.c, global4.c, 0u), vec3<u32>(4294967295u, global4.c, 53943u))) % vec3<u32>(32u)), ~(~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 138656u, 1u), vec3<u32>(4294967295u, global4.c, 0u)))), global4.c);
    var var_5 = vec3<bool>(any(!vec4<bool>(func_1(-159f, vec2<u32>(global4.c, 35782u), global4.b.x, global4.b).x, all(global2.xy), var_2, any(vec4<bool>(false, global2.x, global4.a, false)))), !func_1(global4.b.x, vec2<u32>(_wgslsmith_clamp_u32(73148u, var_4, var_4), ~31783u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.b.x, global4.b.x)), vec4<f32>(_wgslsmith_f_op_f32(-global4.b.x), _wgslsmith_f_op_f32(step(global4.b.x, 1193f)), global4.b.x, _wgslsmith_f_op_f32(select(global4.b.x, 922f, global2.x)))).x, false == (var_2 | true));
    let var_6 = min(_wgslsmith_dot_vec4_i32(-(~reverseBits(vec4<i32>(u_input.a, 2147483647i, u_input.a, 8434i))), vec4<i32>(-25499i, u_input.a, ~1i, (2147483647i & u_input.a) | u_input.a)), 28178i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4.b.x), _wgslsmith_f_op_f32(-global4.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -802f))));
}

