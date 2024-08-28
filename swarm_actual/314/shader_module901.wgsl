struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: f32,
    d: i32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: u32,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 6070u;

var<private> global1: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec2<u32>(27735u, 119692u), 0u, 1980f, 0u, vec3<i32>(0i, 2147483647i, 1i)), Struct_1(vec2<u32>(4294967295u, 4294967295u), 4294967295u, 1360f, 30865u, vec3<i32>(-64820i, 34549i, -36715i)), Struct_1(vec2<u32>(55570u, 25548u), 1u, -1189f, 1u, vec3<i32>(1i, 21890i, 30375i)), Struct_1(vec2<u32>(73655u, 26906u), 75476u, 280f, 0u, vec3<i32>(59256i, 1i, 10775i)), Struct_1(vec2<u32>(0u, 0u), 1u, 462f, 1u, vec3<i32>(-1i, 38522i, -1i)), Struct_1(vec2<u32>(1u, 0u), 4294967295u, 159f, 0u, vec3<i32>(1i, 2147483647i, 0i)), Struct_1(vec2<u32>(36555u, 87867u), 9718u, -1000f, 1u, vec3<i32>(-10950i, 51441i, 2147483647i)), Struct_1(vec2<u32>(531u, 1u), 1u, -1506f, 5839u, vec3<i32>(-1i, 2147483647i, i32(-2147483648))), Struct_1(vec2<u32>(4294967295u, 8483u), 82995u, 2446f, 4294967295u, vec3<i32>(-9997i, 30427i, 1i)), Struct_1(vec2<u32>(4294967295u, 5127u), 43343u, -335f, 45876u, vec3<i32>(19974i, -36197i, i32(-2147483648))), Struct_1(vec2<u32>(23167u, 1u), 4294967295u, 455f, 1u, vec3<i32>(1i, -36939i, -47360i)), Struct_1(vec2<u32>(6404u, 4294967295u), 1u, 1000f, 0u, vec3<i32>(24679i, 24836i, i32(-2147483648))), Struct_1(vec2<u32>(32777u, 17436u), 4294967295u, 650f, 77431u, vec3<i32>(0i, 2695i, i32(-2147483648))), Struct_1(vec2<u32>(1u, 1u), 0u, 180f, 86503u, vec3<i32>(42464i, 1i, i32(-2147483648))), Struct_1(vec2<u32>(26715u, 1u), 0u, -683f, 4294967295u, vec3<i32>(-32272i, 1i, -1i)));

