struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(Struct_2(vec4<u32>(4294967295u, 1u, 0u, 107644u), vec2<f32>(-907f, -526f)), vec2<u32>(24887u, 1u)), Struct_3(Struct_2(vec4<u32>(0u, 84847u, 1u, 1u), vec2<f32>(1337f, -912f)), vec2<u32>(59972u, 1u)), Struct_3(Struct_2(vec4<u32>(0u, 1u, 19941u, 1u), vec2<f32>(-528f, 536f)), vec2<u32>(32041u, 181u)), Struct_3(Struct_2(vec4<u32>(30947u, 21387u, 4294967295u, 1u), vec2<f32>(-1542f, -911f)), vec2<u32>(17828u, 30388u)), Struct_3(Struct_2(vec4<u32>(22739u, 0u, 22576u, 87408u), vec2<f32>(-1000f, 678f)), vec2<u32>(1u, 0u)), Struct_3(Struct_2(vec4<u32>(4294967295u, 42360u, 5541u, 0u), vec2<f32>(-1649f, -520f)), vec2<u32>(1u, 12149u)), Struct_3(Struct_2(vec4<u32>(1u, 30845u, 18988u, 112168u), vec2<f32>(-1293f, -894f)), vec2<u32>(40627u, 13584u)), Struct_3(Struct_2(vec4<u32>(0u, 0u, 63046u, 4294967295u), vec2<f32>(-315f, 1755f)), vec2<u32>(1u, 0u)), Struct_3(Struct_2(vec4<u32>(26088u, 42566u, 87001u, 239u), vec2<f32>(1533f, -1319f)), vec2<u32>(4294967295u, 4294967295u)), Struct_3(Struct_2(vec4<u32>(4294967295u, 1u, 0u, 44135u), vec2<f32>(-226f, -771f)), vec2<u32>(22523u, 166u)), Struct_3(Struct_2(vec4<u32>(126809u, 1u, 1u, 4294967295u), vec2<f32>(-831f, 1012f)), vec2<u32>(4294967295u, 4738u)), Struct_3(Struct_2(vec4<u32>(1u, 22761u, 0u, 33944u), vec2<f32>(-1558f, -515f)), vec2<u32>(1u, 0u)), Struct_3(Struct_2(vec4<u32>(0u, 4294967295u, 4294967295u, 35734u), vec2<f32>(-408f, 1000f)), vec2<u32>(6440u, 4294967295u)), Struct_3(Struct_2(vec4<u32>(9641u, 0u, 1985u, 9005u), vec2<f32>(-1739f, -2610f)), vec2<u32>(6696u, 103557u)), Struct_3(Struct_2(vec4<u32>(45219u, 65386u, 1u, 4294967295u), vec2<f32>(1247f, 1153f)), vec2<u32>(49866u, 40343u)), Struct_3(Struct_2(vec4<u32>(4294967295u, 1u, 1u, 4294967295u), vec2<f32>(-1469f, -1709f)), vec2<u32>(0u, 61607u)), Struct_3(Struct_2(vec4<u32>(4294967295u, 31744u, 0u, 70630u), vec2<f32>(-372f, 1000f)), vec2<u32>(17943u, 0u)), Struct_3(Struct_2(vec4<u32>(30052u, 677u, 0u, 0u), vec2<f32>(-262f, -978f)), vec2<u32>(0u, 0u)), Struct_3(Struct_2(vec4<u32>(4294967295u, 15304u, 1u, 1u), vec2<f32>(-180f, 1000f)), vec2<u32>(21528u, 28191u)), Struct_3(Struct_2(vec4<u32>(4294967295u, 2405u, 76884u, 0u), vec2<f32>(108f, 279f)), vec2<u32>(58447u, 1u)), Struct_3(Struct_2(vec4<u32>(4294967295u, 27398u, 0u, 31157u), vec2<f32>(-515f, 246f)), vec2<u32>(1u, 4294967295u)), Struct_3(Struct_2(vec4<u32>(1u, 4294967295u, 0u, 0u), vec2<f32>(-650f, 1642f)), vec2<u32>(49227u, 39165u)), Struct_3(Struct_2(vec4<u32>(1u, 1u, 62823u, 1u), vec2<f32>(354f, 819f)), vec2<u32>(1u, 4294967295u)), Struct_3(Struct_2(vec4<u32>(0u, 4294967295u, 2731u, 48353u), vec2<f32>(-847f, -903f)), vec2<u32>(0u, 0u)), Struct_3(Struct_2(vec4<u32>(62360u, 1u, 0u, 54780u), vec2<f32>(951f, 462f)), vec2<u32>(45682u, 21354u)), Struct_3(Struct_2(vec4<u32>(1u, 78212u, 2136u, 18636u), vec2<f32>(1245f, -753f)), vec2<u32>(0u, 33819u)), Struct_3(Struct_2(vec4<u32>(1u, 1u, 1u, 1u), vec2<f32>(-1496f, 1560f)), vec2<u32>(1u, 1u)), Struct_3(Struct_2(vec4<u32>(13835u, 21666u, 0u, 1u), vec2<f32>(-992f, -175f)), vec2<u32>(1u, 4294967295u)), Struct_3(Struct_2(vec4<u32>(4294967295u, 4294967295u, 42665u, 87460u), vec2<f32>(-723f, -625f)), vec2<u32>(0u, 64114u)), Struct_3(Struct_2(vec4<u32>(0u, 31509u, 47722u, 0u), vec2<f32>(-1101f, -1762f)), vec2<u32>(8624u, 0u)), Struct_3(Struct_2(vec4<u32>(9059u, 2423u, 25745u, 4294967295u), vec2<f32>(654f, 1388f)), vec2<u32>(1u, 4294967295u)), Struct_3(Struct_2(vec4<u32>(0u, 75329u, 46441u, 1u), vec2<f32>(-1398f, -550f)), vec2<u32>(12307u, 37416u)));

