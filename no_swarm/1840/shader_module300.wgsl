struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: f32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 11> = array<Struct_4, 11>(Struct_4(Struct_3(Struct_1(vec4<u32>(10857u, 4294967295u, 0u, 12103u), vec2<bool>(false, false), -1259f, vec2<i32>(12272i, i32(-2147483648))), -298f, Struct_2(false, Struct_1(vec4<u32>(59907u, 6386u, 4294967295u, 1291u), vec2<bool>(true, true), 1687f, vec2<i32>(26748i, 2147483647i))))), Struct_4(Struct_3(Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, 0u), vec2<bool>(false, false), 506f, vec2<i32>(1i, 2147483647i)), -1332f, Struct_2(true, Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 60527u), vec2<bool>(false, true), 1178f, vec2<i32>(29459i, -7774i))))), Struct_4(Struct_3(Struct_1(vec4<u32>(4294967295u, 82168u, 0u, 0u), vec2<bool>(true, false), -541f, vec2<i32>(-1i, -1i)), 355f, Struct_2(false, Struct_1(vec4<u32>(0u, 29969u, 48028u, 1u), vec2<bool>(false, true), -188f, vec2<i32>(0i, i32(-2147483648)))))), Struct_4(Struct_3(Struct_1(vec4<u32>(4294967295u, 43675u, 8279u, 17396u), vec2<bool>(false, false), -543f, vec2<i32>(0i, 26435i)), 523f, Struct_2(false, Struct_1(vec4<u32>(109850u, 1u, 1u, 62260u), vec2<bool>(true, true), 717f, vec2<i32>(-5762i, 1i))))), Struct_4(Struct_3(Struct_1(vec4<u32>(35190u, 98900u, 1u, 75178u), vec2<bool>(false, true), -595f, vec2<i32>(-1i, -37538i)), -626f, Struct_2(true, Struct_1(vec4<u32>(4294967295u, 14407u, 34648u, 1u), vec2<bool>(false, false), -782f, vec2<i32>(-1i, -7i))))), Struct_4(Struct_3(Struct_1(vec4<u32>(0u, 14813u, 0u, 4294967295u), vec2<bool>(false, true), 182f, vec2<i32>(-1i, -1i)), 1029f, Struct_2(false, Struct_1(vec4<u32>(29519u, 4294967295u, 20559u, 0u), vec2<bool>(true, true), -2594f, vec2<i32>(12270i, i32(-2147483648)))))), Struct_4(Struct_3(Struct_1(vec4<u32>(21169u, 1u, 4294967295u, 13557u), vec2<bool>(true, false), 1582f, vec2<i32>(2147483647i, 44141i)), 1042f, Struct_2(true, Struct_1(vec4<u32>(0u, 23615u, 1u, 6916u), vec2<bool>(true, false), 1157f, vec2<i32>(-3959i, -24024i))))), Struct_4(Struct_3(Struct_1(vec4<u32>(0u, 1u, 1u, 61000u), vec2<bool>(true, false), 296f, vec2<i32>(9104i, 1i)), 421f, Struct_2(true, Struct_1(vec4<u32>(77329u, 0u, 0u, 1u), vec2<bool>(true, true), -235f, vec2<i32>(-76647i, 1i))))), Struct_4(Struct_3(Struct_1(vec4<u32>(35789u, 0u, 29349u, 5135u), vec2<bool>(false, true), 869f, vec2<i32>(-46587i, 2147483647i)), -996f, Struct_2(false, Struct_1(vec4<u32>(1u, 30777u, 4294967295u, 28786u), vec2<bool>(false, false), -870f, vec2<i32>(1i, -1i))))), Struct_4(Struct_3(Struct_1(vec4<u32>(45088u, 70990u, 99087u, 0u), vec2<bool>(false, false), -335f, vec2<i32>(-13485i, -12948i)), -1724f, Struct_2(false, Struct_1(vec4<u32>(8132u, 129813u, 0u, 43071u), vec2<bool>(false, false), -909f, vec2<i32>(6526i, i32(-2147483648)))))), Struct_4(Struct_3(Struct_1(vec4<u32>(4294967295u, 4294967295u, 1u, 6054u), vec2<bool>(false, false), -1759f, vec2<i32>(1i, -21739i)), -1255f, Struct_2(false, Struct_1(vec4<u32>(4294967295u, 4294967295u, 72751u, 20611u), vec2<bool>(true, false), 225f, vec2<i32>(-1743i, 9378i))))));

var<private> global1: bool = false;

var<private> global2: bool;