var<private> global2: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(Struct_1(vec2<u32>(61526u, 0u), 1u, 680f, 77838u, vec3<i32>(2147483647i, 2147483647i, 35624i)), 311f), Struct_2(Struct_1(vec2<u32>(1u, 9079u), 4294967295u, 123f, 1u, vec3<i32>(-22305i, 70231i, -64345i)), -669f), Struct_2(Struct_1(vec2<u32>(26844u, 30082u), 4294967295u, 364f, 0u, vec3<i32>(0i, i32(-2147483648), -10864i)), 168f), Struct_2(Struct_1(vec2<u32>(57841u, 1u), 104134u, -1000f, 70059u, vec3<i32>(30378i, 1i, 0i)), -371f), Struct_2(Struct_1(vec2<u32>(30062u, 4294967295u), 48840u, 794f, 27364u, vec3<i32>(-31921i, 57290i, i32(-2147483648))), -770f), Struct_2(Struct_1(vec2<u32>(0u, 24787u), 1u, -1426f, 19343u, vec3<i32>(1i, 29279i, i32(-2147483648))), 1267f), Struct_2(Struct_1(vec2<u32>(55171u, 41324u), 26308u, 411f, 7926u, vec3<i32>(-41211i, -1i, 2147483647i)), 2034f), Struct_2(Struct_1(vec2<u32>(27307u, 16126u), 0u, -743f, 1u, vec3<i32>(-59640i, -1i, 0i)), -232f), Struct_2(Struct_1(vec2<u32>(16167u, 1944u), 5594u, -731f, 15422u, vec3<i32>(28189i, -2312i, -1i)), -652f), Struct_2(Struct_1(vec2<u32>(60525u, 77531u), 12283u, -1660f, 4294967295u, vec3<i32>(i32(-2147483648), 1i, 8733i)), -1444f), Struct_2(Struct_1(vec2<u32>(0u, 1u), 4294967295u, 1399f, 37186u, vec3<i32>(-19708i, i32(-2147483648), i32(-2147483648))), -638f), Struct_2(Struct_1(vec2<u32>(4294967295u, 41378u), 23221u, 2149f, 63263u, vec3<i32>(51060i, 2147483647i, 11740i)), -431f), Struct_2(Struct_1(vec2<u32>(54030u, 37761u), 62210u, 1815f, 51130u, vec3<i32>(1i, 1i, 1i)), -729f), Struct_2(Struct_1(vec2<u32>(20243u, 4294967295u), 1u, 1340f, 63120u, vec3<i32>(1320i, -1i, 25637i)), -891f), Struct_2(Struct_1(vec2<u32>(4294967295u, 32690u), 76137u, -634f, 1u, vec3<i32>(-29475i, 2147483647i, 0i)), -624f), Struct_2(Struct_1(vec2<u32>(1u, 1884u), 0u, 670f, 4294967295u, vec3<i32>(1i, 1i, 1i)), -1032f), Struct_2(Struct_1(vec2<u32>(43921u, 2894u), 1u, 742f, 9420u, vec3<i32>(1i, 2147483647i, 3493i)), 602f), Struct_2(Struct_1(vec2<u32>(23750u, 10622u), 36665u, 112f, 13700u, vec3<i32>(-8494i, -5016i, 1i)), -1240f), Struct_2(Struct_1(vec2<u32>(1692u, 4294967295u), 1u, 493f, 35775u, vec3<i32>(-6051i, 3650i, -28484i)), 508f), Struct_2(Struct_1(vec2<u32>(1u, 0u), 69302u, 810f, 4294967295u, vec3<i32>(18729i, 1266i, 0i)), 248f), Struct_2(Struct_1(vec2<u32>(36246u, 4294967295u), 0u, -1000f, 0u, vec3<i32>(-16260i, -1i, -1i)), -1027f), Struct_2(Struct_1(vec2<u32>(0u, 86380u), 75394u, 1868f, 0u, vec3<i32>(0i, -1i, 0i)), 110f), Struct_2(Struct_1(vec2<u32>(4294967295u, 34300u), 41616u, 164f, 7611u, vec3<i32>(1i, 0i, 21908i)), -288f), Struct_2(Struct_1(vec2<u32>(0u, 4294967295u), 24347u, -890f, 9646u, vec3<i32>(2147483647i, i32(-2147483648), 11511i)), 265f), Struct_2(Struct_1(vec2<u32>(0u, 18216u), 4294967295u, 1154f, 4294967295u, vec3<i32>(i32(-2147483648), 6089i, 2147483647i)), 949f), Struct_2(Struct_1(vec2<u32>(1u, 1u), 4294967295u, -123f, 4695u, vec3<i32>(i32(-2147483648), -5232i, -26319i)), -353f), Struct_2(Struct_1(vec2<u32>(0u, 4294967295u), 4294967295u, 665f, 6822u, vec3<i32>(36538i, -7300i, 1i)), -519f), Struct_2(Struct_1(vec2<u32>(0u, 6540u), 13646u, 708f, 82643u, vec3<i32>(-30841i, 0i, 2147483647i)), 1000f), Struct_2(Struct_1(vec2<u32>(16777u, 4294967295u), 4294967295u, -799f, 4294967295u, vec3<i32>(0i, 2147483647i, 43281i)), -271f), Struct_2(Struct_1(vec2<u32>(4294967295u, 1u), 1176u, -500f, 27730u, vec3<i32>(-47485i, i32(-2147483648), 27501i)), 2465f));

