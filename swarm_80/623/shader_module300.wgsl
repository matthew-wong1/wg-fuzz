struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec2<i32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec3<i32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: Struct_2,
}

struct Struct_5 {
    a: vec2<bool>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

var<private> global1: Struct_1 = Struct_1(vec3<bool>(false, false, false), -1000f, vec2<i32>(-1i, 4965i), vec3<f32>(1256f, 484f, -2152f));

var<private> global2: array<Struct_1, 11>;

var<private> global3: array<Struct_4, 18> = array<Struct_4, 18>(Struct_4(vec4<bool>(true, true, true, false), Struct_3(vec4<u32>(4294967295u, 26546u, 18170u, 4294967295u), Struct_1(vec3<bool>(false, false, false), 1064f, vec2<i32>(0i, 14014i), vec3<f32>(1495f, -1123f, 867f))), Struct_2(vec2<f32>(1159f, -1445f), Struct_1(vec3<bool>(true, false, false), -784f, vec2<i32>(-13680i, 2147483647i), vec3<f32>(274f, 1000f, -1000f)), vec3<i32>(14324i, -30668i, 1i), vec3<f32>(1675f, -190f, -1000f))), Struct_4(vec4<bool>(true, true, true, false), Struct_3(vec4<u32>(26150u, 18402u, 6608u, 38207u), Struct_1(vec3<bool>(true, false, true), -486f, vec2<i32>(-5687i, 2147483647i), vec3<f32>(269f, -1000f, 1698f))), Struct_2(vec2<f32>(-282f, -1053f), Struct_1(vec3<bool>(true, false, false), 2530f, vec2<i32>(22589i, 1i), vec3<f32>(1252f, 252f, 371f)), vec3<i32>(2486i, -9990i, 16645i), vec3<f32>(656f, 558f, -579f))), Struct_4(vec4<bool>(false, false, false, false), Struct_3(vec4<u32>(4294967295u, 4294967295u, 1u, 51505u), Struct_1(vec3<bool>(false, true, true), 421f, vec2<i32>(19834i, 46840i), vec3<f32>(-2077f, 1081f, 1376f))), Struct_2(vec2<f32>(-1000f, 1000f), Struct_1(vec3<bool>(false, false, false), -276f, vec2<i32>(-65031i, 24179i), vec3<f32>(896f, 866f, 528f)), vec3<i32>(i32(-2147483648), 1i, 4759i), vec3<f32>(1981f, 1873f, 646f))), Struct_4(vec4<bool>(false, true, false, true), Struct_3(vec4<u32>(45886u, 38049u, 8282u, 1u), Struct_1(vec3<bool>(false, false, true), -956f, vec2<i32>(-31976i, -1i), vec3<f32>(2131f, 696f, 1000f))), Struct_2(vec2<f32>(521f, 1000f), Struct_1(vec3<bool>(false, false, true), 296f, vec2<i32>(i32(-2147483648), 51887i), vec3<f32>(439f, 157f, 277f)), vec3<i32>(0i, i32(-2147483648), 1i), vec3<f32>(789f, -276f, -617f))), Struct_4(vec4<bool>(true, true, true, false), Struct_3(vec4<u32>(10329u, 1u, 4294967295u, 1u), Struct_1(vec3<bool>(false, true, false), -554f, vec2<i32>(23195i, 0i), vec3<f32>(909f, 691f, -602f))), Struct_2(vec2<f32>(-1499f, 200f), Struct_1(vec3<bool>(false, false, true), 167f, vec2<i32>(0i, 1i), vec3<f32>(1528f, -280f, -412f)), vec3<i32>(90511i, 12922i, 6171i), vec3<f32>(2899f, 663f, 1861f))), Struct_4(vec4<bool>(true, false, false, true), Struct_3(vec4<u32>(1u, 4294967295u, 0u, 28813u), Struct_1(vec3<bool>(false, true, false), 1000f, vec2<i32>(-1i, 12050i), vec3<f32>(-1967f, 502f, 676f))), Struct_2(vec2<f32>(766f, 181f), Struct_1(vec3<bool>(true, false, true), 233f, vec2<i32>(-12957i, -29047i), vec3<f32>(-717f, -808f, -1329f)), vec3<i32>(-1i, 13585i, -5851i), vec3<f32>(1073f, 1700f, -1874f))), Struct_4(vec4<bool>(true, false, true, true), Struct_3(vec4<u32>(1u, 75854u, 70004u, 1u), Struct_1(vec3<bool>(true, true, false), -2281f, vec2<i32>(29812i, 0i), vec3<f32>(237f, 805f, 125f))), Struct_2(vec2<f32>(-245f, -105f), Struct_1(vec3<bool>(true, false, true), 1397f, vec2<i32>(-23922i, 2147483647i), vec3<f32>(947f, -1088f, -1000f)), vec3<i32>(0i, 38300i, 27636i), vec3<f32>(1000f, 1000f, -2412f))), Struct_4(vec4<bool>(true, true, false, true), Struct_3(vec4<u32>(3639u, 1u, 49122u, 37194u), Struct_1(vec3<bool>(false, false, true), 1114f, vec2<i32>(42217i, 49398i), vec3<f32>(808f, -1899f, 1728f))), Struct_2(vec2<f32>(1000f, 101f), Struct_1(vec3<bool>(false, false, false), 133f, vec2<i32>(-1i, -67791i), vec3<f32>(923f, -1000f, 188f)), vec3<i32>(i32(-2147483648), 4267i, -1i), vec3<f32>(-707f, -281f, -1720f))), Struct_4(vec4<bool>(true, true, false, false), Struct_3(vec4<u32>(31526u, 44067u, 4294967295u, 15747u), Struct_1(vec3<bool>(false, false, true), -939f, vec2<i32>(0i, 25455i), vec3<f32>(-516f, 610f, 532f))), Struct_2(vec2<f32>(229f, -291f), Struct_1(vec3<bool>(true, false, true), -1000f, vec2<i32>(-12723i, 2147483647i), vec3<f32>(-1000f, 1322f, 119f)), vec3<i32>(-36350i, 1370i, 30382i), vec3<f32>(846f, 1432f, 309f))), Struct_4(vec4<bool>(false, false, true, false), Struct_3(vec4<u32>(0u, 1513u, 48584u, 27690u), Struct_1(vec3<bool>(true, true, false), 852f, vec2<i32>(22983i, 1i), vec3<f32>(435f, -228f, -630f))), Struct_2(vec2<f32>(-999f, -181f), Struct_1(vec3<bool>(true, true, true), -1525f, vec2<i32>(2147483647i, 0i), vec3<f32>(-129f, -965f, 1586f)), vec3<i32>(-1i, 1i, 1i), vec3<f32>(-240f, -2414f, 793f))), Struct_4(vec4<bool>(false, false, true, true), Struct_3(vec4<u32>(0u, 43629u, 34077u, 66266u), Struct_1(vec3<bool>(true, true, true), 415f, vec2<i32>(18446i, 15938i), vec3<f32>(578f, -1427f, -1368f))), Struct_2(vec2<f32>(414f, -1736f), Struct_1(vec3<bool>(false, false, true), -235f, vec2<i32>(1i, 10563i), vec3<f32>(-178f, -1000f, -702f)), vec3<i32>(0i, -15147i, 1i), vec3<f32>(-867f, 347f, -103f))), Struct_4(vec4<bool>(true, true, false, false), Struct_3(vec4<u32>(66516u, 0u, 0u, 15458u), Struct_1(vec3<bool>(true, false, false), 509f, vec2<i32>(0i, -1i), vec3<f32>(2215f, 1062f, 214f))), Struct_2(vec2<f32>(1559f, -855f), Struct_1(vec3<bool>(false, false, true), -389f, vec2<i32>(-27686i, -1i), vec3<f32>(-151f, 2217f, -1000f)), vec3<i32>(-1i, 1i, -32887i), vec3<f32>(225f, -313f, -350f))), Struct_4(vec4<bool>(true, false, false, true), Struct_3(vec4<u32>(0u, 1u, 1u, 1u), Struct_1(vec3<bool>(false, true, false), 1127f, vec2<i32>(1i, 0i), vec3<f32>(453f, 501f, -1476f))), Struct_2(vec2<f32>(596f, 288f), Struct_1(vec3<bool>(true, true, false), -283f, vec2<i32>(2147483647i, i32(-2147483648)), vec3<f32>(851f, 2039f, 323f)), vec3<i32>(20836i, 1i, 15087i), vec3<f32>(1046f, -1000f, -626f))), Struct_4(vec4<bool>(false, false, false, true), Struct_3(vec4<u32>(9278u, 82416u, 43879u, 73175u), Struct_1(vec3<bool>(true, true, true), -220f, vec2<i32>(-11937i, 64284i), vec3<f32>(-558f, -2136f, -1610f))), Struct_2(vec2<f32>(-1042f, 271f), Struct_1(vec3<bool>(true, false, false), 296f, vec2<i32>(20159i, i32(-2147483648)), vec3<f32>(-759f, 117f, 293f)), vec3<i32>(-619i, 11685i, 22902i), vec3<f32>(336f, 784f, 597f))), Struct_4(vec4<bool>(false, true, false, true), Struct_3(vec4<u32>(1u, 15603u, 9729u, 0u), Struct_1(vec3<bool>(true, false, true), 2203f, vec2<i32>(7639i, -1i), vec3<f32>(423f, 746f, 758f))), Struct_2(vec2<f32>(-1230f, -620f), Struct_1(vec3<bool>(true, true, false), 400f, vec2<i32>(i32(-2147483648), -342i), vec3<f32>(812f, -1672f, -510f)), vec3<i32>(2147483647i, -26244i, 1i), vec3<f32>(-487f, 611f, 458f))), Struct_4(vec4<bool>(false, false, false, false), Struct_3(vec4<u32>(0u, 38899u, 1u, 0u), Struct_1(vec3<bool>(false, true, true), 1000f, vec2<i32>(-22382i, -1i), vec3<f32>(-139f, -342f, 543f))), Struct_2(vec2<f32>(-108f, 1007f), Struct_1(vec3<bool>(false, false, true), -703f, vec2<i32>(2147483647i, 27219i), vec3<f32>(1000f, 196f, 989f)), vec3<i32>(0i, 2147483647i, 0i), vec3<f32>(441f, 925f, 363f))), Struct_4(vec4<bool>(false, false, false, true), Struct_3(vec4<u32>(5513u, 20299u, 5389u, 4294967295u), Struct_1(vec3<bool>(false, true, true), 276f, vec2<i32>(1i, -4715i), vec3<f32>(-321f, -666f, 1296f))), Struct_2(vec2<f32>(-194f, -757f), Struct_1(vec3<bool>(true, true, false), -327f, vec2<i32>(31901i, -10016i), vec3<f32>(-797f, -117f, -591f)), vec3<i32>(10762i, i32(-2147483648), 39705i), vec3<f32>(-2339f, -400f, 345f))), Struct_4(vec4<bool>(true, true, false, true), Struct_3(vec4<u32>(44417u, 20084u, 4294967295u, 5160u), Struct_1(vec3<bool>(false, true, false), 473f, vec2<i32>(1i, 22778i), vec3<f32>(-965f, -599f, -135f))), Struct_2(vec2<f32>(457f, -284f), Struct_1(vec3<bool>(true, false, true), -1691f, vec2<i32>(-1i, -1i), vec3<f32>(1306f, 1000f, -383f)), vec3<i32>(-4534i, -20293i, -7630i), vec3<f32>(-942f, 895f, 1089f))));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec3<bool>) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.d)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(947f, _wgslsmith_f_op_f32(abs(global1.d.x)), -980f)));
    var var_1 = arg_0.x;
    let var_2 = vec3<f32>(global1.d.x, _wgslsmith_div_f32(global1.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(231f)))))), -1662f);
    var var_3 = arg_0.x << (u_input.b % 32u);
    let var_4 = global1.a.x;
    return _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.b.b)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(2061f, _wgslsmith_f_op_f32(arg_1.b.b - arg_1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -980f)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1062f)), 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -930f) - _wgslsmith_div_f32(433f, 1094f)), var_0.x))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0.b;
    let var_1 = true;
    let var_2 = Struct_3(~_wgslsmith_sub_vec4_u32(~u_input.a, vec4<u32>(~4294967295u, _wgslsmith_div_u32(u_input.b, u_input.a.x), ~u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.a.x), u_input.a.yxw))), global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(48785u, u_input.a.x)) >> (u_input.a.zw % vec2<u32>(32u)), vec2<u32>(u_input.b, u_input.a.x)), 11u)]);
    global0 = array<Struct_1, 15>();
    global2 = array<Struct_1, 11>();
    return var_2.b;
}

