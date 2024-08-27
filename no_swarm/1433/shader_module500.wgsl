struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec4<bool>,
    d: bool,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec3<f32>(755f, -983f, -1000f), -985f, vec4<bool>(false, true, false, true), true, vec2<i32>(0i, -1i)), Struct_1(vec3<f32>(-173f, 210f, 779f), -676f, vec4<bool>(true, true, false, false), true, vec2<i32>(31036i, -34621i)), Struct_1(vec3<f32>(1000f, 667f, -1000f), 611f, vec4<bool>(false, false, true, true), true, vec2<i32>(771i, -69074i)), Struct_1(vec3<f32>(-578f, 1403f, -933f), 1621f, vec4<bool>(true, false, true, false), true, vec2<i32>(i32(-2147483648), -40705i)), Struct_1(vec3<f32>(1527f, -996f, -967f), 597f, vec4<bool>(false, true, false, false), true, vec2<i32>(-15463i, 1i)), Struct_1(vec3<f32>(-1744f, 1000f, -695f), 381f, vec4<bool>(true, true, false, false), false, vec2<i32>(34423i, 10070i)), Struct_1(vec3<f32>(546f, 1168f, 458f), 517f, vec4<bool>(true, true, false, false), true, vec2<i32>(-79540i, 0i)), Struct_1(vec3<f32>(-585f, -2061f, -1374f), -1861f, vec4<bool>(true, true, false, true), true, vec2<i32>(-4266i, 1i)), Struct_1(vec3<f32>(-1313f, 114f, 993f), 3078f, vec4<bool>(false, true, false, false), true, vec2<i32>(-76347i, 2147483647i)), Struct_1(vec3<f32>(-1000f, 1196f, -448f), -1023f, vec4<bool>(true, false, true, true), true, vec2<i32>(1i, i32(-2147483648))), Struct_1(vec3<f32>(1690f, -1083f, 1788f), -611f, vec4<bool>(true, true, false, true), false, vec2<i32>(i32(-2147483648), 1i)), Struct_1(vec3<f32>(819f, 524f, -935f), -2112f, vec4<bool>(false, false, false, true), false, vec2<i32>(2147483647i, -16688i)), Struct_1(vec3<f32>(1000f, 1167f, 511f), -1114f, vec4<bool>(true, false, false, false), false, vec2<i32>(0i, -1i)), Struct_1(vec3<f32>(-316f, -941f, -182f), 425f, vec4<bool>(false, false, true, false), false, vec2<i32>(4660i, 2147483647i)), Struct_1(vec3<f32>(1000f, 1296f, 416f), -439f, vec4<bool>(false, true, false, false), true, vec2<i32>(49805i, -37211i)), Struct_1(vec3<f32>(1658f, 867f, -1919f), -3701f, vec4<bool>(false, true, true, false), false, vec2<i32>(26039i, 2147483647i)), Struct_1(vec3<f32>(-825f, 603f, -452f), 453f, vec4<bool>(true, false, true, false), false, vec2<i32>(-22134i, 928i)), Struct_1(vec3<f32>(-1017f, -2442f, -1562f), -1494f, vec4<bool>(true, false, false, true), false, vec2<i32>(-49441i, i32(-2147483648))), Struct_1(vec3<f32>(-366f, 1455f, 1446f), 1419f, vec4<bool>(true, false, true, false), true, vec2<i32>(-26612i, i32(-2147483648))), Struct_1(vec3<f32>(1596f, 662f, -1000f), -389f, vec4<bool>(false, true, true, true), false, vec2<i32>(-14651i, 3933i)), Struct_1(vec3<f32>(-256f, -1102f, 1000f), 218f, vec4<bool>(false, true, false, false), true, vec2<i32>(i32(-2147483648), 1i)), Struct_1(vec3<f32>(1023f, 403f, -510f), -449f, vec4<bool>(false, false, false, false), true, vec2<i32>(0i, i32(-2147483648))));

var<private> global1: vec3<f32>;

var<private> global2: u32 = 47355u;