var<private> global3: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(Struct_1(vec2<u32>(1u, 66582u), 33330u, 1086f, 34294u, vec3<i32>(2147483647i, i32(-2147483648), 0i)), 1004f), Struct_2(Struct_1(vec2<u32>(4294967295u, 64013u), 19710u, 305f, 0u, vec3<i32>(16393i, 1i, 0i)), -685f), Struct_2(Struct_1(vec2<u32>(1u, 58523u), 1u, 574f, 24020u, vec3<i32>(0i, -1i, 22570i)), 318f), Struct_2(Struct_1(vec2<u32>(14219u, 20619u), 1u, -579f, 0u, vec3<i32>(-18504i, -1i, 9784i)), 1000f), Struct_2(Struct_1(vec2<u32>(9692u, 0u), 46648u, -579f, 25274u, vec3<i32>(-9922i, 1i, -19626i)), -711f), Struct_2(Struct_1(vec2<u32>(54819u, 1u), 56548u, 1578f, 1u, vec3<i32>(i32(-2147483648), 2147483647i, 1i)), 648f), Struct_2(Struct_1(vec2<u32>(4294967295u, 4294967295u), 4294967295u, -503f, 4294967295u, vec3<i32>(21068i, 1731i, 6805i)), 163f), Struct_2(Struct_1(vec2<u32>(0u, 1u), 0u, -1000f, 18554u, vec3<i32>(1i, 5150i, 0i)), -1000f), Struct_2(Struct_1(vec2<u32>(20371u, 1u), 9005u, -1009f, 1u, vec3<i32>(64754i, i32(-2147483648), -1i)), 345f), Struct_2(Struct_1(vec2<u32>(1u, 12232u), 1u, 1456f, 4294967295u, vec3<i32>(0i, 0i, 1i)), 545f), Struct_2(Struct_1(vec2<u32>(4294967295u, 0u), 0u, -1159f, 4294967295u, vec3<i32>(-15025i, -5641i, 2147483647i)), -658f), Struct_2(Struct_1(vec2<u32>(25670u, 16674u), 0u, -274f, 4294967295u, vec3<i32>(-1i, -1i, 5775i)), 505f), Struct_2(Struct_1(vec2<u32>(0u, 63840u), 50770u, -133f, 80115u, vec3<i32>(2147483647i, 2147483647i, 43487i)), 577f), Struct_2(Struct_1(vec2<u32>(1u, 9064u), 3268u, -478f, 1666u, vec3<i32>(-4826i, 108387i, 18800i)), -1226f), Struct_2(Struct_1(vec2<u32>(1u, 54353u), 39049u, 595f, 124731u, vec3<i32>(i32(-2147483648), 0i, -9626i)), -211f), Struct_2(Struct_1(vec2<u32>(4294967295u, 9873u), 1u, 499f, 1u, vec3<i32>(-37911i, -1i, -18461i)), -1130f), Struct_2(Struct_1(vec2<u32>(1u, 1u), 42222u, -469f, 4294967295u, vec3<i32>(i32(-2147483648), 18645i, 0i)), -1481f), Struct_2(Struct_1(vec2<u32>(23938u, 66245u), 16236u, -1101f, 4294967295u, vec3<i32>(-30755i, 5196i, -40777i)), -1188f), Struct_2(Struct_1(vec2<u32>(4294967295u, 1u), 0u, 163f, 4294967295u, vec3<i32>(i32(-2147483648), -1i, 2147483647i)), -286f), Struct_2(Struct_1(vec2<u32>(1u, 34124u), 38430u, -189f, 36827u, vec3<i32>(6344i, 2147483647i, -4454i)), 915f), Struct_2(Struct_1(vec2<u32>(1u, 4294967295u), 26323u, 829f, 35472u, vec3<i32>(-7413i, 0i, -8677i)), 163f), Struct_2(Struct_1(vec2<u32>(76772u, 1u), 0u, -966f, 4294967295u, vec3<i32>(0i, 16375i, 13594i)), -721f), Struct_2(Struct_1(vec2<u32>(17298u, 8409u), 0u, -1204f, 7405u, vec3<i32>(-1i, -1i, -37839i)), -619f), Struct_2(Struct_1(vec2<u32>(1720u, 3018u), 34798u, 1049f, 93778u, vec3<i32>(i32(-2147483648), -1i, -17025i)), 463f), Struct_2(Struct_1(vec2<u32>(43578u, 4294967295u), 30165u, -861f, 31479u, vec3<i32>(-16975i, 10712i, 10690i)), 674f));