var<private> global1: vec3<f32> = vec3<f32>(-411f, 1718f, 176f);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, _wgslsmith_f_op_f32(693f * _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1237f)), _wgslsmith_f_op_f32(f32(-1f) * -1395f)))));
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 753f, global1.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, -245f)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 1364f, 971f) * vec3<f32>(1267f, 1077f, global1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 1000f, var_0.x)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 297f))))));
    let var_1 = ~(~vec4<u32>(64822u, _wgslsmith_add_u32(u_input.c, 68157u), 1u, u_input.c) | (~vec4<u32>(20500u, u_input.c, 41338u, 45912u) & _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, 1u), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c)), select(vec4<u32>(0u, 16606u, 4294967295u, 36740u), vec4<u32>(69650u, u_input.c, 1u, 4294967295u), vec4<bool>(true, true, true, false)), vec4<u32>(u_input.c, u_input.c, 1u, u_input.c))));
    var var_2 = true;
    return global1.x;
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = 1u;
    global0 = array<Struct_3, 32>();
    var var_1 = arg_0;
    global0 = array<Struct_3, 32>();
    global1 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3()))), -185f)));
    return Struct_2(vec4<u32>(_wgslsmith_sub_u32(abs(u_input.c), ~17300u) ^ ~65960u, u_input.c | 1u, u_input.c, reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.c), vec2<u32>(u_input.c, 38766u))) >> (_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.c, u_input.c), vec3<u32>(u_input.c, 4294967295u, u_input.c)), ~vec3<u32>(u_input.c, u_input.c, 4294967295u)) % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(global1.zz, global1.zy), global1.yx)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.yx) - _wgslsmith_f_op_vec2_f32(-global1.zz))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec4<i32>) -> Struct_2 {
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-585f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x + arg_0.b.x) * arg_0.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-377f * global1.x), -1244f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2974f, arg_0.b.x, arg_0.b.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-433f, global1.x, -121f))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-537f * arg_0.b.x) - 528f), _wgslsmith_f_op_f32(global1.x * arg_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -652f))));
    var var_0 = firstTrailingBit(-55382i);
    var var_1 = Struct_1(arg_1.x, arg_0.a, -486f);
    let var_2 = abs(-arg_2.x);
    var_0 = ~var_2 ^ select(abs(u_input.a), var_1.a, true);
    return Struct_2(vec4<u32>(_wgslsmith_mod_u32(reverseBits(4294967295u), var_1.b.x), u_input.c, u_input.c, ((0u | u_input.c) | u_input.c) ^ 1u), _wgslsmith_f_op_vec2_f32(-global1.zx));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: u32) -> f32 {
    global0 = array<Struct_3, 32>();
    var var_0 = arg_0.a.b.x;
    let var_1 = arg_0.b;
    global0 = array<Struct_3, 32>();
    let var_2 = Struct_1(~(arg_1.x << (12860u % 32u)), firstTrailingBit(arg_0.a.a), global1.x);
    return global1.x;
}

fn func_1(arg_0: vec4<bool>) -> bool {
    global0 = array<Struct_3, 32>();
    var var_0 = arg_0.x;
    var var_1 = true;
    var var_2 = ~18642u;
    global1 = vec3<f32>(global1.x, _wgslsmith_f_op_f32(func_5(Struct_3(func_4(func_2(u_input.a), vec4<i32>(-1i, u_input.b, -2147483647i, u_input.b), max(vec4<i32>(-8840i, 2147483647i, 2147483647i, u_input.a), vec4<i32>(7869i, 33580i, -1i, -1i))), _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.c), vec2<u32>(0u, 1u)), ~vec2<u32>(12694u, 0u), ~vec2<u32>(u_input.c, 4294967295u))), ~(-vec4<i32>(-43611i, 0i, u_input.a, u_input.b)) | _wgslsmith_sub_vec4_i32(select(vec4<i32>(u_input.b, 2147483647i, -24282i, u_input.b), vec4<i32>(-1i, u_input.b, 2147483647i, u_input.a), arg_0.x), firstTrailingBit(vec4<i32>(-49190i, -2147483647i, 2147483647i, u_input.a))), _wgslsmith_add_u32(1u, _wgslsmith_div_u32(~u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 24762u, u_input.c, u_input.c), vec4<u32>(u_input.c, 15447u, u_input.c, 4294967295u)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)));
    return false;
}

