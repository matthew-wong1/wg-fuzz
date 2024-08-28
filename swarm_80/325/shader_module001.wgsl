struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 25> = array<Struct_4, 25>(Struct_4(-186f, 22274i, Struct_1(vec2<u32>(20751u, 77676u), -988f, -485f, 44038u), Struct_1(vec2<u32>(25572u, 61875u), 1000f, 340f, 4294967295u), 2147483647i), Struct_4(303f, -1i, Struct_1(vec2<u32>(0u, 1u), 1000f, 693f, 0u), Struct_1(vec2<u32>(0u, 4294967295u), 763f, -168f, 95063u), -1i), Struct_4(957f, -1i, Struct_1(vec2<u32>(1u, 32273u), -1322f, 135f, 17298u), Struct_1(vec2<u32>(56080u, 4294967295u), 818f, 133f, 4790u), 38571i), Struct_4(589f, -19420i, Struct_1(vec2<u32>(54388u, 4294967295u), -1393f, -1130f, 0u), Struct_1(vec2<u32>(33706u, 4294967295u), -1366f, -1534f, 85050u), 0i), Struct_4(1433f, i32(-2147483648), Struct_1(vec2<u32>(4294967295u, 1u), -697f, 1374f, 108440u), Struct_1(vec2<u32>(0u, 4294967295u), -563f, 647f, 0u), -43855i), Struct_4(-523f, 0i, Struct_1(vec2<u32>(4294967295u, 1u), 1856f, 332f, 1u), Struct_1(vec2<u32>(4294967295u, 55069u), 321f, 795f, 15806u), 1i), Struct_4(-914f, 1i, Struct_1(vec2<u32>(25273u, 0u), -1000f, 398f, 49531u), Struct_1(vec2<u32>(8576u, 4294967295u), 1012f, 1448f, 41428u), 1i), Struct_4(218f, -257i, Struct_1(vec2<u32>(8699u, 4294967295u), -2185f, 707f, 13225u), Struct_1(vec2<u32>(1219u, 0u), 536f, 478f, 24782u), -23370i), Struct_4(-1602f, 49920i, Struct_1(vec2<u32>(64428u, 4294967295u), 844f, 685f, 0u), Struct_1(vec2<u32>(4094u, 0u), -389f, 978f, 16911u), -4402i), Struct_4(-1162f, 2147483647i, Struct_1(vec2<u32>(45460u, 1u), -444f, -1265f, 95139u), Struct_1(vec2<u32>(30364u, 183u), -185f, -558f, 7380u), 20059i), Struct_4(606f, -1200i, Struct_1(vec2<u32>(4294967295u, 1u), 899f, 1206f, 67531u), Struct_1(vec2<u32>(23822u, 74027u), 1685f, 555f, 6205u), 5278i), Struct_4(239f, 51799i, Struct_1(vec2<u32>(37394u, 9196u), 881f, -1134f, 4294967295u), Struct_1(vec2<u32>(79036u, 87722u), 704f, -628f, 1u), 1212i), Struct_4(-199f, 0i, Struct_1(vec2<u32>(119411u, 11344u), 511f, 531f, 29701u), Struct_1(vec2<u32>(1u, 214u), -266f, 543f, 1u), 1i), Struct_4(202f, 0i, Struct_1(vec2<u32>(27221u, 19124u), 708f, -286f, 42553u), Struct_1(vec2<u32>(24697u, 1u), 840f, 916f, 0u), -1i), Struct_4(-363f, -15671i, Struct_1(vec2<u32>(20638u, 0u), -2777f, -1000f, 1u), Struct_1(vec2<u32>(4766u, 1u), 1115f, 400f, 0u), 2147483647i), Struct_4(-1000f, 21135i, Struct_1(vec2<u32>(23619u, 4294967295u), 1984f, -752f, 0u), Struct_1(vec2<u32>(1u, 0u), -1128f, 1399f, 8056u), -38924i), Struct_4(480f, -31472i, Struct_1(vec2<u32>(5241u, 71728u), -243f, 624f, 4294967295u), Struct_1(vec2<u32>(4294967295u, 1u), 403f, -1085f, 79189u), 2147483647i), Struct_4(-1082f, i32(-2147483648), Struct_1(vec2<u32>(1u, 0u), 2521f, 1271f, 4294967295u), Struct_1(vec2<u32>(1u, 4294967295u), 727f, 1720f, 28878u), -53136i), Struct_4(-249f, -81981i, Struct_1(vec2<u32>(66409u, 0u), -759f, -604f, 0u), Struct_1(vec2<u32>(24250u, 19524u), -707f, 155f, 61492u), 1i), Struct_4(-752f, i32(-2147483648), Struct_1(vec2<u32>(4294967295u, 31461u), -1000f, -1006f, 4294967295u), Struct_1(vec2<u32>(19826u, 33496u), -1311f, 1271f, 0u), 0i), Struct_4(-1000f, i32(-2147483648), Struct_1(vec2<u32>(0u, 93508u), 975f, -1324f, 67706u), Struct_1(vec2<u32>(4294967295u, 0u), -943f, -2268f, 4294967295u), 12136i), Struct_4(-724f, -38936i, Struct_1(vec2<u32>(13192u, 32931u), -1005f, 454f, 31052u), Struct_1(vec2<u32>(1u, 535u), 252f, -1122f, 0u), -1i), Struct_4(-1176f, -34628i, Struct_1(vec2<u32>(536u, 4294967295u), -391f, 633f, 44622u), Struct_1(vec2<u32>(5512u, 4294967295u), -212f, 317f, 335u), 8608i), Struct_4(-117f, 2147483647i, Struct_1(vec2<u32>(36474u, 32023u), -330f, -413f, 4294967295u), Struct_1(vec2<u32>(0u, 4294967295u), -857f, -1000f, 0u), 1i), Struct_4(-1624f, 0i, Struct_1(vec2<u32>(45876u, 0u), 1064f, 1209f, 1u), Struct_1(vec2<u32>(4294967295u, 4075u), 786f, -1000f, 4294967295u), 9215i));