var<private> global4: Struct_5 = Struct_5(Struct_1(vec2<u32>(13441u, 7591u), 17501u, -888f, 9424u, vec3<i32>(19223i, -1i, 2147483647i)));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_5) -> vec4<bool> {
    var var_0 = ~reverseBits(abs(global4.a.a));
    let var_1 = _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 87353i, 1i, global4.a.e.x), vec4<i32>(2147483647i, 2147483647i, -4840i, global4.a.e.x)), ~vec4<i32>(0i, 2147483647i, -20816i, u_input.a), vec4<i32>(0i, 0i, 1i, arg_1.a.e.x)) ^ (firstLeadingBit(vec4<i32>(global4.a.e.x, u_input.a, arg_1.a.e.x, arg_1.a.e.x)) & _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.a.e.x, 8448i, global4.a.e.x, global4.a.e.x), vec4<i32>(7656i, global4.a.e.x, global4.a.e.x, 15398i), vec4<i32>(global4.a.e.x, u_input.a, u_input.a, 1i))), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, reverseBits(u_input.a), u_input.a, ~arg_1.a.e.x), ~_wgslsmith_add_vec4_i32(vec4<i32>(-15088i, -13917i, -2147483647i, 1i), vec4<i32>(-1i, arg_1.a.e.x, u_input.a, -52206i)))), ~firstTrailingBit(vec4<i32>(max(1i, global4.a.e.x), i32(-1i) * -6170i, -43540i, min(global4.a.e.x, global4.a.e.x))));
    global4 = Struct_5(Struct_1(vec2<u32>(18577u, ~_wgslsmith_add_u32(arg_1.a.a.x, global4.a.b)), _wgslsmith_clamp_u32(62429u | arg_1.a.d, arg_1.a.d, reverseBits(~18778u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a.c)), ~58173u | _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a.b, 21331u), vec2<u32>(global4.a.d, arg_0.x)), global4.a.e));
    var var_2 = !(!(true | any(vec4<bool>(false, true, true, false))));
    let var_3 = reverseBits(vec4<u32>(select(_wgslsmith_mult_u32(15064u, arg_1.a.b), max(8341u, 41602u), false), max(var_0.x, _wgslsmith_clamp_u32(35331u, arg_0.x, arg_0.x)), ~83456u, 0u)) | arg_0;
    return !vec4<bool>(any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true)), !(~var_1.x > 1i), all(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(false, false), vec2<bool>(true, true))), any(vec3<bool>(true, arg_1.a.c <= arg_1.a.c, global4.a.a.x > 15258u)));
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: vec3<f32>) -> vec4<bool> {
    global2 = array<Struct_2, 30>();
    let var_0 = max(arg_0.b.wz, vec2<i32>(firstTrailingBit(global4.a.e.x), 38506i));
    global0 = 227u;
    global0 = _wgslsmith_sub_u32(32982u, firstLeadingBit(global4.a.d ^ 0u) << (92220u % 32u));
    var var_1 = Struct_3(Struct_1(select(_wgslsmith_mod_vec2_u32(vec2<u32>(global4.a.b, 77229u), global4.a.a), abs(vec2<u32>(global4.a.b, 0u)), !vec2<bool>(arg_0.a.x, false)) << (vec2<u32>(61321u, global4.a.a.x & 6526u) % vec2<u32>(32u)), 93774u, -1097f, 10912u, arg_0.b.yyw), global3[_wgslsmith_index_u32(select(~firstTrailingBit(_wgslsmith_mod_u32(24484u, 4294967295u)), 22010u, any(!(!arg_0.a.wz))), 25u)], global1[_wgslsmith_index_u32(global4.a.d, 15u)], true);
    return arg_0.a;
}