fn func_3(arg_0: f32) -> i32 {
    return firstLeadingBit(~global1.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_2(Struct_1(global1.a, 204f, vec2<i32>(~0i, -global1.c.x), _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_mod_vec2_i32(-vec2<i32>(global1.c.x, global1.c.x), -vec2<i32>(global1.c.x, global1.c.x)), Struct_2(_wgslsmith_div_vec2_f32(global1.d.xy, global1.d.yz), Struct_1(global1.a, -1000f, vec2<i32>(global1.c.x, 33269i), global1.d), vec3<i32>(-5300i, global1.c.x, global1.c.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(107f, -1338f, -2339f), global1.d, global1.a))), vec3<bool>(all(global1.a), true, global1.a.x)))));
    global0 = array<Struct_1, 15>();
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1549f, 1f))), global2[_wgslsmith_index_u32(4294967295u, 11u)], _wgslsmith_add_vec3_i32(~abs(_wgslsmith_sub_vec3_i32(vec3<i32>(global1.c.x, 11954i, global1.c.x), vec3<i32>(2147483647i, 1i, 1i))), vec3<i32>(func_3(-1470f), ~1i, global1.c.x)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1524f, -2364f))), -192f, 1000f));
    global3 = array<Struct_4, 18>();
    var var_1 = global1.a.x;
    var var_2 = u_input.d;
    global3 = array<Struct_4, 18>();
    let var_3 = ~_wgslsmith_add_vec4_i32(max(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.b.c.x, global1.c.x, -65183i, 0i), vec4<i32>(-2147483647i, -36442i, var_0.b.c.x, -32206i)), -vec4<i32>(global1.c.x, 41383i, 23966i, -2147483647i)), _wgslsmith_mult_vec4_i32(vec4<i32>(-17614i, var_0.b.c.x, -1i, global1.c.x), vec4<i32>(var_0.c.x, -2147483647i, 1i, 2147483647i))), vec4<i32>(global1.c.x, -51524i, global1.c.x >> (108077u % 32u), 19261i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1081f, 851f, -680f, var_0.a.x) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, global1.d.x, var_0.b.b, var_0.b.d.x))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1111f, -494f, var_0.b.b, 898f))))));
}

