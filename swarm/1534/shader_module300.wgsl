struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: vec2<f32>,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 12>;

var<private> global1: array<f32, 23> = array<f32, 23>(1384f, 455f, 908f, 217f, -655f, -1045f, -984f, 1726f, 662f, -545f, -453f, -1870f, -835f, 627f, -603f, 359f, -1413f, 251f, -318f, 1000f, -803f, 1848f, -766f);

var<private> global2: i32;

var<private> global3: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(vec2<i32>(1i, -24101i), Struct_1(true, vec3<u32>(4294967295u, 0u, 0u), vec4<f32>(483f, 641f, 1000f, 1019f), 0u), vec2<f32>(-180f, 1499f)), Struct_3(vec2<i32>(-8984i, 2147483647i), Struct_1(false, vec3<u32>(78621u, 4294967295u, 4294967295u), vec4<f32>(-1465f, -815f, -1301f, -679f), 0u), vec2<f32>(-381f, -1651f)), Struct_3(vec2<i32>(1i, 38093i), Struct_1(false, vec3<u32>(4294967295u, 35682u, 45086u), vec4<f32>(-231f, -1190f, -1663f, -1151f), 102891u), vec2<f32>(650f, 906f)), Struct_3(vec2<i32>(2147483647i, 5241i), Struct_1(false, vec3<u32>(38744u, 0u, 4294967295u), vec4<f32>(-318f, -953f, -1351f, -1803f), 16989u), vec2<f32>(878f, 261f)), Struct_3(vec2<i32>(i32(-2147483648), 2147483647i), Struct_1(false, vec3<u32>(36514u, 1906u, 4294967295u), vec4<f32>(-371f, 278f, -1477f, 539f), 0u), vec2<f32>(825f, -949f)), Struct_3(vec2<i32>(70301i, -36632i), Struct_1(false, vec3<u32>(1u, 21353u, 3299u), vec4<f32>(-693f, 2980f, -1403f, -1840f), 34700u), vec2<f32>(-529f, -2345f)), Struct_3(vec2<i32>(2147483647i, 0i), Struct_1(false, vec3<u32>(0u, 1256u, 4294967295u), vec4<f32>(1022f, 557f, -494f, 917f), 26367u), vec2<f32>(640f, -160f)), Struct_3(vec2<i32>(598i, 10056i), Struct_1(true, vec3<u32>(4294967295u, 62001u, 33500u), vec4<f32>(-2095f, -1517f, -202f, 1521f), 38714u), vec2<f32>(-1017f, 1261f)), Struct_3(vec2<i32>(-1i, -21687i), Struct_1(false, vec3<u32>(21580u, 0u, 55946u), vec4<f32>(-1000f, 712f, 1151f, 216f), 59215u), vec2<f32>(-1277f, -1000f)), Struct_3(vec2<i32>(1i, 80790i), Struct_1(false, vec3<u32>(4294967295u, 1u, 52504u), vec4<f32>(151f, 231f, -283f, -1000f), 44994u), vec2<f32>(369f, 276f)), Struct_3(vec2<i32>(-40783i, i32(-2147483648)), Struct_1(false, vec3<u32>(20845u, 19373u, 0u), vec4<f32>(-440f, 1511f, -759f, 1732f), 0u), vec2<f32>(1570f, 1039f)), Struct_3(vec2<i32>(1i, i32(-2147483648)), Struct_1(false, vec3<u32>(0u, 9259u, 0u), vec4<f32>(173f, 1378f, -1375f, -965f), 4294967295u), vec2<f32>(-788f, -172f)), Struct_3(vec2<i32>(-48879i, 29165i), Struct_1(false, vec3<u32>(1u, 50877u, 16029u), vec4<f32>(-230f, 1143f, 932f, -418f), 36938u), vec2<f32>(-1385f, 997f)), Struct_3(vec2<i32>(-33855i, 0i), Struct_1(false, vec3<u32>(65066u, 24411u, 4294967295u), vec4<f32>(563f, 2836f, -1372f, -568f), 1u), vec2<f32>(2345f, -815f)), Struct_3(vec2<i32>(1i, 1i), Struct_1(false, vec3<u32>(2385u, 1u, 4294967295u), vec4<f32>(-991f, -340f, 332f, -1299f), 7655u), vec2<f32>(-459f, -192f)), Struct_3(vec2<i32>(0i, -13743i), Struct_1(false, vec3<u32>(1u, 26435u, 55807u), vec4<f32>(949f, -420f, 1106f, -1263f), 33296u), vec2<f32>(1855f, -1505f)), Struct_3(vec2<i32>(2147483647i, 0i), Struct_1(false, vec3<u32>(1u, 4294967295u, 88798u), vec4<f32>(-553f, 271f, -135f, -419f), 20544u), vec2<f32>(1595f, 923f)), Struct_3(vec2<i32>(-1i, -31564i), Struct_1(false, vec3<u32>(0u, 4294967295u, 53771u), vec4<f32>(1202f, 1000f, -132f, 642f), 15092u), vec2<f32>(1000f, -1000f)), Struct_3(vec2<i32>(0i, 37223i), Struct_1(true, vec3<u32>(27509u, 0u, 43318u), vec4<f32>(-2174f, 1773f, -162f, -1017f), 1u), vec2<f32>(733f, -188f)));

