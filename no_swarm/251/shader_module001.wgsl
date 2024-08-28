struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: Struct_3,
    d: vec4<f32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(vec2<bool>(false, true), vec3<f32>(751f, 1512f, -518f), Struct_3(Struct_2(vec2<f32>(2373f, -1000f), true, Struct_1(vec3<i32>(0i, -14835i, 45273i), vec4<u32>(50745u, 4294967295u, 15772u, 42757u))), Struct_1(vec3<i32>(-4754i, -12701i, -1i), vec4<u32>(0u, 40235u, 35188u, 1u)), Struct_2(vec2<f32>(-784f, -909f), true, Struct_1(vec3<i32>(0i, -43222i, -66276i), vec4<u32>(5258u, 22771u, 74431u, 4294967295u))), -701i), vec4<f32>(-447f, 990f, -266f, -1380f)), Struct_4(vec2<bool>(true, false), vec3<f32>(310f, 739f, 1000f), Struct_3(Struct_2(vec2<f32>(2333f, 512f), true, Struct_1(vec3<i32>(-5633i, -61929i, 12745i), vec4<u32>(4294967295u, 56923u, 1u, 4294967295u))), Struct_1(vec3<i32>(-28318i, 1i, i32(-2147483648)), vec4<u32>(9791u, 108u, 0u, 42540u)), Struct_2(vec2<f32>(-118f, -458f), true, Struct_1(vec3<i32>(-1i, 26657i, -1i), vec4<u32>(1u, 59219u, 75824u, 23490u))), -62247i), vec4<f32>(1473f, 2621f, 547f, -273f)), Struct_4(vec2<bool>(false, false), vec3<f32>(1000f, 1000f, 2908f), Struct_3(Struct_2(vec2<f32>(-1423f, 859f), false, Struct_1(vec3<i32>(0i, 14906i, 14374i), vec4<u32>(43327u, 16450u, 1u, 1u))), Struct_1(vec3<i32>(-1i, 0i, -82767i), vec4<u32>(46324u, 4294967295u, 111861u, 59419u)), Struct_2(vec2<f32>(-579f, 503f), true, Struct_1(vec3<i32>(i32(-2147483648), 3026i, -37730i), vec4<u32>(4294967295u, 26819u, 1u, 45587u))), 0i), vec4<f32>(-528f, 1604f, -908f, -564f)), Struct_4(vec2<bool>(true, true), vec3<f32>(1000f, 1502f, 407f), Struct_3(Struct_2(vec2<f32>(-1000f, 206f), true, Struct_1(vec3<i32>(1i, 15994i, -24589i), vec4<u32>(36018u, 15258u, 0u, 65330u))), Struct_1(vec3<i32>(7381i, i32(-2147483648), 1i), vec4<u32>(0u, 84262u, 17728u, 17314u)), Struct_2(vec2<f32>(1387f, -1617f), true, Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), vec4<u32>(1u, 0u, 1u, 1u))), 0i), vec4<f32>(1834f, -1654f, -1537f, 816f)), Struct_4(vec2<bool>(true, false), vec3<f32>(-1285f, -747f, -186f), Struct_3(Struct_2(vec2<f32>(-1293f, -557f), false, Struct_1(vec3<i32>(2147483647i, i32(-2147483648), 61510i), vec4<u32>(4294967295u, 4294967295u, 95818u, 974u))), Struct_1(vec3<i32>(2147483647i, -1i, 1i), vec4<u32>(4294967295u, 1u, 0u, 73332u)), Struct_2(vec2<f32>(-796f, 2685f), false, Struct_1(vec3<i32>(1i, 2147483647i, -1i), vec4<u32>(0u, 0u, 1u, 6669u))), -5477i), vec4<f32>(1000f, 207f, -390f, -1167f)), Struct_4(vec2<bool>(false, true), vec3<f32>(-394f, -253f, 731f), Struct_3(Struct_2(vec2<f32>(473f, 524f), true, Struct_1(vec3<i32>(1i, -1i, -15034i), vec4<u32>(0u, 38878u, 1u, 17127u))), Struct_1(vec3<i32>(2147483647i, -1i, 21189i), vec4<u32>(18941u, 0u, 23542u, 83221u)), Struct_2(vec2<f32>(658f, 540f), true, Struct_1(vec3<i32>(i32(-2147483648), 876i, 1i), vec4<u32>(0u, 100796u, 56175u, 0u))), 0i), vec4<f32>(492f, -930f, 847f, 1695f)), Struct_4(vec2<bool>(false, false), vec3<f32>(-379f, -1575f, 1030f), Struct_3(Struct_2(vec2<f32>(-435f, 2236f), false, Struct_1(vec3<i32>(35850i, 0i, i32(-2147483648)), vec4<u32>(0u, 27849u, 60728u, 31265u))), Struct_1(vec3<i32>(-2129i, -1i, 0i), vec4<u32>(7051u, 0u, 20117u, 4294967295u)), Struct_2(vec2<f32>(-686f, 1587f), true, Struct_1(vec3<i32>(-1i, -9298i, -1i), vec4<u32>(24847u, 4294967295u, 4294967295u, 0u))), -6783i), vec4<f32>(666f, -1186f, -543f, -1016f)), Struct_4(vec2<bool>(true, false), vec3<f32>(794f, -251f, 1148f), Struct_3(Struct_2(vec2<f32>(-464f, -289f), false, Struct_1(vec3<i32>(50160i, 29166i, 11865i), vec4<u32>(19950u, 0u, 0u, 4294967295u))), Struct_1(vec3<i32>(-15208i, 31505i, -15473i), vec4<u32>(30373u, 1u, 37652u, 50146u)), Struct_2(vec2<f32>(2765f, -184f), true, Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, 1i), vec4<u32>(102113u, 4294967295u, 5740u, 15071u))), i32(-2147483648)), vec4<f32>(1884f, 907f, -353f, -193f)), Struct_4(vec2<bool>(true, true), vec3<f32>(1112f, -795f, -1227f), Struct_3(Struct_2(vec2<f32>(1490f, -905f), false, Struct_1(vec3<i32>(i32(-2147483648), 3729i, -4561i), vec4<u32>(1u, 0u, 1u, 4294967295u))), Struct_1(vec3<i32>(1i, 0i, 6803i), vec4<u32>(1174u, 21227u, 34954u, 0u)), Struct_2(vec2<f32>(-360f, -568f), false, Struct_1(vec3<i32>(6659i, -8696i, 0i), vec4<u32>(28820u, 2221u, 110792u, 4294967295u))), 1i), vec4<f32>(1040f, 377f, -226f, -280f)), Struct_4(vec2<bool>(true, true), vec3<f32>(-1638f, -975f, 690f), Struct_3(Struct_2(vec2<f32>(-191f, 955f), true, Struct_1(vec3<i32>(-23917i, 30471i, 23986i), vec4<u32>(0u, 0u, 9995u, 94158u))), Struct_1(vec3<i32>(i32(-2147483648), -9345i, 2147483647i), vec4<u32>(1u, 9627u, 62723u, 4294967295u)), Struct_2(vec2<f32>(1301f, 131f), false, Struct_1(vec3<i32>(25787i, -1i, i32(-2147483648)), vec4<u32>(1u, 22053u, 0u, 4294967295u))), 66056i), vec4<f32>(490f, -376f, 416f, 1505f)), Struct_4(vec2<bool>(true, false), vec3<f32>(-209f, -1215f, -1000f), Struct_3(Struct_2(vec2<f32>(-452f, 256f), false, Struct_1(vec3<i32>(-2274i, -1i, 15951i), vec4<u32>(4294967295u, 0u, 1u, 51817u))), Struct_1(vec3<i32>(32023i, i32(-2147483648), i32(-2147483648)), vec4<u32>(1u, 75030u, 34183u, 47536u)), Struct_2(vec2<f32>(1372f, 762f), true, Struct_1(vec3<i32>(-1i, 920i, 0i), vec4<u32>(1u, 4294967295u, 1u, 0u))), 7903i), vec4<f32>(-119f, -152f, 690f, 715f)), Struct_4(vec2<bool>(true, true), vec3<f32>(-1708f, 405f, 935f), Struct_3(Struct_2(vec2<f32>(444f, -1000f), true, Struct_1(vec3<i32>(-31317i, 1i, 1i), vec4<u32>(1u, 0u, 0u, 28320u))), Struct_1(vec3<i32>(-58831i, i32(-2147483648), -34494i), vec4<u32>(1u, 1u, 65602u, 1161u)), Struct_2(vec2<f32>(2169f, 270f), false, Struct_1(vec3<i32>(i32(-2147483648), -27853i, 1i), vec4<u32>(0u, 35005u, 4294967295u, 69723u))), -23545i), vec4<f32>(-958f, -1165f, -352f, 1141f)), Struct_4(vec2<bool>(true, false), vec3<f32>(1698f, 279f, -1470f), Struct_3(Struct_2(vec2<f32>(-1000f, 651f), true, Struct_1(vec3<i32>(-1i, i32(-2147483648), -1i), vec4<u32>(0u, 2283u, 4294967295u, 4294967295u))), Struct_1(vec3<i32>(-26998i, -12580i, 2684i), vec4<u32>(64145u, 0u, 23811u, 4294967295u)), Struct_2(vec2<f32>(465f, 1000f), false, Struct_1(vec3<i32>(1i, i32(-2147483648), i32(-2147483648)), vec4<u32>(4294967295u, 80905u, 53126u, 62301u))), 44741i), vec4<f32>(1161f, -2274f, 1470f, -1296f)), Struct_4(vec2<bool>(false, true), vec3<f32>(114f, -616f, -210f), Struct_3(Struct_2(vec2<f32>(-793f, 332f), true, Struct_1(vec3<i32>(1i, -35442i, 2147483647i), vec4<u32>(4294967295u, 0u, 71949u, 4294967295u))), Struct_1(vec3<i32>(-24753i, i32(-2147483648), 15655i), vec4<u32>(4294967295u, 72187u, 114u, 1u)), Struct_2(vec2<f32>(-1090f, -984f), true, Struct_1(vec3<i32>(-12918i, i32(-2147483648), -48566i), vec4<u32>(4656u, 0u, 4294967295u, 41576u))), 2147483647i), vec4<f32>(250f, -1000f, 599f, -947f)), Struct_4(vec2<bool>(false, false), vec3<f32>(260f, -1423f, 2102f), Struct_3(Struct_2(vec2<f32>(-1151f, 2054f), false, Struct_1(vec3<i32>(-1i, 26372i, -1i), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 24745u))), Struct_1(vec3<i32>(-1i, 1i, -18796i), vec4<u32>(41966u, 20667u, 13921u, 4294967295u)), Struct_2(vec2<f32>(108f, -1675f), true, Struct_1(vec3<i32>(-58087i, 10721i, 2147483647i), vec4<u32>(4294967295u, 1u, 0u, 53632u))), 26136i), vec4<f32>(246f, -2164f, -1000f, -1641f)), Struct_4(vec2<bool>(false, true), vec3<f32>(-1647f, 1000f, 527f), Struct_3(Struct_2(vec2<f32>(-192f, -581f), false, Struct_1(vec3<i32>(-42989i, 0i, 18544i), vec4<u32>(32670u, 25059u, 4294967295u, 1u))), Struct_1(vec3<i32>(0i, 2147483647i, -13808i), vec4<u32>(1u, 1u, 4294967295u, 4294967295u)), Struct_2(vec2<f32>(1000f, 1128f), true, Struct_1(vec3<i32>(22397i, 17197i, i32(-2147483648)), vec4<u32>(43802u, 5121u, 12024u, 0u))), -20616i), vec4<f32>(-169f, 1094f, -498f, -1000f)), Struct_4(vec2<bool>(true, false), vec3<f32>(1000f, 275f, -1427f), Struct_3(Struct_2(vec2<f32>(1000f, -449f), true, Struct_1(vec3<i32>(1i, 17837i, 0i), vec4<u32>(1u, 4294967295u, 21411u, 4294967295u))), Struct_1(vec3<i32>(-1i, 76406i, -1i), vec4<u32>(4294967295u, 4294967295u, 1u, 1u)), Struct_2(vec2<f32>(-236f, 1178f), false, Struct_1(vec3<i32>(-43878i, 42520i, -28254i), vec4<u32>(4294967295u, 1u, 1u, 4294967295u))), -15447i), vec4<f32>(1395f, -1000f, -1000f, -463f)));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec2<f32>) -> u32 {
    var var_0 = arg_3.x;
    global0 = array<Struct_4, 17>();
    var var_1 = vec3<i32>(~(~arg_0.a.x), 36483i, _wgslsmith_mod_i32(-countOneBits(1i), _wgslsmith_sub_i32(-1590i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(344i, -26138i), -arg_0.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(17973i, 1i), vec2<i32>(u_input.b, arg_2.a.x))))));
    let var_2 = vec2<i32>(firstTrailingBit(-21970i), 7498i);
    let var_3 = Struct_5(~(~arg_2.b.x), Struct_4(vec2<bool>((arg_2.b.x | 0u) != min(13991u, arg_0.b.x), false), vec3<f32>(_wgslsmith_f_op_f32(-arg_3.x), arg_3.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(arg_3.x))))), Struct_3(Struct_2(arg_3, true, arg_2), Struct_1(arg_2.a, _wgslsmith_div_vec4_u32(arg_2.b, vec4<u32>(arg_0.b.x, 4294967295u, arg_2.b.x, 1u))), Struct_2(vec2<f32>(arg_3.x, -1000f), true, Struct_1(vec3<i32>(-42105i, u_input.b, -1i), vec4<u32>(u_input.a, arg_2.b.x, arg_0.b.x, u_input.a))), var_2.x << (0u % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, -528f, 1000f, arg_3.x))))), true);
    return 45371u;
}