var<private> global1: bool;

var<private> global2: Struct_2;

var<private> global3: bool = false;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> vec2<u32> {
    global3 = all(vec2<bool>(1374f > _wgslsmith_f_op_f32(min(arg_1.b, 821f)), global2.a.x)) | arg_0.a.x;
    global0 = array<Struct_4, 25>();
    let var_0 = -(~16222i);
    var var_1 = ~vec2<u32>(19220u, _wgslsmith_div_u32(~countOneBits(22099u), 8173u));
    global2 = arg_0;
    return ~(~(~select(_wgslsmith_div_vec2_u32(vec2<u32>(arg_0.b.a.x, 0u), arg_1.a), u_input.a, true)));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: bool) -> bool {
    global0 = array<Struct_4, 25>();
    let var_0 = vec4<bool>(countOneBits(-65150i) <= reverseBits(-u_input.c.x), arg_2, u_input.c.x <= 65728i, arg_2);
    var var_1 = arg_1;
    var var_2 = Struct_1(abs(abs(func_3(Struct_2(vec2<bool>(false, true), arg_1, 0i), global2.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-894f))) - _wgslsmith_f_op_f32(var_1.b * _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.b.c - var_1.c), 320f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2.b.b)) + -953f)) - 611f), ~(~select(~56674u, abs(4294967295u), global2.a.x)));
    let var_3 = vec3<bool>(u_input.a.x == ~global2.b.a.x, !(!(!any(var_0.xz))), 48609u <= firstTrailingBit(u_input.b.x));
    return true;
}

