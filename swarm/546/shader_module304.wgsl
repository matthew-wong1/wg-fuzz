struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: vec2<bool>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_3,
    d: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 20>;

var<private> global1: array<Struct_1, 7>;

var<private> global2: array<Struct_4, 19> = array<Struct_4, 19>(Struct_4(vec4<u32>(0u, 28024u, 27612u, 1u), Struct_1(vec2<f32>(1000f, 1320f)), Struct_3(2147483647i, true, Struct_1(vec2<f32>(-1384f, -992f)), Struct_2(false, vec4<i32>(2147483647i, 43558i, -1i, -24647i), vec2<bool>(false, true), vec2<u32>(82852u, 4294967295u))), Struct_2(true, vec4<i32>(2147483647i, 2147483647i, 36203i, -2476i), vec2<bool>(true, false), vec2<u32>(4294967295u, 4294967295u))), Struct_4(vec4<u32>(19392u, 89800u, 1u, 63090u), Struct_1(vec2<f32>(1071f, 319f)), Struct_3(-54806i, true, Struct_1(vec2<f32>(-1276f, -661f)), Struct_2(false, vec4<i32>(0i, i32(-2147483648), -26431i, 22515i), vec2<bool>(false, false), vec2<u32>(28554u, 51607u))), Struct_2(true, vec4<i32>(-6940i, 74491i, -46612i, 56403i), vec2<bool>(true, true), vec2<u32>(1u, 4294967295u))), Struct_4(vec4<u32>(0u, 0u, 4294967295u, 4294967295u), Struct_1(vec2<f32>(-1375f, 952f)), Struct_3(1i, true, Struct_1(vec2<f32>(-834f, 491f)), Struct_2(true, vec4<i32>(21615i, -5275i, i32(-2147483648), -39988i), vec2<bool>(false, true), vec2<u32>(59560u, 37499u))), Struct_2(false, vec4<i32>(-1i, 0i, -59931i, -62217i), vec2<bool>(false, false), vec2<u32>(60880u, 28598u))), Struct_4(vec4<u32>(43686u, 41526u, 4294967295u, 3514u), Struct_1(vec2<f32>(680f, -560f)), Struct_3(0i, true, Struct_1(vec2<f32>(-1119f, -737f)), Struct_2(false, vec4<i32>(16666i, -1i, 2147483647i, -1i), vec2<bool>(true, false), vec2<u32>(48952u, 7906u))), Struct_2(false, vec4<i32>(52963i, 8031i, -53355i, 0i), vec2<bool>(false, false), vec2<u32>(351u, 7721u))), Struct_4(vec4<u32>(0u, 23755u, 0u, 0u), Struct_1(vec2<f32>(-1299f, -1308f)), Struct_3(-1i, true, Struct_1(vec2<f32>(-1088f, 1000f)), Struct_2(true, vec4<i32>(1i, 2147483647i, 1i, 49122i), vec2<bool>(false, false), vec2<u32>(53885u, 90125u))), Struct_2(false, vec4<i32>(10472i, 0i, 0i, -19039i), vec2<bool>(true, false), vec2<u32>(0u, 15636u))), Struct_4(vec4<u32>(4294967295u, 19827u, 4294967295u, 19783u), Struct_1(vec2<f32>(-376f, -777f)), Struct_3(-1i, true, Struct_1(vec2<f32>(-3347f, 997f)), Struct_2(true, vec4<i32>(16714i, -21387i, i32(-2147483648), -50350i), vec2<bool>(true, true), vec2<u32>(0u, 1u))), Struct_2(true, vec4<i32>(-68424i, 1i, -6591i, 0i), vec2<bool>(true, true), vec2<u32>(0u, 11220u))), Struct_4(vec4<u32>(14299u, 4294967295u, 28498u, 0u), Struct_1(vec2<f32>(194f, 106f)), Struct_3(i32(-2147483648), false, Struct_1(vec2<f32>(1068f, -1000f)), Struct_2(false, vec4<i32>(-1i, 31372i, -26619i, i32(-2147483648)), vec2<bool>(true, true), vec2<u32>(0u, 0u))), Struct_2(false, vec4<i32>(1i, -38851i, 10592i, 30980i), vec2<bool>(false, false), vec2<u32>(88545u, 32968u))), Struct_4(vec4<u32>(0u, 4924u, 4294967295u, 0u), Struct_1(vec2<f32>(-920f, 161f)), Struct_3(-1i, true, Struct_1(vec2<f32>(-196f, -1222f)), Struct_2(true, vec4<i32>(-1i, i32(-2147483648), 2147483647i, -32168i), vec2<bool>(false, true), vec2<u32>(24378u, 0u))), Struct_2(false, vec4<i32>(i32(-2147483648), 33410i, 42775i, 2147483647i), vec2<bool>(true, false), vec2<u32>(32252u, 36071u))), Struct_4(vec4<u32>(2177u, 0u, 39563u, 1960u), Struct_1(vec2<f32>(334f, -459f)), Struct_3(1i, false, Struct_1(vec2<f32>(670f, -980f)), Struct_2(true, vec4<i32>(21166i, 16077i, i32(-2147483648), 0i), vec2<bool>(true, false), vec2<u32>(4294967295u, 4294967295u))), Struct_2(false, vec4<i32>(74071i, -18091i, -50195i, -16104i), vec2<bool>(false, false), vec2<u32>(1960u, 45748u))), Struct_4(vec4<u32>(4294967295u, 26522u, 18896u, 22658u), Struct_1(vec2<f32>(-244f, 883f)), Struct_3(-6221i, false, Struct_1(vec2<f32>(-305f, -1036f)), Struct_2(false, vec4<i32>(0i, -39123i, 13082i, i32(-2147483648)), vec2<bool>(true, false), vec2<u32>(1u, 17329u))), Struct_2(true, vec4<i32>(0i, 4992i, 0i, 41284i), vec2<bool>(true, false), vec2<u32>(76962u, 11225u))), Struct_4(vec4<u32>(0u, 14285u, 43757u, 59473u), Struct_1(vec2<f32>(-157f, 1000f)), Struct_3(-31020i, true, Struct_1(vec2<f32>(295f, -711f)), Struct_2(false, vec4<i32>(0i, 0i, 1i, 0i), vec2<bool>(true, true), vec2<u32>(7889u, 554u))), Struct_2(true, vec4<i32>(0i, 1i, 2147483647i, 0i), vec2<bool>(true, false), vec2<u32>(1u, 32932u))), Struct_4(vec4<u32>(4294967295u, 8521u, 4294967295u, 4294967295u), Struct_1(vec2<f32>(-1000f, -187f)), Struct_3(33074i, false, Struct_1(vec2<f32>(-219f, 2063f)), Struct_2(true, vec4<i32>(43025i, 0i, -1i, i32(-2147483648)), vec2<bool>(true, true), vec2<u32>(62932u, 47809u))), Struct_2(true, vec4<i32>(2202i, -1i, 32015i, 2147483647i), vec2<bool>(false, true), vec2<u32>(11883u, 1u))), Struct_4(vec4<u32>(4294967295u, 4294967295u, 3625u, 1u), Struct_1(vec2<f32>(124f, -1699f)), Struct_3(15937i, false, Struct_1(vec2<f32>(605f, 1843f)), Struct_2(true, vec4<i32>(14420i, 2147483647i, 30115i, -12818i), vec2<bool>(true, false), vec2<u32>(0u, 101424u))), Struct_2(true, vec4<i32>(1i, 1i, -22736i, 0i), vec2<bool>(false, true), vec2<u32>(4294967295u, 61490u))), Struct_4(vec4<u32>(48870u, 0u, 709u, 1u), Struct_1(vec2<f32>(-1000f, 1922f)), Struct_3(3239i, false, Struct_1(vec2<f32>(1000f, -572f)), Struct_2(true, vec4<i32>(-1i, 0i, -1i, 2147483647i), vec2<bool>(true, true), vec2<u32>(15217u, 4294967295u))), Struct_2(true, vec4<i32>(2147483647i, -1i, -1i, 2147483647i), vec2<bool>(false, true), vec2<u32>(7401u, 18420u))), Struct_4(vec4<u32>(55616u, 21686u, 0u, 1u), Struct_1(vec2<f32>(-1427f, -799f)), Struct_3(29394i, false, Struct_1(vec2<f32>(1891f, 426f)), Struct_2(false, vec4<i32>(2147483647i, i32(-2147483648), 11285i, 9629i), vec2<bool>(false, true), vec2<u32>(4294967295u, 9534u))), Struct_2(false, vec4<i32>(1i, 0i, i32(-2147483648), i32(-2147483648)), vec2<bool>(false, true), vec2<u32>(4294967295u, 23121u))), Struct_4(vec4<u32>(34983u, 4294967295u, 0u, 1u), Struct_1(vec2<f32>(-693f, -453f)), Struct_3(42798i, false, Struct_1(vec2<f32>(-1000f, 213f)), Struct_2(false, vec4<i32>(18384i, -27183i, -11546i, -1i), vec2<bool>(false, true), vec2<u32>(12952u, 10769u))), Struct_2(true, vec4<i32>(2147483647i, i32(-2147483648), -1i, -31333i), vec2<bool>(true, true), vec2<u32>(3535u, 1u))), Struct_4(vec4<u32>(4294967295u, 107009u, 0u, 92960u), Struct_1(vec2<f32>(-990f, 611f)), Struct_3(0i, true, Struct_1(vec2<f32>(-1010f, -1092f)), Struct_2(false, vec4<i32>(-8525i, -16211i, 25829i, 63252i), vec2<bool>(true, false), vec2<u32>(0u, 0u))), Struct_2(false, vec4<i32>(0i, -36395i, -33183i, 1i), vec2<bool>(false, false), vec2<u32>(9983u, 19882u))), Struct_4(vec4<u32>(23894u, 83766u, 4294967295u, 4294967295u), Struct_1(vec2<f32>(-962f, 733f)), Struct_3(2147483647i, true, Struct_1(vec2<f32>(195f, 1210f)), Struct_2(true, vec4<i32>(-32643i, 0i, 8484i, -6438i), vec2<bool>(false, true), vec2<u32>(28257u, 16916u))), Struct_2(false, vec4<i32>(-1746i, -3918i, 1i, 0i), vec2<bool>(false, true), vec2<u32>(49377u, 63263u))), Struct_4(vec4<u32>(1u, 90380u, 0u, 1u), Struct_1(vec2<f32>(2046f, 1674f)), Struct_3(18469i, false, Struct_1(vec2<f32>(350f, 522f)), Struct_2(false, vec4<i32>(10655i, 26679i, 1i, 27388i), vec2<bool>(true, true), vec2<u32>(11844u, 66506u))), Struct_2(true, vec4<i32>(1i, 1i, 2147483647i, -1859i), vec2<bool>(true, false), vec2<u32>(1u, 51238u))));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: u32) -> f32 {
    global1 = array<Struct_1, 7>();
    return -873f;
}