fn func_2(arg_0: u32, arg_1: u32) -> f32 {
    let var_0 = (((i32(-1i) * -u_input.b) >> (6053u % 32u)) > u_input.b) & (min(arg_1, func_3(Struct_1(vec3<i32>(u_input.b, u_input.b, -2147483647i), vec4<u32>(u_input.a, 59683u, arg_0, 62158u)), ~vec4<u32>(arg_0, 2136u, arg_0, arg_0), Struct_1(vec3<i32>(u_input.b, u_input.b, 1i), vec4<u32>(13133u, 4596u, u_input.a, 4294967295u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1627f, 487f) * vec2<f32>(270f, 284f)))) < select(4294967295u, 1u, true));
    var var_1 = 1i;
    var var_2 = vec4<i32>(max(22014i, u_input.b), 0i, ~_wgslsmith_mod_i32(u_input.b ^ 554i, -8274i), -2147483647i) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1, arg_1, _wgslsmith_add_u32(617u, arg_1) & (23967u << (arg_0 % 32u)), firstTrailingBit(51007u) | 27967u), ~_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a, u_input.a, 53661u, arg_1)), ~vec4<u32>(arg_0, arg_0, arg_1, 35164u), vec4<u32>(21159u, arg_1, u_input.a, 0u))) % vec4<u32>(32u));
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(408f, -185f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-520f, 908f)), vec2<f32>(577f, 1138f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-172f, 1673f), vec2<f32>(1640f, 530f), var_0)))), vec2<bool>(true, true))), var_0, Struct_1(vec3<i32>(abs(abs(u_input.b)), var_2.x, u_input.b), vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, arg_1, 20704u), ~vec3<u32>(u_input.a, 21626u, 0u)), firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_1), vec2<u32>(13021u, 5348u))), arg_0, 39133u)));
    global0 = array<Struct_4, 17>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a.x * var_3.a.x) - -2603f);
}