var<private> global3: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(true, Struct_1(vec4<u32>(47904u, 1u, 5754u, 9835u), vec2<bool>(true, true), 1123f, vec2<i32>(-16169i, -29629i))), Struct_2(false, Struct_1(vec4<u32>(0u, 40682u, 97532u, 80362u), vec2<bool>(false, true), 571f, vec2<i32>(180i, i32(-2147483648)))), Struct_2(false, Struct_1(vec4<u32>(0u, 4294967295u, 11723u, 1u), vec2<bool>(true, false), 1193f, vec2<i32>(2147483647i, -25592i))), Struct_2(true, Struct_1(vec4<u32>(0u, 0u, 39965u, 100870u), vec2<bool>(true, true), -631f, vec2<i32>(1i, 39706i))), Struct_2(true, Struct_1(vec4<u32>(0u, 4294967295u, 62904u, 27324u), vec2<bool>(false, false), -1000f, vec2<i32>(33484i, 66261i))), Struct_2(false, Struct_1(vec4<u32>(10615u, 34778u, 0u, 18593u), vec2<bool>(true, false), 1000f, vec2<i32>(2147483647i, 2147483647i))), Struct_2(false, Struct_1(vec4<u32>(49239u, 1091u, 20889u, 33677u), vec2<bool>(false, false), -1443f, vec2<i32>(1i, -52353i))), Struct_2(false, Struct_1(vec4<u32>(104783u, 134483u, 0u, 1u), vec2<bool>(false, false), 1015f, vec2<i32>(2191i, i32(-2147483648)))), Struct_2(true, Struct_1(vec4<u32>(0u, 24751u, 0u, 67606u), vec2<bool>(true, false), -885f, vec2<i32>(19993i, 0i))), Struct_2(true, Struct_1(vec4<u32>(1u, 0u, 33841u, 63670u), vec2<bool>(true, true), 809f, vec2<i32>(36077i, 1i))), Struct_2(false, Struct_1(vec4<u32>(4294967295u, 59435u, 57409u, 22330u), vec2<bool>(false, true), 409f, vec2<i32>(28297i, -1582i))), Struct_2(false, Struct_1(vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u), vec2<bool>(false, true), -562f, vec2<i32>(13331i, 34312i))), Struct_2(false, Struct_1(vec4<u32>(1u, 1417u, 4294967295u, 40913u), vec2<bool>(false, true), 1960f, vec2<i32>(0i, 1i))), Struct_2(false, Struct_1(vec4<u32>(4294967295u, 64349u, 29628u, 27799u), vec2<bool>(false, false), 1235f, vec2<i32>(29397i, 1i))), Struct_2(true, Struct_1(vec4<u32>(0u, 0u, 0u, 1u), vec2<bool>(true, true), 834f, vec2<i32>(-43425i, 29796i))), Struct_2(true, Struct_1(vec4<u32>(4294967295u, 1u, 1u, 4294967295u), vec2<bool>(true, false), 589f, vec2<i32>(1i, i32(-2147483648)))), Struct_2(true, Struct_1(vec4<u32>(4294967295u, 70378u, 62105u, 72994u), vec2<bool>(false, false), -162f, vec2<i32>(15399i, 2147483647i))), Struct_2(false, Struct_1(vec4<u32>(0u, 62483u, 1u, 36052u), vec2<bool>(true, false), -631f, vec2<i32>(i32(-2147483648), 2147483647i))), Struct_2(false, Struct_1(vec4<u32>(37686u, 1u, 51672u, 4294967295u), vec2<bool>(true, true), -1000f, vec2<i32>(-43846i, 51752i))), Struct_2(true, Struct_1(vec4<u32>(1u, 35364u, 44452u, 1u), vec2<bool>(true, false), 1053f, vec2<i32>(-6824i, 30646i))), Struct_2(true, Struct_1(vec4<u32>(0u, 31689u, 0u, 46978u), vec2<bool>(true, true), -1189f, vec2<i32>(10245i, -3479i))), Struct_2(true, Struct_1(vec4<u32>(32866u, 0u, 1u, 9316u), vec2<bool>(false, true), -1000f, vec2<i32>(-14735i, 51686i))), Struct_2(false, Struct_1(vec4<u32>(1u, 1u, 4294967295u, 23161u), vec2<bool>(false, false), 717f, vec2<i32>(2147483647i, 3002i))), Struct_2(true, Struct_1(vec4<u32>(0u, 4294967295u, 4294967295u, 0u), vec2<bool>(false, true), -328f, vec2<i32>(i32(-2147483648), 0i))), Struct_2(false, Struct_1(vec4<u32>(0u, 18477u, 0u, 26153u), vec2<bool>(true, true), 999f, vec2<i32>(-1i, -7995i))), Struct_2(true, Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u), vec2<bool>(true, false), 432f, vec2<i32>(-1i, -79458i))), Struct_2(true, Struct_1(vec4<u32>(34384u, 1u, 4294967295u, 46109u), vec2<bool>(false, false), -981f, vec2<i32>(2147483647i, -22003i))));