fn func_3() -> vec3<bool> {
    global0 = array<Struct_3, 20>();
    var var_0 = !(u_input.c.x < u_input.c.x);
    var var_1 = !(0u != _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 31585u)), ~vec4<u32>(4294967295u, u_input.c.x, 33446u, u_input.c.x)), ~(~u_input.c.x), 1u));
    var_1 = ~1u >= u_input.c.x;
    let var_2 = ~abs(_wgslsmith_mult_u32(~_wgslsmith_mult_u32(1u, 125010u), u_input.c.x));
    return vec3<bool>(all(vec2<bool>(true, true)), all(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true)), false);
}

fn func_1(arg_0: f32, arg_1: Struct_4) -> Struct_5 {
    var var_0 = Struct_5(u_input.c.x | 52050u, -(vec4<i32>(arg_1.d.b.x, abs(-64609i), u_input.a, _wgslsmith_add_i32(u_input.b.x, -21986i)) | reverseBits(-vec4<i32>(20620i, u_input.a, -27394i, u_input.b.x))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1575f * 555f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<i32>(-41944i, 1i, var_0.b.x, var_0.b.x), vec3<u32>(77638u, var_0.a, var_0.a), Struct_1(vec2<f32>(1565f, 360f)), 21841u)))))) < arg_0;
    let var_2 = select(func_3(), vec3<bool>(true, var_1, var_1), select(!(!func_3()), select(!select(vec3<bool>(arg_1.c.b, false, false), vec3<bool>(false, arg_1.c.b, var_1), false), !(!vec3<bool>(false, var_1, false)), func_3().x), true));
    global0 = array<Struct_3, 20>();
    let var_3 = vec2<bool>(false, true);
    return Struct_5(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~4294967295u, u_input.c.x, 99210u >> (u_input.c.x % 32u)), vec3<u32>(u_input.c.x | 33052u, _wgslsmith_clamp_u32(u_input.c.x, var_0.a, 1080u), ~var_0.a)), var_0.a), abs(-vec4<i32>(-31246i, var_0.b.x, u_input.a, -21310i) & _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.b.x, u_input.b.x, 0i, -36967i), vec4<i32>(-30958i, u_input.a, var_0.b.x, var_0.b.x), vec4<i32>(1i, u_input.b.x, u_input.b.x, u_input.a)), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.c.a, -1i, 1i, var_0.b.x), vec4<i32>(u_input.a, -1i, -2379i, var_0.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-899f, 1297f)), -121f))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-637f, -212f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(745f, -1734f) - vec2<f32>(-2819f, 713f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1488f, -1000f) * vec2<f32>(-215f, 846f)), select(vec2<bool>(true, true), vec2<bool>(true, false), true))))));
    let var_3 = func_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.a.x), var_2.a.x)), global2[_wgslsmith_index_u32(4294967295u, 19u)]);
    let var_4 = _wgslsmith_div_u32(reverseBits(1u), 36104u);
    global0 = array<Struct_3, 20>();
    global1 = array<Struct_1, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b);
}