fn func_1(arg_0: vec2<f32>, arg_1: i32, arg_2: vec2<bool>) -> Struct_4 {
    global2 = Struct_2(select(global2.a, global2.a, !(!func_2(arg_2, global2.b, false))), global2.b, -1i);
    let var_0 = ~_wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec3_u32(firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(13642u, global2.b.d, 1u), vec3<u32>(1u, u_input.a.x, u_input.b.x))), ~vec3<u32>(55894u, 57415u, global2.b.a.x)));
    global0 = array<Struct_4, 25>();
    let var_1 = !(!select(select(vec4<bool>(global2.a.x, global2.a.x, false, false), vec4<bool>(true, arg_2.x, true, false), !arg_2.x), select(select(vec4<bool>(false, global2.a.x, false, global2.a.x), vec4<bool>(true, false, false, global2.a.x), vec4<bool>(arg_2.x, false, false, false)), select(vec4<bool>(global2.a.x, false, arg_2.x, true), vec4<bool>(global2.a.x, global2.a.x, arg_2.x, false), global2.a.x), !vec4<bool>(arg_2.x, false, arg_2.x, false)), !vec4<bool>(global2.a.x, true, false, true)));
    let var_2 = global0[_wgslsmith_index_u32(global2.b.a.x, 25u)];
    return Struct_4(_wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1017f, 835f)))), all(!(!vec2<bool>(true, var_1.x))))), global2.c, global2.b, Struct_1(vec2<u32>(~(0u | global2.b.a.x), ~var_2.c.a.x >> (~u_input.a.x % 32u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.d.c), _wgslsmith_f_op_f32(max(-248f, -1000f))))), _wgslsmith_f_op_f32(global2.b.c * var_2.c.c), reverseBits(~1u)), ~(-(~(~var_2.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !all(vec3<bool>(all(vec4<bool>(false, false, false, true)), any(vec3<bool>(global2.a.x, global2.a.x, global2.a.x)) | true, !(!global2.a.x)));
    let var_1 = !global2.a.x;
    let var_2 = _wgslsmith_f_op_f32(ceil(-109f));
    var var_3 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, var_2)))), -u_input.c.x, vec2<bool>(all(select(!global2.a, !vec2<bool>(var_1, false), global2.a)), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, _wgslsmith_f_op_f32(var_3.d.c + -381f), var_3.c.c, _wgslsmith_f_op_f32(-var_3.a)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-368f, var_2, 1180f, global2.b.c)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, global2.b.c, -513f, var_3.d.b)), vec4<f32>(-578f, -1074f, 457f, 760f)))), select(min(~vec4<u32>(6055u, 77978u, var_3.c.d, 34820u) >> (~vec4<u32>(0u, 4294967295u, 57918u, 0u) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(95276u, global2.b.a.x, 1u), vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x)), 1u ^ global2.b.a.x, _wgslsmith_mod_u32(11582u, global2.b.d), u_input.a.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(~u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a, u_input.a), u_input.a.x, func_3(Struct_2(global2.a, var_3.d, var_3.e), Struct_1(var_3.d.a, -1747f, var_2, global2.b.a.x)).x), _wgslsmith_mult_vec4_u32(~vec4<u32>(0u, u_input.a.x, var_3.d.a.x, 12299u), vec4<u32>(var_3.d.a.x, 44090u, u_input.a.x, 40805u)), max(countOneBits(vec4<u32>(global2.b.d, 74712u, 1u, 60012u)), firstTrailingBit(vec4<u32>(global2.b.d, u_input.a.x, var_3.d.d, 4294967295u)))), select(vec4<bool>(65198u > var_3.d.a.x, all(global2.a), true, !var_1), !select(vec4<bool>(false, global2.a.x, var_1, true), vec4<bool>(global2.a.x, true, true, true), false), any(global2.a))), -1i, _wgslsmith_add_vec3_u32(vec3<u32>(1u, 0u, global2.b.a.x & (1u | u_input.a.x)), vec3<u32>(~34051u, _wgslsmith_mod_u32(reverseBits(2104u), u_input.a.x), 4294967295u)), _wgslsmith_sub_vec3_u32(firstLeadingBit(~(~vec3<u32>(var_3.c.a.x, 63634u, 0u))), ~(~vec3<u32>(u_input.b.x, global2.b.d, var_3.d.d)) | vec3<u32>(1u, firstLeadingBit(var_3.d.d), var_3.c.a.x)));
}