fn func_1(arg_0: i32) -> u32 {
    let var_0 = ~u_input.a ^ 1u;
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(min(58074u, _wgslsmith_mult_u32(var_0, var_0)), 50832u)))));
    var var_2 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - vec2<f32>(-914f, _wgslsmith_f_op_f32(sign(1463f)))), all(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false)), Struct_1(-_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0, u_input.b, 1i), vec3<i32>(u_input.b, 1i, arg_0)), abs(~vec4<u32>(4294967295u, 26129u, var_0, 1u)))), Struct_1(vec3<i32>(1i, arg_0, _wgslsmith_mult_i32(1i, u_input.b)), max(~vec4<u32>(83879u, u_input.a, var_0, 67416u), countOneBits(vec4<u32>(49012u, 64123u, u_input.a, var_0)) | _wgslsmith_sub_vec4_u32(vec4<u32>(15826u, var_0, 0u, var_0), vec4<u32>(var_0, 4294967295u, u_input.a, var_0)))), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-104f * 1614f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-2348f))))), true, Struct_1(vec3<i32>(~12545i, -19622i, 1i), vec4<u32>(34711u, var_0, 1u, 16347u) | vec4<u32>(u_input.a, 0u, u_input.a, u_input.a))), _wgslsmith_mult_i32(1i, ~_wgslsmith_mod_i32(-28960i, u_input.b)) ^ -(~arg_0));
    var var_3 = 0u;
    var var_4 = abs(vec3<i32>(abs(var_2.a.c.a.x), _wgslsmith_mod_i32(1i, 41954i), var_2.c.c.a.x));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 17>();
    var var_0 = vec4<u32>(u_input.a, ~u_input.a, u_input.a, reverseBits(func_1(u_input.b) | _wgslsmith_sub_u32(~u_input.a, _wgslsmith_div_u32(4294967295u, u_input.a))));
    var var_1 = _wgslsmith_mult_vec3_u32(~(~reverseBits(var_0.wwy)) ^ _wgslsmith_mult_vec3_u32(var_0.yyw, var_0.wzy), ~(~var_0.xyz));
    var_0 = ~(~(~_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, u_input.a), vec4<u32>(58255u, u_input.a, 46802u, 46812u)), _wgslsmith_div_vec4_u32(vec4<u32>(21252u, var_0.x, 0u, 4294967295u), vec4<u32>(u_input.a, var_0.x, u_input.a, u_input.a)))));
    global0 = array<Struct_4, 17>();
    var_1 = ~(~select(abs(var_0.xwz >> (var_0.zyy % vec3<u32>(32u))), select(var_0.xyz, vec3<u32>(4294967295u, 0u, 0u), vec3<bool>(true, true, true)), vec3<bool>(true, true, any(vec2<bool>(true, false)))));
    var var_2 = Struct_1(~vec3<i32>(max(31641i, ~14911i), ~u_input.b << (~1u % 32u), u_input.b | select(2147483647i, 1i, false)), vec4<u32>(var_0.x, u_input.a, ~_wgslsmith_sub_u32(u_input.a >> (1u % 32u), var_1.x), 4294967295u));
    let var_3 = select(select(select(vec4<bool>(all(vec2<bool>(true, true)), true, true, any(vec2<bool>(true, true))), vec4<bool>(true, true, true, var_1.x == 11013u), vec4<bool>(false, true, true, true)), !vec4<bool>(true, true, any(vec2<bool>(false, false)), true), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false))), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(any(vec2<bool>(true, true)), true, false, true))), !vec4<bool>(all(vec4<bool>(true, true, true, true)), true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(623f, 159f, true)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1048f + 1172f))) - 1f));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_mod_u32(u_input.a & 4294967295u, ~81306u), var_0.x, 9178u) ^ vec3<u32>(~4294967295u, u_input.a, max(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 7645u, 4294967295u, 41344u), var_2.b), var_0.x)), var_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.a.x >> (45276u % 32u), _wgslsmith_mod_i32(max(-1i, 1i), var_2.a.x >> (var_1.x % 32u)), countOneBits(_wgslsmith_div_i32(u_input.b, u_input.b))), vec3<i32>(35910i, firstLeadingBit(-42368i), _wgslsmith_dot_vec3_i32(var_2.a, select(var_2.a, var_2.a, vec3<bool>(var_3.x, var_3.x, true))))));
}