var<private> global4: array<vec3<bool>, 8>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: vec2<f32>) -> f32 {
    let var_0 = any(vec4<bool>(true, true, true, true)) || true;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1000f)), 1289f);
}

fn func_3(arg_0: f32, arg_1: f32) -> f32 {
    let var_0 = Struct_3(select(max(reverseBits(vec2<i32>(u_input.c, u_input.c) ^ vec2<i32>(u_input.e, u_input.c)), _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, 33378i), -vec2<i32>(u_input.c, u_input.c))), vec2<i32>(~0i, ~u_input.e) | ~_wgslsmith_add_vec2_i32(vec2<i32>(5794i, u_input.c), vec2<i32>(u_input.c, 26512i)), !((-664f >= global1[_wgslsmith_index_u32(69u, 23u)]) || true)), Struct_1(true, vec3<u32>(~0u, _wgslsmith_div_u32(u_input.d, min(u_input.d, 3858u)), 1u), vec4<f32>(1702f, 1181f, _wgslsmith_f_op_f32(-1799f * _wgslsmith_f_op_f32(f32(-1f) * -543f)), -306f), ~(~u_input.d)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(406f)), _wgslsmith_f_op_f32(1000f * 186f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_0))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(trunc(-696f)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(99266u, 85553u), vec2<u32>(u_input.b, 9735u)), 23u)]))), true)));
    var var_1 = Struct_3(-(vec2<i32>(1i, 1i) << (vec2<u32>(1u, var_0.b.d) % vec2<u32>(32u))), var_0.b, var_0.b.c.xy);
    var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 0u, var_1.b.b.x), vec3<u32>(var_1.b.b.x, var_0.b.d, _wgslsmith_dot_vec3_u32(var_1.b.b, var_0.b.b))), 19u)];
    var var_3 = _wgslsmith_sub_vec2_u32(var_1.b.b.yz, ~_wgslsmith_clamp_vec2_u32(~(vec2<u32>(0u, var_0.b.d) << (var_0.b.b.zz % vec2<u32>(32u))), vec2<u32>(var_2.b.b.x, firstTrailingBit(var_2.b.d)), countOneBits(vec2<u32>(var_0.b.d, 4294967295u))));
    let var_4 = var_1.b;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.c.x * -1199f)));
}

