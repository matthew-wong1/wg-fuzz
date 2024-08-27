struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct Struct_5 {
    a: f32,
    b: vec2<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec4<i32>, 32>;

var<private> global2: array<Struct_5, 29> = array<Struct_5, 29>(Struct_5(-388f, vec2<i32>(2147483647i, 34774i), Struct_3(Struct_2(vec4<bool>(false, false, true, true), vec4<f32>(167f, 1920f, 227f, -162f), -1i, Struct_1(vec3<f32>(763f, -1695f, -1185f), -1487f, false), Struct_1(vec3<f32>(1804f, -521f, -1251f), -142f, true)))), Struct_5(-195f, vec2<i32>(19954i, 48192i), Struct_3(Struct_2(vec4<bool>(false, true, true, true), vec4<f32>(891f, -443f, -1396f, 669f), 2147483647i, Struct_1(vec3<f32>(-1000f, -298f, 809f), -634f, false), Struct_1(vec3<f32>(185f, -296f, 497f), -1457f, true)))), Struct_5(-380f, vec2<i32>(i32(-2147483648), -1i), Struct_3(Struct_2(vec4<bool>(true, true, true, false), vec4<f32>(449f, -1000f, -1000f, 1002f), i32(-2147483648), Struct_1(vec3<f32>(-1000f, -1152f, 968f), 973f, false), Struct_1(vec3<f32>(613f, -161f, 201f), -942f, false)))), Struct_5(-379f, vec2<i32>(1009i, i32(-2147483648)), Struct_3(Struct_2(vec4<bool>(true, true, true, false), vec4<f32>(702f, -1445f, -321f, -293f), 53672i, Struct_1(vec3<f32>(1000f, -1184f, -1235f), -535f, true), Struct_1(vec3<f32>(337f, 186f, -331f), -451f, true)))), Struct_5(-799f, vec2<i32>(-13391i, 14341i), Struct_3(Struct_2(vec4<bool>(false, true, true, false), vec4<f32>(-414f, 2306f, -1228f, 1411f), -30899i, Struct_1(vec3<f32>(-189f, -2665f, 372f), -1000f, false), Struct_1(vec3<f32>(360f, 1000f, 207f), 1000f, false)))), Struct_5(1692f, vec2<i32>(2147483647i, -43300i), Struct_3(Struct_2(vec4<bool>(false, true, false, false), vec4<f32>(1000f, -1244f, 2094f, -798f), 1i, Struct_1(vec3<f32>(-1165f, -1141f, 795f), -742f, true), Struct_1(vec3<f32>(-966f, -410f, -2169f), -948f, false)))), Struct_5(2073f, vec2<i32>(1i, 0i), Struct_3(Struct_2(vec4<bool>(true, false, false, true), vec4<f32>(374f, -905f, -277f, -1000f), 1i, Struct_1(vec3<f32>(-2142f, 1000f, 1000f), -510f, true), Struct_1(vec3<f32>(-1224f, -1000f, 399f), -1200f, false)))), Struct_5(-1000f, vec2<i32>(37849i, 0i), Struct_3(Struct_2(vec4<bool>(true, true, false, true), vec4<f32>(1000f, 475f, -811f, 1000f), 2147483647i, Struct_1(vec3<f32>(-223f, 2142f, 1000f), 737f, false), Struct_1(vec3<f32>(-560f, 145f, 177f), -461f, true)))), Struct_5(125f, vec2<i32>(-41525i, 19760i), Struct_3(Struct_2(vec4<bool>(true, true, true, true), vec4<f32>(888f, -1000f, 989f, -2098f), -29781i, Struct_1(vec3<f32>(-927f, -997f, 683f), -780f, false), Struct_1(vec3<f32>(-474f, 1545f, -960f), 875f, false)))), Struct_5(1450f, vec2<i32>(66362i, 2147483647i), Struct_3(Struct_2(vec4<bool>(true, false, true, true), vec4<f32>(-1542f, -661f, 1000f, 1722f), -11840i, Struct_1(vec3<f32>(-1000f, 1137f, 683f), -639f, true), Struct_1(vec3<f32>(-1049f, -614f, 1000f), -1065f, true)))), Struct_5(-1269f, vec2<i32>(-49122i, -1i), Struct_3(Struct_2(vec4<bool>(true, false, false, true), vec4<f32>(-1146f, -1143f, -231f, 1041f), 9343i, Struct_1(vec3<f32>(-353f, -588f, -1241f), 2156f, true), Struct_1(vec3<f32>(1000f, -1601f, 982f), -1438f, true)))), Struct_5(-903f, vec2<i32>(1i, -6062i), Struct_3(Struct_2(vec4<bool>(false, false, true, true), vec4<f32>(-1488f, -954f, 683f, -363f), -1i, Struct_1(vec3<f32>(-1288f, -1470f, 676f), 1488f, true), Struct_1(vec3<f32>(303f, -585f, 362f), 1842f, true)))), Struct_5(-550f, vec2<i32>(-1i, 0i), Struct_3(Struct_2(vec4<bool>(false, false, true, true), vec4<f32>(768f, 1239f, 1038f, 407f), 21008i, Struct_1(vec3<f32>(754f, -915f, 1213f), 378f, false), Struct_1(vec3<f32>(-435f, 1328f, 1428f), -236f, true)))), Struct_5(1503f, vec2<i32>(-19204i, -2620i), Struct_3(Struct_2(vec4<bool>(true, true, false, true), vec4<f32>(-544f, -526f, 774f, 1000f), 2147483647i, Struct_1(vec3<f32>(-287f, 302f, -416f), 759f, true), Struct_1(vec3<f32>(-1202f, -282f, 444f), 115f, true)))), Struct_5(-775f, vec2<i32>(0i, 5846i), Struct_3(Struct_2(vec4<bool>(true, true, true, true), vec4<f32>(-1000f, 1426f, 1062f, 1095f), i32(-2147483648), Struct_1(vec3<f32>(-1515f, 2065f, 213f), -179f, true), Struct_1(vec3<f32>(1098f, -267f, -594f), 617f, true)))), Struct_5(1238f, vec2<i32>(9804i, 1i), Struct_3(Struct_2(vec4<bool>(false, true, true, false), vec4<f32>(768f, -398f, 911f, -1308f), -5066i, Struct_1(vec3<f32>(874f, -2015f, -652f), 1142f, false), Struct_1(vec3<f32>(2385f, -1000f, -147f), -1000f, false)))), Struct_5(241f, vec2<i32>(0i, -1750i), Struct_3(Struct_2(vec4<bool>(true, true, false, true), vec4<f32>(691f, 713f, 451f, -129f), -1i, Struct_1(vec3<f32>(-1922f, -337f, -111f), 2099f, true), Struct_1(vec3<f32>(-542f, -970f, 499f), -227f, true)))), Struct_5(652f, vec2<i32>(1i, 18175i), Struct_3(Struct_2(vec4<bool>(true, true, true, true), vec4<f32>(276f, 1000f, -425f, 507f), 12952i, Struct_1(vec3<f32>(455f, 296f, -1000f), 531f, true), Struct_1(vec3<f32>(-656f, -1142f, -738f), -1761f, true)))), Struct_5(-115f, vec2<i32>(-8257i, -16173i), Struct_3(Struct_2(vec4<bool>(true, false, true, true), vec4<f32>(632f, -2401f, -529f, -2182f), 0i, Struct_1(vec3<f32>(693f, -296f, -518f), -1271f, false), Struct_1(vec3<f32>(-1114f, 2442f, -153f), -194f, true)))), Struct_5(-1800f, vec2<i32>(-24746i, -92242i), Struct_3(Struct_2(vec4<bool>(true, true, true, false), vec4<f32>(-569f, -1541f, 370f, -281f), 6347i, Struct_1(vec3<f32>(1923f, -421f, 747f), 1338f, false), Struct_1(vec3<f32>(1149f, -298f, -309f), 1771f, false)))), Struct_5(-249f, vec2<i32>(2147483647i, 42649i), Struct_3(Struct_2(vec4<bool>(true, false, true, true), vec4<f32>(1025f, 674f, -725f, -690f), 1i, Struct_1(vec3<f32>(-814f, 2348f, -720f), 1770f, false), Struct_1(vec3<f32>(-2203f, -240f, 529f), 591f, true)))), Struct_5(-518f, vec2<i32>(2147483647i, 0i), Struct_3(Struct_2(vec4<bool>(false, true, true, true), vec4<f32>(-1283f, -148f, -1169f, 2044f), 1i, Struct_1(vec3<f32>(-218f, 608f, 1052f), 679f, false), Struct_1(vec3<f32>(1000f, -1200f, -1725f), -790f, false)))), Struct_5(964f, vec2<i32>(36385i, 1i), Struct_3(Struct_2(vec4<bool>(true, false, true, true), vec4<f32>(601f, -736f, 999f, 491f), -18822i, Struct_1(vec3<f32>(-246f, 506f, 726f), 2489f, true), Struct_1(vec3<f32>(127f, -1868f, 1000f), 910f, false)))), Struct_5(460f, vec2<i32>(2147483647i, -8778i), Struct_3(Struct_2(vec4<bool>(false, false, false, false), vec4<f32>(629f, -538f, -245f, -722f), -18680i, Struct_1(vec3<f32>(-126f, 1061f, -610f), -1000f, false), Struct_1(vec3<f32>(1103f, 1000f, 920f), 1331f, true)))), Struct_5(1000f, vec2<i32>(0i, -1i), Struct_3(Struct_2(vec4<bool>(false, false, false, true), vec4<f32>(580f, 1457f, 329f, -1166f), 0i, Struct_1(vec3<f32>(655f, 1000f, -1063f), 276f, false), Struct_1(vec3<f32>(2031f, 979f, -656f), -261f, false)))), Struct_5(-1000f, vec2<i32>(37322i, 0i), Struct_3(Struct_2(vec4<bool>(false, true, true, false), vec4<f32>(749f, -1219f, 1000f, 1135f), 17535i, Struct_1(vec3<f32>(-141f, -1515f, 205f), -372f, false), Struct_1(vec3<f32>(303f, 204f, -743f), -911f, false)))), Struct_5(949f, vec2<i32>(56397i, i32(-2147483648)), Struct_3(Struct_2(vec4<bool>(false, true, false, false), vec4<f32>(349f, -286f, -917f, 648f), 57135i, Struct_1(vec3<f32>(1142f, 1135f, 1413f), -546f, false), Struct_1(vec3<f32>(-396f, -288f, 729f), 2040f, false)))), Struct_5(1408f, vec2<i32>(0i, -38275i), Struct_3(Struct_2(vec4<bool>(false, true, true, false), vec4<f32>(1355f, -1648f, -1275f, -381f), 7474i, Struct_1(vec3<f32>(241f, 694f, 1497f), -956f, true), Struct_1(vec3<f32>(-1612f, -1234f, 313f), -380f, true)))), Struct_5(-491f, vec2<i32>(i32(-2147483648), i32(-2147483648)), Struct_3(Struct_2(vec4<bool>(true, true, true, true), vec4<f32>(-783f, 714f, -421f, 304f), -5055i, Struct_1(vec3<f32>(-431f, -226f, -463f), -1364f, true), Struct_1(vec3<f32>(-204f, 512f, -543f), -386f, true)))));

var<private> global3: bool = true;

var<private> global4: Struct_3;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_3 {
    global2 = array<Struct_5, 29>();
    let var_0 = Struct_4(vec4<i32>(i32(-1i) * -(~(-29080i)), global4.a.c, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-64101i, 55081i, global4.a.c) >> (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u)), ~vec3<i32>(global4.a.c, global4.a.c, global4.a.c)), global4.a.c), global4.a.c), _wgslsmith_clamp_vec2_i32(select(vec2<i32>(_wgslsmith_add_i32(2147483647i, global4.a.c), _wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(7422u, 32u)], global1[_wgslsmith_index_u32(u_input.a.x, 32u)])), vec2<i32>(i32(-1i) * -2147483647i, i32(-1i) * -2147483647i), false != select(true, global4.a.e.c, global4.a.a.x)), firstLeadingBit(~firstTrailingBit(vec2<i32>(-86961i, 1i))), min(max(-vec2<i32>(global4.a.c, global4.a.c), _wgslsmith_add_vec2_i32(vec2<i32>(global4.a.c, -2147483647i), vec2<i32>(global4.a.c, 49300i))), -reverseBits(vec2<i32>(global4.a.c, -62455i)))));
    return Struct_3(global4.a);
}