fn func_6(arg_0: bool, arg_1: vec2<u32>, arg_2: vec4<bool>, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(0u, 32u)];
    let var_1 = Struct_2(vec4<u32>(1u, ~0u, countOneBits(4294967295u), 1u) << (var_0.a.a % vec4<u32>(32u)), func_2(u_input.a).b);
    var var_2 = global0[_wgslsmith_index_u32(arg_3.x, 32u)];
    let var_3 = Struct_1(~(-2147483647i), ~_wgslsmith_div_vec4_u32(vec4<u32>(~var_0.a.a.x, min(var_2.a.a.x, var_2.a.a.x), func_4(var_1, vec4<i32>(-58623i, 32202i, 41693i, u_input.b), vec4<i32>(-37720i, -34033i, 38292i, 0i)).a.x, u_input.c), vec4<u32>(14576u, _wgslsmith_add_u32(arg_1.x, 0u), firstTrailingBit(arg_1.x), 1u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(503f)))));
    var var_4 = var_3;
    return var_3;
}

fn func_7(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<i32>) -> vec4<bool> {
    let var_0 = func_6(!func_1(vec4<bool>(false, true, true, true)), _wgslsmith_div_vec2_u32(vec2<u32>(~(arg_0.b.x << (u_input.c % 32u)), ~_wgslsmith_clamp_u32(70241u, 56018u, 1u)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, 1u), vec2<u32>(u_input.c, 1u))), vec4<bool>(true, true, true, true), ~vec3<u32>(~_wgslsmith_add_u32(arg_0.b.x, u_input.c), 24488u, 4294967295u));
    var var_1 = min(-arg_2.xz, ~arg_2.yw);
    global0 = array<Struct_3, 32>();
    let var_2 = arg_0;
    global0 = array<Struct_3, 32>();
    return vec4<bool>(true, (firstTrailingBit(arg_0.a) & -10426i) != countOneBits(2147483647i & -arg_0.a), true, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(true, reverseBits(_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, 81065u), vec2<u32>(25802u, u_input.c), vec2<u32>(54265u, u_input.c)), vec2<u32>(0u, 0u))), select(vec4<bool>(true, u_input.c <= u_input.c, true, u_input.a <= 1i), vec4<bool>(global1.x >= global1.x, true, 1576u != u_input.c, true), !func_1(vec4<bool>(true, false, false, true))), vec3<u32>(u_input.c, func_2(1i).a.x, 26186u)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1176f, global1.x, global1.x, global1.x) * vec4<f32>(global1.x, global1.x, global1.x, 1500f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(297f, 1279f, global1.x, -1115f))))), ~(~(vec4<i32>(u_input.b, -1i, u_input.a, u_input.b) ^ vec4<i32>(u_input.a, u_input.b, u_input.b, -21703i)) ^ (~vec4<i32>(u_input.a, u_input.a, u_input.b, 2147483647i) ^ abs(vec4<i32>(-26405i, u_input.b, -40696i, u_input.b)))));
    global1 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.x, global1.x, _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(ceil(func_4(Struct_2(vec4<u32>(u_input.c, 95134u, 18230u, 13149u), vec2<f32>(global1.x, 1266f)), vec4<i32>(u_input.b, u_input.a, u_input.a, 10950i), vec4<i32>(-1i, 2236i, u_input.a, u_input.a)).b.x))))));
    let var_1 = _wgslsmith_f_op_f32(global1.x * global1.x);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(step(var_1, _wgslsmith_f_op_f32(-720f + _wgslsmith_f_op_f32(-2028f - var_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-195f)))));
    global0 = array<Struct_3, 32>();
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_1, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-436f, _wgslsmith_f_op_f32(select(-605f, -2823f, var_3))) * _wgslsmith_f_op_f32(f32(-1f) * -990f))), firstTrailingBit(firstLeadingBit(vec4<u32>(1u, 1u, 4294967295u, u_input.c) & ~vec4<u32>(84099u, 34132u, 49698u, u_input.c))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-220f, var_2.x, var_0.x)) + _wgslsmith_f_op_f32(max(global1.x, 1000f))) - func_4(Struct_2(vec4<u32>(37968u, 107892u, u_input.c, u_input.c), var_2), vec4<i32>(u_input.a, 32054i, 36885i, u_input.a), vec4<i32>(u_input.a, u_input.b, 0i, u_input.a) | vec4<i32>(u_input.a, -55641i, u_input.b, u_input.b)).b.x), var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(func_5(Struct_3(Struct_2(vec4<u32>(1u, 60840u, u_input.c, 0u), vec2<f32>(154f, -1008f)), vec2<u32>(u_input.c, u_input.c)), vec4<i32>(1i, -2536i, u_input.b, 2147483647i), 17695u)))), _wgslsmith_f_op_f32(-var_1)), -844f, 0i);
}

