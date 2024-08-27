struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<bool>,
    d: vec4<u32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: Struct_2,
    e: vec2<f32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<bool>,
    c: vec3<i32>,
    d: u32,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(56833i, vec2<u32>(4395u, 3417u), vec4<u32>(98605u, 4294967295u, 36256u, 31179u), Struct_2(Struct_1(-142f, 481f, vec2<bool>(true, false), vec4<u32>(1u, 26354u, 0u, 1u), -1227f)), vec2<f32>(-1000f, 426f)), Struct_3(0i, vec2<u32>(4294967295u, 1u), vec4<u32>(1u, 46794u, 0u, 73676u), Struct_2(Struct_1(-499f, 235f, vec2<bool>(true, false), vec4<u32>(1u, 43662u, 0u, 69214u), 1000f)), vec2<f32>(1360f, -482f)), Struct_3(0i, vec2<u32>(81337u, 23961u), vec4<u32>(0u, 0u, 4294967295u, 0u), Struct_2(Struct_1(780f, 412f, vec2<bool>(false, true), vec4<u32>(59216u, 0u, 1u, 38619u), 1989f)), vec2<f32>(-346f, 761f)), Struct_3(1i, vec2<u32>(16204u, 58824u), vec4<u32>(0u, 1u, 0u, 54819u), Struct_2(Struct_1(-547f, 1276f, vec2<bool>(true, false), vec4<u32>(71334u, 1u, 1u, 98352u), -101f)), vec2<f32>(1538f, -1431f)), Struct_3(-41451i, vec2<u32>(4294967295u, 1565u), vec4<u32>(4294967295u, 7212u, 4294967295u, 17917u), Struct_2(Struct_1(484f, -895f, vec2<bool>(true, false), vec4<u32>(0u, 1u, 76735u, 3425u), -2198f)), vec2<f32>(624f, -882f)), Struct_3(44745i, vec2<u32>(10557u, 0u), vec4<u32>(106637u, 14018u, 26530u, 0u), Struct_2(Struct_1(-1054f, 701f, vec2<bool>(false, true), vec4<u32>(1u, 1u, 4294967295u, 4294967295u), -482f)), vec2<f32>(2551f, 105f)), Struct_3(-82799i, vec2<u32>(0u, 1u), vec4<u32>(1u, 52166u, 36968u, 4294967295u), Struct_2(Struct_1(1100f, 905f, vec2<bool>(false, false), vec4<u32>(35509u, 0u, 0u, 35721u), -497f)), vec2<f32>(1000f, -359f)), Struct_3(-4474i, vec2<u32>(1u, 34890u), vec4<u32>(15058u, 5786u, 1u, 4294967295u), Struct_2(Struct_1(-900f, -1769f, vec2<bool>(false, false), vec4<u32>(23151u, 4644u, 84714u, 0u), 234f)), vec2<f32>(-1273f, -2122f)), Struct_3(1334i, vec2<u32>(4294967295u, 58595u), vec4<u32>(21766u, 59304u, 10721u, 57378u), Struct_2(Struct_1(1000f, 627f, vec2<bool>(false, false), vec4<u32>(50486u, 1u, 123455u, 0u), -1068f)), vec2<f32>(669f, -1000f)), Struct_3(-3578i, vec2<u32>(77252u, 70181u), vec4<u32>(41572u, 1u, 0u, 1u), Struct_2(Struct_1(1477f, 1651f, vec2<bool>(false, false), vec4<u32>(4294967295u, 54144u, 44896u, 8956u), 630f)), vec2<f32>(637f, 1058f)), Struct_3(14772i, vec2<u32>(4294967295u, 1u), vec4<u32>(4294967295u, 44603u, 3087u, 73875u), Struct_2(Struct_1(342f, -2514f, vec2<bool>(true, false), vec4<u32>(43468u, 22540u, 1u, 0u), 1000f)), vec2<f32>(1565f, -181f)), Struct_3(i32(-2147483648), vec2<u32>(0u, 93517u), vec4<u32>(8451u, 117748u, 54539u, 2953u), Struct_2(Struct_1(156f, 1985f, vec2<bool>(false, true), vec4<u32>(0u, 11005u, 1u, 1u), -800f)), vec2<f32>(-511f, 937f)), Struct_3(2147483647i, vec2<u32>(1u, 54688u), vec4<u32>(4294967295u, 32474u, 15308u, 0u), Struct_2(Struct_1(807f, 154f, vec2<bool>(true, true), vec4<u32>(1u, 31145u, 11207u, 13270u), -1026f)), vec2<f32>(1750f, -541f)), Struct_3(0i, vec2<u32>(29065u, 4294967295u), vec4<u32>(4294967295u, 24168u, 16135u, 4294967295u), Struct_2(Struct_1(922f, 316f, vec2<bool>(true, true), vec4<u32>(31053u, 17540u, 17367u, 22558u), 2374f)), vec2<f32>(-882f, 1097f)), Struct_3(-14005i, vec2<u32>(0u, 18764u), vec4<u32>(4294967295u, 0u, 26546u, 4294967295u), Struct_2(Struct_1(-1066f, -796f, vec2<bool>(true, true), vec4<u32>(17393u, 63998u, 0u, 31642u), 1120f)), vec2<f32>(-1765f, 1000f)), Struct_3(2147483647i, vec2<u32>(46005u, 27557u), vec4<u32>(59408u, 30868u, 82124u, 75999u), Struct_2(Struct_1(-553f, 1000f, vec2<bool>(false, true), vec4<u32>(6815u, 34817u, 19960u, 30991u), -472f)), vec2<f32>(-617f, 416f)), Struct_3(i32(-2147483648), vec2<u32>(5084u, 1u), vec4<u32>(1u, 3289u, 1u, 49131u), Struct_2(Struct_1(1122f, -534f, vec2<bool>(true, true), vec4<u32>(34639u, 1u, 0u, 1u), -688f)), vec2<f32>(419f, 1000f)), Struct_3(i32(-2147483648), vec2<u32>(18613u, 4294967295u), vec4<u32>(1u, 1u, 1u, 0u), Struct_2(Struct_1(-491f, -676f, vec2<bool>(true, false), vec4<u32>(0u, 4294967295u, 20568u, 31094u), -720f)), vec2<f32>(198f, -465f)), Struct_3(16592i, vec2<u32>(10202u, 41325u), vec4<u32>(0u, 4294967295u, 40576u, 23226u), Struct_2(Struct_1(1380f, -319f, vec2<bool>(false, false), vec4<u32>(78737u, 4294967295u, 1u, 1u), 1000f)), vec2<f32>(-874f, 541f)), Struct_3(-25013i, vec2<u32>(4294967295u, 4294967295u), vec4<u32>(84366u, 1u, 9602u, 716u), Struct_2(Struct_1(-345f, 1000f, vec2<bool>(false, false), vec4<u32>(1u, 0u, 22485u, 51933u), 688f)), vec2<f32>(376f, -1072f)), Struct_3(20037i, vec2<u32>(11029u, 67745u), vec4<u32>(51244u, 77337u, 4294967295u, 29592u), Struct_2(Struct_1(254f, 1867f, vec2<bool>(true, true), vec4<u32>(4294967295u, 66009u, 98214u, 3508u), 1022f)), vec2<f32>(-1000f, -577f)), Struct_3(-23287i, vec2<u32>(11920u, 4294967295u), vec4<u32>(0u, 26822u, 1u, 81286u), Struct_2(Struct_1(-312f, -274f, vec2<bool>(false, true), vec4<u32>(2711u, 46667u, 99432u, 1u), -1000f)), vec2<f32>(1140f, 1000f)), Struct_3(1i, vec2<u32>(0u, 9526u), vec4<u32>(0u, 12259u, 4294967295u, 1u), Struct_2(Struct_1(611f, 393f, vec2<bool>(false, true), vec4<u32>(0u, 4294967295u, 0u, 0u), 1680f)), vec2<f32>(782f, 1704f)), Struct_3(-18113i, vec2<u32>(4294967295u, 17839u), vec4<u32>(10789u, 1u, 0u, 63713u), Struct_2(Struct_1(-2364f, 547f, vec2<bool>(true, false), vec4<u32>(22835u, 0u, 4294967295u, 1u), -1000f)), vec2<f32>(756f, -1442f)), Struct_3(2147483647i, vec2<u32>(8462u, 24123u), vec4<u32>(89238u, 4294967295u, 1u, 0u), Struct_2(Struct_1(-602f, -701f, vec2<bool>(false, false), vec4<u32>(28011u, 29241u, 77784u, 1u), -860f)), vec2<f32>(1365f, 1813f)), Struct_3(i32(-2147483648), vec2<u32>(16414u, 13766u), vec4<u32>(0u, 4294967295u, 11987u, 25048u), Struct_2(Struct_1(-751f, -1170f, vec2<bool>(true, false), vec4<u32>(0u, 0u, 2265u, 8578u), -316f)), vec2<f32>(-749f, 718f)), Struct_3(37972i, vec2<u32>(0u, 76092u), vec4<u32>(103726u, 27215u, 1u, 0u), Struct_2(Struct_1(483f, 524f, vec2<bool>(false, false), vec4<u32>(0u, 62677u, 4294967295u, 1u), -469f)), vec2<f32>(996f, 654f)), Struct_3(-1i, vec2<u32>(0u, 22914u), vec4<u32>(4294967295u, 28650u, 48791u, 1u), Struct_2(Struct_1(620f, -315f, vec2<bool>(true, false), vec4<u32>(3754u, 4294967295u, 0u, 37298u), 451f)), vec2<f32>(-822f, 132f)), Struct_3(1079i, vec2<u32>(28226u, 39872u), vec4<u32>(1u, 19892u, 24627u, 0u), Struct_2(Struct_1(2383f, 928f, vec2<bool>(true, true), vec4<u32>(54u, 43783u, 1u, 19119u), 184f)), vec2<f32>(-156f, -1000f)), Struct_3(1572i, vec2<u32>(4294967295u, 1u), vec4<u32>(1u, 25107u, 0u, 53847u), Struct_2(Struct_1(1093f, -277f, vec2<bool>(true, true), vec4<u32>(68214u, 5092u, 1u, 1u), -712f)), vec2<f32>(-477f, 654f)), Struct_3(6498i, vec2<u32>(75298u, 3684u), vec4<u32>(110055u, 0u, 23808u, 1u), Struct_2(Struct_1(494f, -937f, vec2<bool>(true, false), vec4<u32>(4294967295u, 29105u, 0u, 88988u), -376f)), vec2<f32>(2302f, -1715f)), Struct_3(1i, vec2<u32>(17737u, 1u), vec4<u32>(0u, 27999u, 27178u, 0u), Struct_2(Struct_1(585f, -951f, vec2<bool>(true, false), vec4<u32>(4294967295u, 7712u, 1u, 4294967295u), -381f)), vec2<f32>(1000f, 189f)));

