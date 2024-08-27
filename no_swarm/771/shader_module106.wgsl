struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<vec3<bool>, 13> = array<vec3<bool>, 13>(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false));

var<private> global2: array<vec4<f32>, 31> = array<vec4<f32>, 31>(vec4<f32>(1480f, -1621f, 667f, 173f), vec4<f32>(1258f, 1007f, 290f, -183f), vec4<f32>(867f, 1000f, 284f, 225f), vec4<f32>(345f, -1355f, -996f, 907f), vec4<f32>(-529f, -1988f, -1444f, -370f), vec4<f32>(-1569f, 1000f, -920f, -227f), vec4<f32>(501f, -654f, 595f, 1525f), vec4<f32>(-650f, 278f, 940f, 106f), vec4<f32>(1185f, -1368f, 836f, 1086f), vec4<f32>(338f, 109f, -1699f, -2010f), vec4<f32>(1000f, 1296f, -204f, 888f), vec4<f32>(-477f, 1000f, -456f, -939f), vec4<f32>(231f, -371f, -859f, 191f), vec4<f32>(-183f, 472f, -259f, -1199f), vec4<f32>(-1620f, -1004f, 1729f, -785f), vec4<f32>(1065f, -918f, 430f, -1330f), vec4<f32>(-174f, 1465f, 910f, -414f), vec4<f32>(-757f, -1045f, -1120f, 1326f), vec4<f32>(-108f, -1886f, -1000f, -2127f), vec4<f32>(-596f, -795f, 115f, -678f), vec4<f32>(1000f, -592f, 1435f, -1703f), vec4<f32>(-105f, -1000f, -138f, 823f), vec4<f32>(-1681f, 1271f, 197f, 1000f), vec4<f32>(625f, -1000f, -942f, -519f), vec4<f32>(-247f, 147f, -474f, -444f), vec4<f32>(-1000f, 448f, 1169f, 409f), vec4<f32>(128f, 699f, 474f, 1024f), vec4<f32>(473f, 314f, -1422f, -389f), vec4<f32>(434f, 258f, -804f, 392f), vec4<f32>(487f, 398f, -1326f, 2020f), vec4<f32>(1532f, 208f, -225f, -139f));

var<private> global3: vec2<i32>;

var<private> global4: vec2<bool>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> i32 {
    let var_0 = Struct_2(false, arg_1.e, Struct_1(global0.x), arg_1.e, arg_1.c);
    global2 = array<vec4<f32>, 31>();
    let var_1 = -390f;
    global1 = array<vec3<bool>, 13>();
    var var_2 = 4154i;
    return -2147483647i;
}

fn func_1(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec2<f32>) -> u32 {
    let var_0 = select(firstTrailingBit(67534u), select(~reverseBits(0u), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.d, 0u, u_input.d), vec3<u32>(u_input.b.x, u_input.d, arg_1.x)), ~vec3<u32>(u_input.b.x, 59893u, arg_1.x)), !(global4.x | global4.x)), global4.x && !((global4.x && arg_0.a) | (false && global4.x)));
    global4 = select(!(!select(vec2<bool>(global4.x, global4.x), vec2<bool>(false, arg_0.a), select(vec2<bool>(false, false), vec2<bool>(false, arg_0.a), vec2<bool>(true, false)))), vec2<bool>(global0.x < -1100f, !any(!vec3<bool>(false, global4.x, global4.x))), vec2<bool>(true, true));
    let var_1 = vec4<i32>(-7722i, func_2(true, arg_0), (global3.x << (71160u % 32u)) >> (37435u % 32u), _wgslsmith_add_i32(u_input.c.x & abs(~u_input.c.x), 19015i));
    var var_2 = _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_1.x, -2147483647i), ~countOneBits(vec3<i32>(13524i, 14057i, u_input.c.x))), ~_wgslsmith_sub_i32(countOneBits(var_1.x), ~var_1.x)), ~var_1.zwx ^ _wgslsmith_sub_vec3_i32(vec3<i32>(0i, -25409i, 1i), var_1.wxw));
    var var_3 = Struct_2(false, arg_0.d, arg_0.b, arg_0.c, Struct_1(arg_0.b.a));
    return 47445u;
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-global0.x));
    let var_1 = ~max(vec4<i32>(~(~u_input.c.x), _wgslsmith_sub_i32(-21802i, -2147483647i), abs(arg_0), arg_0), vec4<i32>(func_2(global4.x, Struct_2(true, var_0, Struct_1(1445f), Struct_1(var_0.a), var_0)), 1i, firstLeadingBit(-69549i), func_2(false & global4.x, Struct_2(false, var_0, var_0, var_0, Struct_1(-1404f)))));
    let var_2 = Struct_2(!(!global4.x), var_0, var_0, var_0, Struct_1(_wgslsmith_f_op_f32(1570f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_0.a)))))));
    let var_3 = select(-_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(-1i, 50568i, u_input.c.x, global3.x)), var_1), var_1, global4.x | var_2.a);
    global1 = array<vec3<bool>, 13>();
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(174f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * 1000f))))), global0.x, global4.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !global4.x;
    global3 = -(-u_input.c << ((_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.b.x, 21024u), abs(vec2<u32>(97114u, 0u))) ^ _wgslsmith_mod_vec2_u32(firstLeadingBit(u_input.b.xx), firstLeadingBit(u_input.b.yy))) % vec2<u32>(32u)));
    global3 = vec2<i32>(~_wgslsmith_add_i32(abs(countOneBits(u_input.c.x)), 698i), global3.x);
    global3 = -reverseBits(u_input.c) << (vec2<u32>(u_input.b.x, ~4294967295u) % vec2<u32>(32u));
    var var_1 = Struct_2(!(func_1(Struct_2(true, Struct_1(global0.x), Struct_1(global0.x), Struct_1(global0.x), Struct_1(global0.x)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d, u_input.b.x), u_input.b.xx), _wgslsmith_f_op_vec2_f32(vec2<f32>(-3381f, -175f) - vec2<f32>(1159f, -633f))) < 24638u), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.x))) + _wgslsmith_f_op_f32(f32(-1f) * -1203f))), Struct_1(977f), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1151f)))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -436f)));
    var var_2 = var_1.b;
    global3 = u_input.c;
    var_2 = Struct_1(713f);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d.a, _wgslsmith_f_op_f32(var_2.a + _wgslsmith_f_op_f32(func_3(-1i))), vec4<i32>(func_2(all(global1[_wgslsmith_index_u32(u_input.a ^ u_input.b.x, 13u)]), Struct_2(var_1.a, var_1.c, Struct_1(var_1.d.a), var_1.d, var_1.b)), reverseBits(2147483647i), max(-max(global3.x, global3.x), -2147483647i), 1i), u_input.b, -(~min(vec3<i32>(u_input.c.x, u_input.c.x, 1352i), vec3<i32>(u_input.c.x, 39235i, u_input.c.x))) & -(~(~vec3<i32>(global3.x, -23090i, u_input.c.x))));
}