var<private> global3: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec3<f32>(-1269f, 690f, -890f), -552f, vec4<bool>(true, false, false, true), true, vec2<i32>(-31296i, 33089i)), Struct_1(vec3<f32>(-1000f, 1000f, 639f), -339f, vec4<bool>(true, false, false, false), false, vec2<i32>(3167i, 1i)), Struct_1(vec3<f32>(927f, 1039f, 391f), 318f, vec4<bool>(false, false, true, true), false, vec2<i32>(67280i, 5533i)), Struct_1(vec3<f32>(-1704f, -916f, -722f), 756f, vec4<bool>(false, false, false, false), false, vec2<i32>(2147483647i, 1i)), Struct_1(vec3<f32>(-550f, -1119f, 1619f), 520f, vec4<bool>(false, true, false, false), true, vec2<i32>(2147483647i, -1i)), Struct_1(vec3<f32>(730f, -1000f, 916f), 1179f, vec4<bool>(true, false, true, true), false, vec2<i32>(-10378i, 16474i)), Struct_1(vec3<f32>(-1000f, -191f, 765f), 1000f, vec4<bool>(true, false, false, true), true, vec2<i32>(16862i, i32(-2147483648))), Struct_1(vec3<f32>(651f, -866f, -346f), 1112f, vec4<bool>(true, true, false, true), true, vec2<i32>(-57059i, -19561i)), Struct_1(vec3<f32>(-687f, 1572f, 703f), -347f, vec4<bool>(true, false, true, false), true, vec2<i32>(-33051i, -545i)), Struct_1(vec3<f32>(194f, -883f, -670f), 414f, vec4<bool>(false, true, true, false), false, vec2<i32>(7696i, 56954i)), Struct_1(vec3<f32>(847f, 1017f, 1296f), 1620f, vec4<bool>(false, false, false, false), false, vec2<i32>(-29164i, 13457i)), Struct_1(vec3<f32>(-965f, -1569f, 1044f), 886f, vec4<bool>(true, true, false, true), true, vec2<i32>(i32(-2147483648), 8306i)), Struct_1(vec3<f32>(217f, -900f, 1089f), -1089f, vec4<bool>(false, false, true, false), false, vec2<i32>(-9298i, 2147483647i)), Struct_1(vec3<f32>(851f, -1461f, -330f), -2133f, vec4<bool>(true, false, false, false), true, vec2<i32>(24617i, -77393i)), Struct_1(vec3<f32>(1787f, 1000f, 1377f), -688f, vec4<bool>(true, true, true, false), true, vec2<i32>(-10492i, -1i)), Struct_1(vec3<f32>(-688f, -1106f, 1374f), 627f, vec4<bool>(false, true, true, true), false, vec2<i32>(2147483647i, 8799i)), Struct_1(vec3<f32>(233f, -276f, -1255f), -1055f, vec4<bool>(false, true, true, true), false, vec2<i32>(0i, -15913i)), Struct_1(vec3<f32>(-253f, 446f, 1643f), 1030f, vec4<bool>(false, true, true, false), false, vec2<i32>(i32(-2147483648), 29103i)), Struct_1(vec3<f32>(-1249f, 1186f, 626f), -1000f, vec4<bool>(false, true, true, false), true, vec2<i32>(25763i, -27067i)), Struct_1(vec3<f32>(-638f, -668f, 1000f), 171f, vec4<bool>(true, false, true, false), true, vec2<i32>(9763i, 2147483647i)), Struct_1(vec3<f32>(-452f, 1360f, -775f), -624f, vec4<bool>(false, true, false, true), false, vec2<i32>(24132i, -1i)), Struct_1(vec3<f32>(1000f, -1000f, -984f), 788f, vec4<bool>(false, true, true, false), false, vec2<i32>(2147483647i, -1i)), Struct_1(vec3<f32>(950f, -2411f, 664f), -320f, vec4<bool>(true, true, true, true), true, vec2<i32>(-16838i, 7898i)), Struct_1(vec3<f32>(115f, -1491f, 1037f), -268f, vec4<bool>(false, true, true, true), true, vec2<i32>(33277i, 58276i)));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.yz;
    global0 = array<Struct_1, 22>();
    global3 = array<Struct_1, 24>();
    global3 = array<Struct_1, 24>();
    var var_1 = vec4<bool>(any(vec2<bool>(true, _wgslsmith_div_i32(u_input.d.x, u_input.e) == _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, u_input.a.x, u_input.e), vec3<i32>(u_input.e, 1243i, 12618i)))), all(!select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false)))), true, true);
    global3 = array<Struct_1, 24>();
    let var_2 = vec2<bool>(!(u_input.b < reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 71182u, u_input.b), u_input.c.xzy))), false);
    let var_3 = vec3<i32>(-_wgslsmith_mult_i32(_wgslsmith_add_i32(1i, u_input.d.x), u_input.d.x), _wgslsmith_sub_i32(u_input.d.x << (0u % 32u), -u_input.e & (i32(-1i) * -1i)), 46399i) << (~vec3<u32>(1u, firstLeadingBit(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.b, 44139u, 0u, 42366u))), min(54900u, u_input.b)) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(select(~u_input.c.yx, abs(~var_0), true)), vec2<u32>(var_0.x, u_input.b), u_input.c.x);
}