var<private> global1: vec3<i32>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: i32) -> f32 {
    global0 = array<Struct_3, 32>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1993f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-803f * 2251f) + 491f) + 3041f))), select(select(vec2<bool>(all(vec3<bool>(true, false, true)), 2147483647i == arg_1), vec2<bool>(true, true), true), vec2<bool>(false, true), !vec2<bool>(any(vec2<bool>(false, true)), all(vec2<bool>(true, false)))), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(~81353u, _wgslsmith_mod_u32(4294967295u, 36932u), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(13203u, 12029u), vec2<u32>(4294967295u, 1u))), firstTrailingBit(~vec4<u32>(0u, 1u, 14112u, 32532u)), vec4<u32>(0u, 1u, 1u, 0u)), vec4<u32>(firstLeadingBit(countOneBits(36448u)), 32997u, 121948u, ~7815u & _wgslsmith_dot_vec4_u32(vec4<u32>(64749u, 4936u, 78489u, 0u), vec4<u32>(1u, 1u, 4294967295u, 9539u)))), 207f);
    var var_1 = Struct_4(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.e), 728f) * _wgslsmith_f_op_f32(f32(-1f) * -1966f)), !(0u >= (var_0.d.x | 3628u)))), select(select(!vec4<bool>(true, var_0.c.x, false, var_0.c.x), select(vec4<bool>(true, true, false, var_0.c.x), select(vec4<bool>(var_0.c.x, true, var_0.c.x, var_0.c.x), vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x), var_0.c.x), vec4<bool>(var_0.c.x, true, var_0.c.x, true)), true), !select(select(vec4<bool>(var_0.c.x, true, false, false), vec4<bool>(false, var_0.c.x, var_0.c.x, true), vec4<bool>(var_0.c.x, true, true, var_0.c.x)), select(vec4<bool>(true, var_0.c.x, var_0.c.x, false), vec4<bool>(var_0.c.x, var_0.c.x, true, true), vec4<bool>(var_0.c.x, false, false, true)), !vec4<bool>(var_0.c.x, var_0.c.x, false, var_0.c.x)), all(select(!vec3<bool>(false, var_0.c.x, var_0.c.x), !vec3<bool>(var_0.c.x, true, var_0.c.x), any(vec3<bool>(var_0.c.x, var_0.c.x, false))))), _wgslsmith_add_vec3_i32(arg_0, vec3<i32>(~abs(-2147483647i), -arg_1 & (arg_0.x | arg_1), u_input.a)), ~abs(~var_0.d.x & (var_0.d.x & var_0.d.x)));
    let var_2 = Struct_4(-1324f, select(select(var_1.b, !(!vec4<bool>(var_1.b.x, false, false, false)), select(!var_0.c.x, false, var_0.c.x)), select(vec4<bool>(true, var_1.b.x, select(false, var_1.b.x, true), all(vec3<bool>(false, false, var_0.c.x))), !(!vec4<bool>(var_1.b.x, var_0.c.x, true, true)), !select(vec4<bool>(var_1.b.x, true, true, false), var_1.b, vec4<bool>(false, var_1.b.x, false, var_0.c.x))), (var_1.b.x | (5905i != var_1.c.x)) && any(select(var_0.c, vec2<bool>(false, var_0.c.x), true))), ~countOneBits(vec3<i32>(-2147483647i >> (0u % 32u), ~13994i, ~arg_1)), firstTrailingBit(4294967295u));
    let var_3 = var_1.a;
    return 1353f;
}