fn func_2() -> Struct_4 {
    global0 = 4294967295u;
    var var_0 = Struct_5(global4.a);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-199f + _wgslsmith_f_op_f32(-958f + global4.a.c)))));
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(36680u << (_wgslsmith_mod_u32(~global4.a.a.x, 62707u) % 32u), global4.a.a.x), 4044u, _wgslsmith_mult_u32(var_0.a.a.x, var_0.a.a.x)), 25u)];
    global2 = array<Struct_2, 30>();
    return Struct_4(select(vec4<bool>(any(vec3<bool>(false, true, false)) == false, true, true, false || any(vec3<bool>(false, true, false))), func_4(Struct_4(func_3(vec4<u32>(global4.a.d, 4294967295u, 0u, 1u), Struct_5(var_0.a)), vec4<i32>(-2128i, 9330i, -17387i, var_2.a.e.x), -618f, ~0i), _wgslsmith_f_op_f32(abs(242f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1333f, var_2.a.c, 1000f), vec3<f32>(global4.a.c, 324f, 179f), vec3<bool>(false, true, true)))))), select(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, all(vec2<bool>(true, false)), true))), max(reverseBits(vec4<i32>(global4.a.e.x, 2147483647i, ~u_input.a, firstTrailingBit(0i))), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global4.a.e.x, -4936i, u_input.a, -1i), vec4<i32>(-2147483647i, var_0.a.e.x, 10475i, global4.a.e.x)) ^ vec4<i32>(-1518i, var_2.a.e.x, -1i, u_input.a), vec4<i32>(max(u_input.a, global4.a.e.x), ~0i, min(45458i, -2147483647i), ~2147483647i))), var_2.b, -_wgslsmith_div_i32(abs(-1i), countOneBits(1i)));
}

fn func_5(arg_0: Struct_4) -> u32 {
    var var_0 = global4.a;
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c, _wgslsmith_div_f32(arg_0.c, 203f), 1987f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c, -1222f, global4.a.c) - vec3<f32>(-678f, -1859f, var_0.c)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.a.c, -860f, 1001f) * vec3<f32>(-712f, 1000f, -431f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1584f, 1249f, var_0.c)))), !vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(618f, 1321f, _wgslsmith_f_op_f32(trunc(arg_0.c))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(115f, arg_0.c, -484f) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1266f, -335f, 1964f), vec3<f32>(global4.a.c, arg_0.c, arg_0.c))))))));
    var var_2 = _wgslsmith_mod_i32(min(arg_0.d, min(2147483647i, _wgslsmith_dot_vec2_i32(global4.a.e.xz, arg_0.b.zx))), arg_0.b.x) << (~(~global4.a.a.x) % 32u);
    global4 = Struct_5(Struct_1(~vec2<u32>(var_0.d & 0u, max(var_0.a.x, var_0.a.x)), var_0.b, arg_0.c, _wgslsmith_div_u32(reverseBits(4738u ^ global4.a.d), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.d, 1u, 1u), vec3<u32>(var_0.d, global4.a.b, 0u)), vec3<u32>(var_0.b, 0u, global4.a.d))), arg_0.b.yyy));
    let var_3 = global4.a;
    return ~max(~select(var_0.d, ~var_0.b, !arg_0.a.x), ~43985u);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<i32>) -> vec2<u32> {
    var var_0 = -_wgslsmith_mod_vec4_i32(select(~(-vec4<i32>(arg_1.x, 2147483647i, global4.a.e.x, global4.a.e.x)), vec4<i32>(-6283i, -25236i, u_input.a, 0i ^ arg_1.x), vec4<bool>(true, true, true, true)), -vec4<i32>(-1i, global4.a.e.x, u_input.a, arg_1.x) >> (vec4<u32>(1u, global4.a.b, _wgslsmith_mult_u32(52004u, global4.a.a.x), ~4294967295u) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_f_op_f32(-1000f - arg_0.x);
    let var_2 = -1i >> ((_wgslsmith_clamp_u32(global4.a.b, ~_wgslsmith_mult_u32(global4.a.a.x, global4.a.d), global4.a.a.x) >> (countOneBits(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global4.a.b, global4.a.d, 4294967295u), vec3<u32>(4483u, global4.a.a.x, global4.a.d)), min(vec3<u32>(global4.a.b, 4294967295u, 1u), vec3<u32>(global4.a.b, 1475u, global4.a.b)))) % 32u)) % 32u);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x));
    global0 = firstTrailingBit(func_5(func_2()));
    return ~global4.a.a;
}