fn func_1(arg_0: bool) -> Struct_2 {
    global4 = func_2();
    global1 = array<vec4<i32>, 32>();
    var var_0 = global2[_wgslsmith_index_u32(u_input.a.x, 29u)];
    let var_1 = !(!(_wgslsmith_mod_u32(~u_input.a.x, select(u_input.a.x, u_input.a.x, true)) > 1u));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * func_2().a.d.b);
    return global4.a;
}

fn func_3(arg_0: i32, arg_1: Struct_4) -> bool {
    let var_0 = arg_1;
    var var_1 = ~((_wgslsmith_mult_u32(u_input.a.x, 4294967295u) >> (select(~u_input.a.x, u_input.a.x, true) % 32u)) | ~0u);
    global4 = Struct_3(global4.a);
    let var_2 = global4.a.d.c;
    let var_3 = vec3<bool>(!(!(4782i < arg_0)) && false, func_2().a.e.c, global4.a.d.c == false);
    return global4.a.e.c;
}

fn func_4(arg_0: i32, arg_1: bool) -> u32 {
    global1 = array<vec4<i32>, 32>();
    var var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_div_u32(u_input.a.x, ~63422u), 4294967295u, u_input.a.x, ~(~(u_input.a.x ^ 120419u))), vec4<u32>(~firstLeadingBit(4294967295u), firstTrailingBit(1u), 2487u, countOneBits(11097u)) & _wgslsmith_add_vec4_u32(~(~vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x)), ~vec4<u32>(65667u, 11930u, u_input.a.x, 4294967295u)));
    let var_1 = false;
    var var_2 = global2[_wgslsmith_index_u32(1511u, 29u)];
    var var_3 = true;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_5, 29>();
    let var_0 = u_input.a.yy;
    global4 = Struct_3(func_1(global4.a.a.x));
    var var_1 = global2[_wgslsmith_index_u32(min(4294967295u, func_4(countOneBits(11419i ^ global4.a.c), func_3(firstLeadingBit(global4.a.c), Struct_4(vec4<i32>(42038i, global4.a.c, 0i, global4.a.c), vec2<i32>(-2147483647i, -2147483647i))) & all(vec4<bool>(false, global4.a.a.x, true, global4.a.d.c)))), 29u)];
    global0 = var_1.c.a.b;
    var var_2 = var_1.b;
    var var_3 = _wgslsmith_f_op_vec4_f32(-global4.a.b);
    var var_4 = var_3.x;
    let var_5 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -424f), _wgslsmith_f_op_f32(global4.a.d.a.x * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.x * global0.x), -145f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 484f) - -224f)))), var_1.c.a.e.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(var_5.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(var_5.x))))), all(var_1.c.a.a))), _wgslsmith_f_op_vec2_f32(floor(global0.zy)), -_wgslsmith_sub_i32(_wgslsmith_add_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c.a.c, global4.a.c), var_1.b)), ~(-19882i)), ~2147483647i);
}