fn func_2(arg_0: Struct_5, arg_1: u32, arg_2: vec2<i32>) -> Struct_5 {
    global1 = -arg_0.a;
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1507f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<i32>(-23471i, -1i, -43781i), u_input.a)))), select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true), true), vec2<bool>(true, true), true), min(firstTrailingBit(vec4<u32>(arg_1, arg_1, arg_1, 4294967295u)) << (vec4<u32>(1u, arg_1, arg_1, 57510u) % vec4<u32>(32u)), abs(vec4<u32>(arg_1, arg_1, 16241u, 4294967295u) << (vec4<u32>(11428u, arg_1, arg_1, 4294967295u) % vec4<u32>(32u)))), -801f));
    let var_1 = Struct_2(Struct_1(672f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(877f - var_0.a.e) - 929f) - _wgslsmith_f_op_f32(step(619f, 1f))), !(!select(var_0.a.c, vec2<bool>(var_0.a.c.x, false), vec2<bool>(true, true))), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_1, select(var_0.a.d.x, 4294967295u, false), 10804u, 0u), firstTrailingBit(max(var_0.a.d, var_0.a.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a) + _wgslsmith_div_f32(var_0.a.a, _wgslsmith_f_op_f32(var_0.a.e * -1043f)))));
    let var_2 = var_1.a.d.x;
    let var_3 = Struct_2(var_1.a);
    return arg_0;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_5) -> vec3<u32> {
    global0 = array<Struct_3, 32>();
    var var_0 = select(select(vec4<bool>(!arg_0.d.a.c.x, any(!vec4<bool>(false, false, arg_0.d.a.c.x, false)), false, arg_0.d.a.c.x), !select(select(vec4<bool>(arg_0.d.a.c.x, false, false, false), vec4<bool>(arg_0.d.a.c.x, false, arg_0.d.a.c.x, arg_0.d.a.c.x), arg_0.d.a.c.x), !vec4<bool>(arg_0.d.a.c.x, arg_0.d.a.c.x, true, arg_0.d.a.c.x), any(vec2<bool>(false, true))), !(!select(vec4<bool>(arg_0.d.a.c.x, true, arg_0.d.a.c.x, arg_0.d.a.c.x), vec4<bool>(arg_0.d.a.c.x, arg_0.d.a.c.x, true, false), vec4<bool>(true, arg_0.d.a.c.x, true, arg_0.d.a.c.x)))), vec4<bool>(arg_0.d.a.c.x, true, arg_0.d.a.c.x, global1.x < (i32(-1i) * -3249i)), !select(select(select(vec4<bool>(arg_0.d.a.c.x, false, arg_0.d.a.c.x, true), vec4<bool>(arg_0.d.a.c.x, false, false, false), vec4<bool>(false, arg_0.d.a.c.x, true, arg_0.d.a.c.x)), select(vec4<bool>(arg_0.d.a.c.x, false, arg_0.d.a.c.x, arg_0.d.a.c.x), vec4<bool>(true, false, arg_0.d.a.c.x, false), false), arg_0.d.a.c.x), vec4<bool>(any(vec2<bool>(false, arg_0.d.a.c.x)), arg_0.d.a.c.x, arg_0.d.a.c.x, any(arg_0.d.a.c)), !select(vec4<bool>(arg_0.d.a.c.x, arg_0.d.a.c.x, arg_0.d.a.c.x, arg_0.d.a.c.x), vec4<bool>(false, true, false, arg_0.d.a.c.x), arg_0.d.a.c.x)));
    let var_1 = arg_0.c.zz;
    var var_2 = select(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(~global1.xx, -vec2<i32>(u_input.a, 0i)), firstLeadingBit(_wgslsmith_mod_i32(global1.x, global1.x)), _wgslsmith_dot_vec2_i32(~global1.yz, arg_1.a.zz)), vec3<i32>(~func_2(Struct_5(arg_1.a), 0u, vec2<i32>(28016i, -1i)).a.x, u_input.a ^ arg_0.a, _wgslsmith_mod_i32(_wgslsmith_sub_i32(1i, -5006i), u_input.a))), arg_1.a, true);
    var var_3 = global1.xy;
    return arg_0.d.a.d.zxz;
}