var<private> global4: array<vec2<i32>, 30>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: vec4<u32>, arg_3: vec4<bool>) -> u32 {
    var var_0 = -42054i;
    global0 = array<Struct_4, 11>();
    global3 = array<Struct_2, 27>();
    global3 = array<Struct_2, 27>();
    let var_1 = arg_2.zyw;
    return abs(var_1.x);
}

fn func_3(arg_0: vec3<bool>, arg_1: i32, arg_2: vec3<f32>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(680f)))), 2159f, arg_2.x, _wgslsmith_f_op_f32(f32(-1f) * -1481f))));
    global3 = array<Struct_2, 27>();
    let var_1 = global3[_wgslsmith_index_u32((~(~min(1u, 1u)) ^ ~_wgslsmith_add_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(46249u, 46341u), vec2<u32>(17074u, 19525u)))) & _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(12457u, 4294967295u, 0u, 30128u), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 29241u, 0u, 35197u), vec4<u32>(4294967295u, 4294967295u, 59634u, 80651u), vec4<u32>(72456u, 14470u, 1u, 42543u)) >> (max(vec4<u32>(0u, 24228u, 34916u, 4294967295u), vec4<u32>(0u, 113187u, 4294967295u, 0u)) % vec4<u32>(32u))), vec4<u32>(1u, 1u, 1u, 1u)), 27u)];
    var var_2 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-297f, arg_2.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(arg_2.x)), _wgslsmith_div_f32(-889f, 1494f))))), 1f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1270f, 1379f, 979f))))) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -289f), _wgslsmith_div_f32(1000f, 1086f)))))));
    global3 = array<Struct_2, 27>();
    return ~_wgslsmith_mult_vec2_u32(var_1.b.a.zx, vec2<u32>(~(~14101u), 35230u));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec4<i32>) -> f32 {
    var var_0 = arg_1;
    let var_1 = global0[_wgslsmith_index_u32(max(firstTrailingBit(~firstTrailingBit(10980u)), _wgslsmith_dot_vec2_u32(var_0.a.yz ^ var_0.a.xy, vec2<u32>(abs(11564u), arg_1.a.x))), 11u)];
    let var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.c.b.a.x, 76905u, 4294967295u, var_1.a.a.a.x), var_1.a.c.b.a), ~0u, func_1(~vec4<i32>(arg_1.d.x, 0i, var_1.a.a.d.x, arg_1.d.x), ~vec4<i32>(var_0.d.x, u_input.a, -7709i, -36422i), vec4<u32>(34001u, var_0.a.x, 31671u, 6603u), !vec4<bool>(var_1.a.c.a, var_1.a.c.a, var_0.b.x, arg_1.b.x))), vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a.x, arg_0.x), vec2<u32>(1096u, arg_1.a.x)), var_1.a.c.b.a.x, ~_wgslsmith_mult_u32(4294967295u, arg_1.a.x), _wgslsmith_dot_vec3_u32(var_0.a.xxx >> (var_1.a.c.b.a.zyx % vec3<u32>(32u)), var_0.a.zxz))), 11u)];
    global4 = array<vec2<i32>, 30>();
    let var_3 = !select(!var_1.a.a.b, vec2<bool>(var_0.b.x && var_1.a.a.b.x, true), vec2<bool>(!var_1.a.c.a, var_2.a.a.d.x < -1i));
    return _wgslsmith_div_f32(1000f, 479f);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(abs(~vec4<u32>(abs(4294967295u), ~79337u, ~6795u, 8980u)), vec2<bool>(true, true), _wgslsmith_f_op_f32(func_4(func_3(vec3<bool>(true, all(vec2<bool>(false, true)), true), u_input.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(575f, -187f, -1000f), vec3<f32>(711f, 147f, -859f), vec3<bool>(false, true, false))))), Struct_1(select(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 7847u, 335u, 1u), vec4<u32>(1u, 14591u, 10461u, 6787u)), min(vec4<u32>(1u, 1u, 17850u, 2767u), vec4<u32>(6762u, 29124u, 18491u, 56849u)), vec4<bool>(false, true, false, true)), select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(false, false), any(vec4<bool>(false, false, true, true))), _wgslsmith_f_op_f32(f32(-1f) * -1334f), vec2<i32>(-56429i, 638i)), vec4<i32>(u_input.a, -21880i, ~(~u_input.b), u_input.b | ~(-2147483647i)))), -countOneBits(vec2<i32>(_wgslsmith_div_i32(u_input.b, 8637i), _wgslsmith_dot_vec2_i32(global4[_wgslsmith_index_u32(30018u, 30u)], global4[_wgslsmith_index_u32(4294967295u, 30u)]))));
    global4 = array<vec2<i32>, 30>();
    global0 = array<Struct_4, 11>();
    let var_1 = 331f;
    global0 = array<Struct_4, 11>();
    return Struct_2(var_0.b.x, Struct_1(~var_0.a & vec4<u32>(var_0.a.x, _wgslsmith_div_u32(10331u, var_0.a.x), 38884u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 15645u, var_0.a.x, var_0.a.x), vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, 4941u))), var_0.b, _wgslsmith_f_op_f32(f32(-1f) * -358f), vec2<i32>(2147483647i, u_input.a)));
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: Struct_4) -> Struct_1 {
    global2 = arg_1;
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.b.c), _wgslsmith_f_op_f32(ceil(133f)))));
    var var_1 = arg_2.b.b.x;
    global4 = array<vec2<i32>, 30>();
    var_0 = _wgslsmith_f_op_f32(-arg_0.b.c);
    return func_2().b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(~(~30005u), _wgslsmith_mod_u32(func_1(vec4<i32>(u_input.a, 42767i, u_input.a, 11392i), vec4<i32>(1i, u_input.b, -6946i, u_input.b), vec4<u32>(4294967295u, 0u, 4792u, 0u), vec4<bool>(false, false, true, false)), ~24911u)), ~(~abs(vec2<u32>(1u, 4294967295u)))), ~(~1u), 9530u);
    var var_1 = func_5(global3[_wgslsmith_index_u32(var_0.x, 27u)], !any(select(vec2<bool>(false, true), vec2<bool>(true, true), all(vec4<bool>(false, true, false, true)))), func_2(), Struct_4(Struct_3(Struct_1(~vec4<u32>(0u, 1u, var_0.x, var_0.x), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), _wgslsmith_f_op_f32(f32(-1f) * -278f), _wgslsmith_clamp_vec2_i32(global4[_wgslsmith_index_u32(var_0.x, 30u)], global4[_wgslsmith_index_u32(1u, 30u)], vec2<i32>(u_input.a, u_input.a))), -346f, global3[_wgslsmith_index_u32(var_0.x, 27u)])));
    let var_2 = !func_2().b.b;
    var_0 = var_1.a;
    global4 = array<vec2<i32>, 30>();
    let var_3 = Struct_3(func_5(global3[_wgslsmith_index_u32(firstTrailingBit(var_1.a.x) << (var_1.a.x % 32u), 27u)], var_1.b.x, func_2(), global0[_wgslsmith_index_u32(~(~reverseBits(var_0.x)), 11u)]), var_1.c, global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(var_1.a.wz, vec2<u32>(abs(var_1.a.x), min(1u, var_1.a.x))), 27u)]);
    global0 = array<Struct_4, 11>();
    var var_4 = !select(vec3<bool>(any(vec3<bool>(var_1.b.x, false, var_3.c.a)), var_3.a.b.x, any(vec4<bool>(true, var_2.x, var_1.b.x, false))), vec3<bool>(true, func_2().a, func_5(Struct_2(var_2.x, Struct_1(vec4<u32>(var_0.x, var_3.a.a.x, var_1.a.x, var_0.x), var_2, 1096f, vec2<i32>(1i, var_3.a.d.x))), var_2.x & true, var_3.c, global0[_wgslsmith_index_u32(~0u, 11u)]).b.x), var_3.c.a);
    let x = u_input.a;
    s_output = StorageBuffer(select((var_1.d << (vec2<u32>(var_3.a.a.x, var_3.a.a.x) % vec2<u32>(32u))) | (vec2<i32>(u_input.a, var_1.d.x) ^ (var_3.a.d & global4[_wgslsmith_index_u32(4294967295u, 30u)])), _wgslsmith_sub_vec2_i32(firstLeadingBit(-var_1.d), vec2<i32>(-48650i, firstLeadingBit(-2147483647i))), !select(true, -1i != var_3.c.b.d.x, !var_4.x)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_3.c.b.c), 501f, !var_1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_3.b, -631f), _wgslsmith_f_op_f32(var_1.c - var_1.c)))), 8983i, -1000f);
}