fn func_6(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_5, arg_3: vec4<u32>) -> Struct_4 {
    global2 = array<Struct_2, 30>();
    let var_0 = vec2<u32>(1u, abs(_wgslsmith_div_u32(_wgslsmith_div_u32(arg_0.b, 1u), 78651u) & _wgslsmith_add_u32(~0u, arg_2.a.b)));
    var var_1 = 756f;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-1744f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1289f) * arg_2.a.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(-arg_1.x)) + _wgslsmith_f_op_f32(ceil(arg_1.x)))), arg_1.x);
    return Struct_4(select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), var_0.x < arg_0.a.x), select(vec4<bool>(true, all(vec3<bool>(true, true, true)), true, false), vec4<bool>(global4.a.e.x >= global4.a.e.x, false, true, all(vec2<bool>(false, false))), vec4<bool>(127f > global4.a.c, false, true, true)), !func_3(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.a.b, arg_3.x, var_0.x, var_0.x), arg_3), arg_2)), ~(~min(vec4<i32>(-30572i, arg_2.a.e.x, 2147483647i, arg_2.a.e.x), ~vec4<i32>(global4.a.e.x, u_input.a, arg_0.e.x, u_input.a))), arg_2.a.c, -(~(~(~1i))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 25>();
    global2 = array<Struct_2, 30>();
    global1 = array<Struct_1, 15>();
    var var_0 = func_6(Struct_1(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1300f, global4.a.c, 540f)), -global4.a.e.zz), ~global4.a.d, _wgslsmith_f_op_f32(global4.a.c - _wgslsmith_div_f32(_wgslsmith_f_op_f32(484f - global4.a.c), _wgslsmith_f_op_f32(abs(-2932f)))), _wgslsmith_div_u32(func_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global4.a.c, global4.a.c, global4.a.c), vec3<f32>(global4.a.c, global4.a.c, global4.a.c), false)), reverseBits(global4.a.e.zy)).x, global4.a.d), -vec3<i32>(11001i, 0i, 70861i) & abs(select(vec3<i32>(1i, global4.a.e.x, -2147483647i), vec3<i32>(u_input.a, 1i, 6322i), vec3<bool>(true, false, false)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(global4.a.c)), -955f, -581f)), Struct_5(Struct_1(firstTrailingBit(vec2<u32>(global4.a.a.x, 25234u) << (global4.a.a % vec2<u32>(32u))), global4.a.a.x, global4.a.c, firstTrailingBit(min(83366u, 15577u)), -abs(vec3<i32>(-31355i, -2147483647i, global4.a.e.x)))), _wgslsmith_mod_vec4_u32(firstLeadingBit(~countOneBits(vec4<u32>(global4.a.d, global4.a.a.x, global4.a.d, 14995u))), vec4<u32>(~(~global4.a.b), ~countOneBits(global4.a.a.x), abs(global4.a.d), global4.a.a.x)));
    var var_1 = 34639u;
    var var_2 = Struct_3(Struct_1(~(~_wgslsmith_mod_vec2_u32(global4.a.a, vec2<u32>(1u, global4.a.b))), ~global4.a.a.x, _wgslsmith_f_op_f32(max(176f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global4.a.c * var_0.c))))), global4.a.b, ~(-reverseBits(vec3<i32>(29318i, 11960i, var_0.d)))), Struct_2(Struct_1(_wgslsmith_clamp_vec2_u32(global4.a.a >> (global4.a.a % vec2<u32>(32u)), vec2<u32>(global4.a.d, 4294967295u), vec2<u32>(1u, global4.a.a.x) | global4.a.a), 49495u, -1475f, func_5(func_6(Struct_1(global4.a.a, global4.a.a.x, global4.a.c, global4.a.d, vec3<i32>(var_0.d, u_input.a, u_input.a)), vec3<f32>(global4.a.c, global4.a.c, 1610f), Struct_5(global1[_wgslsmith_index_u32(global4.a.d, 15u)]), vec4<u32>(23813u, 85457u, global4.a.b, global4.a.d))), var_0.b.wxz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.a.c) + -577f))), Struct_1(vec2<u32>(_wgslsmith_mod_u32(global4.a.b, _wgslsmith_add_u32(4294967295u, 0u)), ~firstLeadingBit(global4.a.b)), _wgslsmith_div_u32(firstTrailingBit(global4.a.d), _wgslsmith_clamp_u32(_wgslsmith_add_u32(global4.a.d, 1u), global4.a.a.x, ~9299u)), _wgslsmith_f_op_f32(global4.a.c - _wgslsmith_f_op_f32(ceil(var_0.c))), _wgslsmith_mult_u32(abs(global4.a.d), min(global4.a.a.x, global4.a.a.x)) | _wgslsmith_sub_u32(~global4.a.b, ~global4.a.a.x), var_0.b.zzz), func_2().a.x);
    var var_3 = Struct_2(Struct_1(vec2<u32>(firstLeadingBit(var_2.b.a.b), ~90593u) >> (var_2.b.a.a % vec2<u32>(32u)), abs(16759u), _wgslsmith_f_op_f32(ceil(func_6(Struct_1(var_2.c.a, 15722u, 482f, global4.a.a.x, var_0.b.xww), _wgslsmith_f_op_vec3_f32(vec3<f32>(282f, -1014f, 1448f) - vec3<f32>(-587f, var_0.c, global4.a.c)), Struct_5(var_2.c), vec4<u32>(1u, global4.a.a.x, 4294967295u, var_2.c.a.x) >> (vec4<u32>(0u, global4.a.b, global4.a.d, global4.a.d) % vec4<u32>(32u))).c)), ~_wgslsmith_sub_u32(global4.a.b ^ global4.a.d, min(42272u, 1u)), abs(firstTrailingBit(vec3<i32>(-2147483647i, -1i, -1i)))), _wgslsmith_f_op_f32(f32(-1f) * -1495f));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(func_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a.c, 176f, var_2.b.a.c) + vec3<f32>(var_0.c, 414f, var_2.a.c)))), vec2<i32>(-var_0.b.x, var_0.d)).x, var_2.b.a.b), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, 244f, var_0.c)), vec3<f32>(global4.a.c, 564f, 1419f), var_2.d)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b, -262f, var_2.b.b)), vec3<f32>(1000f, -786f, global4.a.c))))), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(select(vec3<u32>(22632u, 30804u, 0u), vec3<u32>(var_3.a.d, var_2.a.b, 4294967295u), false), _wgslsmith_mod_vec3_u32(vec3<u32>(var_3.a.b, 8125u, 19117u), vec3<u32>(var_3.a.b, 12682u, var_3.a.a.x))), firstTrailingBit(max(vec3<u32>(global4.a.b, 4294967295u, global4.a.a.x), vec3<u32>(var_2.c.d, 4294967295u, var_2.c.b)))), var_2.c.d), global4.a.c, var_0.b);
}