fn func_5(arg_0: vec3<u32>, arg_1: i32, arg_2: i32, arg_3: Struct_3) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1125f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(702f * _wgslsmith_f_op_f32(-arg_3.d.a.e)))), !arg_3.d.a.c, _wgslsmith_sub_vec4_u32(arg_3.c, _wgslsmith_div_vec4_u32(firstLeadingBit(~vec4<u32>(arg_0.x, 1u, 4294967295u, 4294967295u)), ~select(arg_3.c, vec4<u32>(arg_3.c.x, 1u, arg_0.x, 19875u), vec4<bool>(false, false, arg_3.d.a.c.x, true)))), -1359f);
    let var_1 = -_wgslsmith_div_i32(global1.x, _wgslsmith_dot_vec2_i32(global1.zx, -vec2<i32>(-2147483647i, -2147483647i)));
    var var_2 = Struct_4(-897f, select(!vec4<bool>(!var_0.c.x, arg_3.d.a.c.x, true, !arg_3.d.a.c.x), select(!vec4<bool>(true, arg_3.d.a.c.x, var_0.c.x, arg_3.d.a.c.x), !(!vec4<bool>(true, true, true, arg_3.d.a.c.x)), true), _wgslsmith_mult_u32(abs(8587u), 1u) >= _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 0u, arg_0.x, 17394u), countOneBits(var_0.d))), _wgslsmith_mult_vec3_i32(firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 0i, -1i) ^ vec3<i32>(u_input.a, u_input.a, arg_3.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(global1.x, -20801i, arg_3.a), vec3<i32>(1i, var_1, -3580i), vec3<i32>(global1.x, 0i, arg_2)))), abs(_wgslsmith_mod_vec3_i32(max(vec3<i32>(1i, 0i, -2677i), vec3<i32>(global1.x, 27995i, 1i)), min(vec3<i32>(arg_1, u_input.a, global1.x), vec3<i32>(arg_1, arg_1, arg_3.a))))), ~reverseBits(arg_0.x));
    global0 = array<Struct_3, 32>();
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.d.a.a), _wgslsmith_f_op_f32(-326f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(abs(1017f)))))));
    return 48100u;
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = vec4<u32>(func_5(select(func_4(global0[_wgslsmith_index_u32(1u, 32u)], func_2(Struct_5(vec3<i32>(25992i, 46574i, global1.x)), 24236u, vec2<i32>(arg_0, global1.x))), vec3<u32>(0u, 1u, reverseBits(26831u)), true), global1.x, global1.x, Struct_3(countOneBits(~23970i), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 4409u), vec2<u32>(36936u, 1u)) | _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(99489u, 0u), vec2<u32>(1u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u), Struct_2(Struct_1(823f, 304f, vec2<bool>(false, true), vec4<u32>(18891u, 9878u, 1u, 4294967295u), -1705f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-145f, 212f))))), firstLeadingBit(max(_wgslsmith_dot_vec4_u32(vec4<u32>(17690u, 85175u, 1u, 88734u), vec4<u32>(1u, 1u, 35696u, 83638u)), ~(~4294967295u))), 1u, ~0u);
    let var_1 = Struct_4(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(298f)))))))), vec4<bool>(true, all(vec2<bool>(true, arg_0 != global1.x)), true, any(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)))), -firstLeadingBit(max(vec3<i32>(1i, arg_0, u_input.a), vec3<i32>(-32762i, 37728i, 3415i) | vec3<i32>(-2147483647i, -23903i, arg_0))), reverseBits(~_wgslsmith_dot_vec2_u32(reverseBits(var_0.wx), _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.x, var_0.x), vec2<u32>(var_0.x, 1u)))));
    global0 = array<Struct_3, 32>();
    let var_2 = select(!select(var_1.b.wxx, vec3<bool>(false, var_1.d >= 1u, true), !var_1.b.x), select(var_1.b.zxx, vec3<bool>(select(true, false, var_1.a == var_1.a), var_1.b.x, !var_1.b.x), true), select(vec3<bool>(any(vec4<bool>(false, var_1.b.x, true, var_1.b.x)), true, false), !var_1.b.yyy, select(select(!vec3<bool>(var_1.b.x, var_1.b.x, false), select(vec3<bool>(var_1.b.x, false, false), vec3<bool>(var_1.b.x, var_1.b.x, var_1.b.x), var_1.b.x), all(vec3<bool>(var_1.b.x, var_1.b.x, var_1.b.x))), vec3<bool>(all(var_1.b.xw), var_1.b.x, select(true, false, false)), !select(vec3<bool>(true, var_1.b.x, var_1.b.x), vec3<bool>(var_1.b.x, true, var_1.b.x), vec3<bool>(true, var_1.b.x, var_1.b.x)))));
    var var_3 = var_2.x;
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-733f, var_1.a)))), 1806f, var_1.b.xz, vec4<u32>(1u, _wgslsmith_clamp_u32(select(14723u, 93539u, false), ~1u, 4294967295u), 60264u >> (var_0.x % 32u), 28820u), var_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !all(select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), false))));
    var var_1 = func_1(max(global1.x, ~u_input.a >> (~26311u % 32u)) ^ (_wgslsmith_mult_i32(u_input.a, global1.x) << (~1u % 32u)));
    var var_2 = var_1.a.c.x;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.a.b, 1000f, -880f, var_1.a.e))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-483f, var_1.a.e, var_1.a.e, -276f) * vec4<f32>(-1458f, var_1.a.a, var_1.a.a, -197f))))))) - vec4<f32>(-982f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.e * 381f)), 1838f, _wgslsmith_f_op_f32(-739f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b)))));
    var_0 = var_1.a.c.x;
    let var_4 = var_1.a.d;
    let var_5 = firstLeadingBit(vec3<u32>(0u, 4294967295u, ~4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(-1994f, var_3.zy, countOneBits(select(abs(~vec4<i32>(-5247i, global1.x, global1.x, 7389i)), vec4<i32>(~(-1i), -2147483647i, global1.x, _wgslsmith_mult_i32(global1.x, 18002i)), select(vec4<bool>(true, true, var_1.a.c.x, var_1.a.c.x), select(vec4<bool>(var_1.a.c.x, false, false, var_1.a.c.x), vec4<bool>(false, false, true, true), var_1.a.c.x), !var_1.a.c.x))), vec2<u32>(var_4.x, var_5.x), 28462u);
}