fn func_1() -> f32 {
    var var_0 = Struct_3(vec2<i32>(_wgslsmith_sub_i32(i32(-1i) * -1i, -51041i) | u_input.c, ~_wgslsmith_div_i32(min(48763i, 1759i), 1i)), Struct_1(false, vec3<u32>(_wgslsmith_clamp_u32(21241u, 1887u, ~u_input.a), _wgslsmith_div_u32(firstLeadingBit(u_input.d), ~u_input.b), ~1u), vec4<f32>(-1229f, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(752f, 998f) + vec2<f32>(global1[_wgslsmith_index_u32(u_input.d, 23u)], global1[_wgslsmith_index_u32(30661u, 23u)])))), _wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(1u, 23u)], -355f)), _wgslsmith_f_op_f32(175f - -1000f)), min(27878u, ~(~u_input.d))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1[_wgslsmith_index_u32(max(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, u_input.b, u_input.a), vec4<u32>(u_input.a, 972u, 4294967295u, 4294967295u)), u_input.a << (27415u % 32u)), 23u)], global1[_wgslsmith_index_u32(0u, 23u)]))));
    let var_1 = Struct_1(var_0.b.a, select(vec3<u32>(select(40302u, u_input.a, var_0.b.a), ~var_0.b.d, 4294967295u), ~(~var_0.b.b | (var_0.b.b >> (vec3<u32>(u_input.d, 34859u, u_input.a) % vec3<u32>(32u)))), any(vec3<bool>(any(vec2<bool>(var_0.b.a, false)), all(vec4<bool>(var_0.b.a, var_0.b.a, false, false)), true))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, var_0.b.c.x, 787f, -934f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1119f, var_0.c.x, global1[_wgslsmith_index_u32(125116u, 23u)], -844f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(478f, global1[_wgslsmith_index_u32(1u, 23u)], global1[_wgslsmith_index_u32(var_0.b.d, 23u)], global1[_wgslsmith_index_u32(63131u, 23u)]))))), ~_wgslsmith_div_u32(~firstLeadingBit(0u), 42040u));
    global4 = array<vec3<bool>, 8>();
    var var_2 = var_0.b.c;
    let var_3 = vec2<bool>(all(global4[_wgslsmith_index_u32(firstTrailingBit(reverseBits(~var_0.b.b.x)), 8u)]), (var_0.a.x | _wgslsmith_dot_vec2_i32(min(vec2<i32>(-16001i, 1i), var_0.a), max(var_0.a, vec2<i32>(var_0.a.x, -2147483647i)))) == u_input.c);
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(!(!all(select(vec3<bool>(false, false, true), global4[_wgslsmith_index_u32(4294967295u, 8u)], true))), any(vec3<bool>(true, true, true)) || true, _wgslsmith_f_op_f32(func_1()) != -257f);
    var var_1 = Struct_2(!(!(!(!vec2<bool>(var_0.x, var_0.x)))), var_0.zz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.d, 23u)], global1[_wgslsmith_index_u32(u_input.b, 23u)]), vec2<f32>(-223f, global1[_wgslsmith_index_u32(u_input.a, 23u)]))) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1[_wgslsmith_index_u32(u_input.b, 23u)], global1[_wgslsmith_index_u32(5518u, 23u)]), _wgslsmith_div_vec2_f32(vec2<f32>(-1082f, 434f), vec2<f32>(110f, global1[_wgslsmith_index_u32(u_input.d, 23u)])))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-597f, -1959f, global1[_wgslsmith_index_u32(u_input.b, 23u)], global1[_wgslsmith_index_u32(0u, 23u)]), vec4<f32>(-1540f, global1[_wgslsmith_index_u32(u_input.d, 23u)], -352f, -987f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(1u, 23u)], global1[_wgslsmith_index_u32(u_input.b, 23u)], global1[_wgslsmith_index_u32(u_input.b, 23u)], 1036f), vec4<f32>(-1034f, -1159f, 1709f, 1000f), var_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1780f, global1[_wgslsmith_index_u32(1u, 23u)], 366f, -1000f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(u_input.b, 23u)], global1[_wgslsmith_index_u32(48988u, 23u)], -327f) * vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 23u)], -668f, -2629f, global1[_wgslsmith_index_u32(u_input.b, 23u)]))))), Struct_1(!var_0.x, vec3<u32>(~firstLeadingBit(13661u), _wgslsmith_dot_vec3_u32(~vec3<u32>(44074u, 20880u, 97130u), ~vec3<u32>(0u, u_input.d, u_input.b)), u_input.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(u_input.d, 23u)])), global1[_wgslsmith_index_u32(~u_input.a, 23u)], -215f, -1010f)), 89657u));
    var var_2 = Struct_3(~_wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(15047i, 0i)) ^ vec2<i32>(u_input.c, -2147483647i), ~abs(vec2<i32>(u_input.c, u_input.c))), Struct_1(select(!var_0.x, all(var_0.xz), !all(vec3<bool>(false, false, var_1.a.x))), max(countOneBits(max(var_1.e.b, var_1.e.b)), ~(~vec3<u32>(4294967295u, var_1.e.b.x, u_input.d))), _wgslsmith_f_op_vec4_f32(-var_1.d), abs(~abs(2756u))), _wgslsmith_f_op_vec2_f32(-var_1.e.c.wy));
    let var_3 = all(!(!(!vec4<bool>(true, var_0.x, var_2.b.a, var_0.x))));
    global0 = array<vec3<i32>, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(reverseBits(~select(var_1.e.b, var_2.b.b, true)), ~(~(~vec3<u32>(20009u, 0u, 11080u)))), u_input.e, _wgslsmith_f_op_vec4_f32(min(var_1.e.c, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.d) - _wgslsmith_f_op_vec4_f32(-var_1.e.c)), vec4<f32>(257f, _wgslsmith_f_op_f32(sign(-592f)), _wgslsmith_div_f32(var_2.c.x, -1505f), -2125f))))));
}

