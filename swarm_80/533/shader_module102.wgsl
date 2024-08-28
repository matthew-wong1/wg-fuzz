struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1000f;

var<private> global1: array<vec3<u32>, 25> = array<vec3<u32>, 25>(vec3<u32>(4294967295u, 4294967295u, 85069u), vec3<u32>(122134u, 0u, 4294967295u), vec3<u32>(4294967295u, 55321u, 82739u), vec3<u32>(1u, 43086u, 2274u), vec3<u32>(0u, 17901u, 61019u), vec3<u32>(24120u, 1018u, 4294967295u), vec3<u32>(0u, 9214u, 73188u), vec3<u32>(0u, 105565u, 10439u), vec3<u32>(11106u, 89806u, 0u), vec3<u32>(0u, 43897u, 4294967295u), vec3<u32>(4294967295u, 0u, 29984u), vec3<u32>(14191u, 14952u, 4294967295u), vec3<u32>(98061u, 27865u, 50089u), vec3<u32>(1u, 15593u, 0u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(0u, 130212u, 14748u), vec3<u32>(4294967295u, 0u, 13442u), vec3<u32>(68477u, 33138u, 39794u), vec3<u32>(4294967295u, 22402u, 0u), vec3<u32>(4294967295u, 36002u, 4294967295u), vec3<u32>(1u, 13872u, 4294967295u), vec3<u32>(32056u, 18140u, 13754u), vec3<u32>(0u, 1u, 16274u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(4294967295u, 77477u, 8802u));

var<private> global2: array<vec3<f32>, 22> = array<vec3<f32>, 22>(vec3<f32>(292f, -1052f, 445f), vec3<f32>(662f, 481f, -922f), vec3<f32>(878f, 723f, 368f), vec3<f32>(1991f, 163f, 991f), vec3<f32>(1649f, 375f, 961f), vec3<f32>(-148f, -291f, 111f), vec3<f32>(489f, -1000f, -895f), vec3<f32>(1000f, -2218f, 839f), vec3<f32>(-1000f, -381f, 454f), vec3<f32>(536f, 1378f, 1104f), vec3<f32>(-2384f, 1001f, 1000f), vec3<f32>(-573f, -175f, -363f), vec3<f32>(-673f, 1245f, 686f), vec3<f32>(1021f, 1472f, 1341f), vec3<f32>(1347f, -725f, -635f), vec3<f32>(1054f, 674f, -1314f), vec3<f32>(-1286f, -578f, 828f), vec3<f32>(-154f, 1043f, 1492f), vec3<f32>(918f, 761f, 611f), vec3<f32>(-393f, 1042f, -598f), vec3<f32>(1120f, -1214f, -156f), vec3<f32>(-1000f, 1939f, -908f));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec4<f32>) -> i32 {
    var var_0 = ~_wgslsmith_div_vec2_i32(vec2<i32>(-4523i, u_input.a), max(vec2<i32>(u_input.a, 35404i) | vec2<i32>(11866i, u_input.a), ~vec2<i32>(u_input.a, u_input.a)) & ((vec2<i32>(13472i, u_input.a) << (vec2<u32>(48630u, 4294967295u) % vec2<u32>(32u))) | vec2<i32>(-42341i, 2147483647i)));
    global1 = array<vec3<u32>, 25>();
    let var_1 = 24198u;
    let var_2 = vec3<i32>(~1i, u_input.a, u_input.a);
    let var_3 = vec3<u32>(reverseBits(var_1), ~10013u, _wgslsmith_add_u32(~(_wgslsmith_mod_u32(0u, var_1) >> (~18372u % 32u)), _wgslsmith_sub_u32(~_wgslsmith_sub_u32(var_1, var_1), 1u)));
    return ~(-u_input.a);
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: vec2<f32>) -> i32 {
    let var_0 = abs(firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(5781i, abs(0i), -2147483647i, ~0i), _wgslsmith_div_vec4_i32(min(vec4<i32>(u_input.a, u_input.a, u_input.a, -26077i), vec4<i32>(u_input.a, u_input.a, u_input.a, -30591i)), vec4<i32>(u_input.a, u_input.a, 12020i, 7263i)))));
    global2 = array<vec3<f32>, 22>();
    let var_1 = max(firstTrailingBit(max(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 1u, 54643u, 4294967295u), abs(vec4<u32>(24913u, 4294967295u, 5667u, 4294967295u))), 45793u)), firstTrailingBit(select(firstTrailingBit(1u), abs(firstTrailingBit(30080u)), true)));
    global0 = -990f;
    global0 = -1013f;
    return ~(-1i);
}

fn func_2() -> bool {
    var var_0 = Struct_2(vec2<bool>(true, all(vec4<bool>(false, any(vec3<bool>(false, false, true)), true, any(vec4<bool>(false, true, false, true))))), Struct_1(vec4<i32>(22261i, select(u_input.a, u_input.a, false) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, -25375i), vec3<i32>(-2147483647i, -1i, 0i)), func_3(vec2<f32>(-1000f, 124f), false, vec2<f32>(-1049f, -989f)) & u_input.a, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(59936i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)), reverseBits(vec3<i32>(u_input.a, u_input.a, 62861i)))), vec2<bool>(true, true)), Struct_1(~_wgslsmith_mod_vec4_i32(min(vec4<i32>(u_input.a, -1i, -2147483647i, -37929i), vec4<i32>(1036i, u_input.a, u_input.a, u_input.a)), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -32845i, u_input.a, -10302i), vec4<i32>(10741i, -3264i, 2147483647i, 2147483647i), vec4<i32>(u_input.a, 21972i, u_input.a, u_input.a))), vec2<bool>(true, true)));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-109f, _wgslsmith_f_op_f32(sign(-182f)))))) - 371f);
    let var_1 = u_input.a;
    var var_2 = ~1u;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -284f))) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))) + _wgslsmith_f_op_f32(ceil(152f)));
    return all(vec4<bool>(false, any(!(!vec3<bool>(var_0.b.b.x, var_0.c.b.x, false))), false, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(_wgslsmith_mod_vec4_i32(-vec4<i32>(2147483647i, 2147483647i, u_input.a, u_input.a) | countOneBits(min(vec4<i32>(u_input.a, 35381i, -869i, u_input.a), vec4<i32>(-61559i, 2147483647i, u_input.a, u_input.a))), vec4<i32>(u_input.a, u_input.a, 1i, 1i)), vec4<i32>(37558i, u_input.a, select(-func_1(vec4<f32>(1214f, -529f, -746f, 1987f)), 43325i, func_2()), -u_input.a << (11253u % 32u)), !(!(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true))));
    var var_1 = select(vec4<bool>(true, any(vec3<bool>(true, true, false)), false, true || all(vec2<bool>(true, true))), !vec4<bool>(!(-2147483647i <= var_0.x), false || select(false, true, true), true, all(vec3<bool>(false, true, true)) & all(vec2<bool>(false, true))), vec4<bool>(true, false, any(vec4<bool>(true, true, true, true)), all(vec4<bool>(any(vec4<bool>(true, true, false, true)), true, u_input.a > var_0.x, false))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(0u, 21875u, ~4299u), 1u));
}

