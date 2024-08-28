struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<bool>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: bool,
}

struct Struct_4 {
    a: u32,
    b: vec4<f32>,
    c: Struct_3,
    d: i32,
    e: Struct_3,
}

struct Struct_5 {
    a: vec4<bool>,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(Struct_1(vec2<f32>(846f, 691f), vec4<i32>(16800i, i32(-2147483648), -13879i, 26683i), 10480u, 39915u), 4885u, vec2<bool>(true, true), i32(-2147483648), Struct_1(vec2<f32>(-1845f, 799f), vec4<i32>(-4945i, 31578i, 11120i, -1i), 15309u, 0u)), Struct_2(Struct_1(vec2<f32>(-704f, 176f), vec4<i32>(0i, -54037i, 27866i, -58627i), 32259u, 56884u), 64186u, vec2<bool>(false, false), 1i, Struct_1(vec2<f32>(-142f, -824f), vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, 10339i), 784u, 29988u)), Struct_2(Struct_1(vec2<f32>(-1084f, -861f), vec4<i32>(0i, -27489i, -36705i, -1i), 33643u, 5340u), 0u, vec2<bool>(true, false), -56423i, Struct_1(vec2<f32>(584f, 439f), vec4<i32>(-20177i, i32(-2147483648), 9005i, 0i), 6416u, 4294967295u)), Struct_2(Struct_1(vec2<f32>(842f, -217f), vec4<i32>(58902i, -1i, -1i, -8121i), 39546u, 1u), 1u, vec2<bool>(false, true), -1i, Struct_1(vec2<f32>(-347f, 1011f), vec4<i32>(1i, 1i, 0i, -41537i), 0u, 0u)), Struct_2(Struct_1(vec2<f32>(748f, -1403f), vec4<i32>(-61341i, 46981i, 41982i, -1i), 133974u, 1u), 4294967295u, vec2<bool>(true, false), 11942i, Struct_1(vec2<f32>(-1450f, 1440f), vec4<i32>(18308i, -24110i, 2161i, i32(-2147483648)), 4294967295u, 898u)), Struct_2(Struct_1(vec2<f32>(925f, -972f), vec4<i32>(39884i, 1i, 81831i, 12797i), 0u, 0u), 0u, vec2<bool>(false, true), 64466i, Struct_1(vec2<f32>(1087f, -367f), vec4<i32>(i32(-2147483648), 2147483647i, -7959i, 0i), 1u, 28198u)), Struct_2(Struct_1(vec2<f32>(-621f, -959f), vec4<i32>(2147483647i, i32(-2147483648), -1512i, 1i), 19426u, 1u), 25932u, vec2<bool>(true, true), -9441i, Struct_1(vec2<f32>(-389f, 287f), vec4<i32>(2147483647i, 0i, -56383i, -17541i), 4294967295u, 36686u)), Struct_2(Struct_1(vec2<f32>(696f, 603f), vec4<i32>(i32(-2147483648), 0i, 42307i, 31106i), 1u, 4294967295u), 4294967295u, vec2<bool>(true, false), i32(-2147483648), Struct_1(vec2<f32>(2706f, -203f), vec4<i32>(17480i, -78772i, 0i, 3573i), 1u, 31414u)), Struct_2(Struct_1(vec2<f32>(-1000f, -434f), vec4<i32>(10174i, -1i, 2147483647i, 8677i), 4294967295u, 15990u), 2549u, vec2<bool>(false, true), 24204i, Struct_1(vec2<f32>(-1000f, 916f), vec4<i32>(42283i, -6746i, 1i, i32(-2147483648)), 28905u, 73396u)), Struct_2(Struct_1(vec2<f32>(-1000f, 1000f), vec4<i32>(2147483647i, 2147483647i, -201i, 36691i), 65663u, 40952u), 0u, vec2<bool>(false, true), -14405i, Struct_1(vec2<f32>(-2256f, 403f), vec4<i32>(37968i, -14434i, -46286i, 0i), 22702u, 18653u)), Struct_2(Struct_1(vec2<f32>(-603f, 1136f), vec4<i32>(i32(-2147483648), 1i, 0i, 0i), 3440u, 4294967295u), 46071u, vec2<bool>(false, false), 1i, Struct_1(vec2<f32>(192f, -1000f), vec4<i32>(2147483647i, 17946i, 2147483647i, i32(-2147483648)), 35469u, 30691u)), Struct_2(Struct_1(vec2<f32>(-599f, 514f), vec4<i32>(0i, 50048i, -1i, -1i), 4294967295u, 1u), 1u, vec2<bool>(true, true), 56203i, Struct_1(vec2<f32>(-605f, 998f), vec4<i32>(-61116i, -30494i, -3903i, 1i), 4294967295u, 0u)), Struct_2(Struct_1(vec2<f32>(-141f, 1554f), vec4<i32>(i32(-2147483648), 55097i, -35175i, 29410i), 1u, 0u), 4156u, vec2<bool>(true, true), 30049i, Struct_1(vec2<f32>(875f, 979f), vec4<i32>(1i, -36097i, 10901i, -19953i), 148295u, 0u)), Struct_2(Struct_1(vec2<f32>(-1009f, -3647f), vec4<i32>(1i, -56988i, -22143i, 3865i), 0u, 38806u), 1u, vec2<bool>(true, false), 2147483647i, Struct_1(vec2<f32>(1852f, -1000f), vec4<i32>(-1i, 1i, 24382i, 12172i), 1u, 17272u)), Struct_2(Struct_1(vec2<f32>(-1000f, 661f), vec4<i32>(0i, 1i, 44438i, i32(-2147483648)), 1u, 54328u), 1u, vec2<bool>(true, true), i32(-2147483648), Struct_1(vec2<f32>(447f, -692f), vec4<i32>(1i, -4233i, 2147483647i, -80282i), 0u, 4294967295u)), Struct_2(Struct_1(vec2<f32>(833f, -1060f), vec4<i32>(i32(-2147483648), 7727i, i32(-2147483648), 41551i), 81508u, 4294967295u), 8547u, vec2<bool>(false, true), -10399i, Struct_1(vec2<f32>(-1315f, -1047f), vec4<i32>(i32(-2147483648), 1i, 1i, -1i), 1u, 1u)), Struct_2(Struct_1(vec2<f32>(1084f, -549f), vec4<i32>(-1i, -4034i, 1i, 2147483647i), 14506u, 1u), 0u, vec2<bool>(true, false), 1i, Struct_1(vec2<f32>(-192f, 919f), vec4<i32>(12815i, 6686i, 1i, 0i), 4087u, 26829u)), Struct_2(Struct_1(vec2<f32>(227f, 749f), vec4<i32>(-9741i, 28366i, 0i, 40780i), 1u, 13406u), 20859u, vec2<bool>(true, true), -34360i, Struct_1(vec2<f32>(238f, -312f), vec4<i32>(-14134i, 1i, 1i, 0i), 34868u, 32653u)), Struct_2(Struct_1(vec2<f32>(-735f, 138f), vec4<i32>(0i, 0i, 43325i, 8941i), 4294967295u, 8220u), 83947u, vec2<bool>(false, true), -50775i, Struct_1(vec2<f32>(563f, -114f), vec4<i32>(282i, 2147483647i, 1i, -37767i), 4294967295u, 4294967295u)), Struct_2(Struct_1(vec2<f32>(-1000f, -139f), vec4<i32>(2147483647i, 4422i, i32(-2147483648), -1830i), 0u, 0u), 0u, vec2<bool>(true, false), 2147483647i, Struct_1(vec2<f32>(193f, 407f), vec4<i32>(-1i, 2147483647i, 2147483647i, -1i), 46447u, 11462u)), Struct_2(Struct_1(vec2<f32>(-113f, 492f), vec4<i32>(-3150i, -30208i, -35021i, 8016i), 92309u, 14519u), 29322u, vec2<bool>(true, false), 26282i, Struct_1(vec2<f32>(-125f, -1385f), vec4<i32>(13817i, 0i, 2147483647i, -19589i), 48522u, 41580u)), Struct_2(Struct_1(vec2<f32>(1424f, -262f), vec4<i32>(-1i, -1i, -22898i, -1i), 4294967295u, 4294967295u), 69102u, vec2<bool>(false, true), 0i, Struct_1(vec2<f32>(-1000f, 1027f), vec4<i32>(31418i, -3253i, i32(-2147483648), i32(-2147483648)), 0u, 0u)));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: Struct_1) -> bool {
    let var_0 = global0[_wgslsmith_index_u32(~max(arg_1.x, ~21060u), 22u)];
    var var_1 = all(!select(var_0.c, vec2<bool>(!arg_2.c, true | arg_2.c), true));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) - var_0.e.a.x) + 125f) * _wgslsmith_f_op_f32(arg_2.a + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(487f)), _wgslsmith_f_op_f32(-514f * var_0.a.a.x))))) * arg_2.a);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_3.a.x)) - arg_3.a.x))));
    let var_4 = var_0.c.x;
    return !((_wgslsmith_f_op_f32(min(arg_2.a, arg_3.a.x)) >= arg_0) & false) != true;
}

fn func_2(arg_0: bool, arg_1: u32) -> Struct_5 {
    return Struct_5(vec4<bool>(arg_0 != select(true, all(vec2<bool>(false, false)), true), arg_0, u_input.b.x > 1u, func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(603f)) - _wgslsmith_f_op_f32(705f + -817f)), u_input.a.zxy ^ select(vec3<u32>(arg_1, 0u, u_input.b.x), vec3<u32>(u_input.a.x, 70574u, u_input.b.x), vec3<bool>(arg_0, arg_0, true)), Struct_3(-457f, -u_input.c, true), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-673f, -1101f)), vec4<i32>(u_input.c, u_input.c, 1i, u_input.c), 0u, u_input.b.x))), 44907u, arg_0);
}

fn func_4(arg_0: Struct_5) -> vec4<bool> {
    var var_0 = abs(u_input.c);
    var var_1 = 1u;
    global0 = array<Struct_2, 22>();
    var var_2 = all(!vec4<bool>(all(arg_0.a.xyx), true, !arg_0.c, !select(arg_0.a.x, true, arg_0.c)));
    var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~countOneBits(u_input.a), ~vec4<u32>(arg_0.b, 1u, u_input.a.x, arg_0.b)), vec4<u32>(26183u, firstLeadingBit(~arg_0.b), abs(arg_0.b), _wgslsmith_div_u32(0u, arg_0.b) & 1u)) >> (~68042u % 32u);
    return arg_0.a;
}

fn func_5(arg_0: vec4<bool>) -> vec2<bool> {
    global0 = array<Struct_2, 22>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(260f, 451f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(930f)), _wgslsmith_f_op_f32(abs(1000f))))), vec4<i32>(min(-u_input.c, u_input.c), ~(0i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -11255i, -1i), vec3<i32>(-6789i, u_input.c, u_input.c))), (abs(u_input.c) | ~12436i) & 0i, u_input.c), 7308u, 15551u >> (~u_input.a.x % 32u));
    global0 = array<Struct_2, 22>();
    var var_1 = Struct_4(~u_input.a.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, 716f, var_0.a.x, -1000f))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -655f), _wgslsmith_f_op_f32(var_0.a.x - -529f), _wgslsmith_f_op_f32(step(var_0.a.x, 1168f)), 706f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - var_0.a.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(var_0.a.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-2006f)), _wgslsmith_f_op_f32(abs(var_0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.a.x, var_0.a.x)) - 1f))), Struct_3(1879f, u_input.c, arg_0.x | arg_0.x), _wgslsmith_dot_vec4_i32(-var_0.b, reverseBits(var_0.b)) & -max(firstTrailingBit(var_0.b.x), _wgslsmith_dot_vec3_i32(var_0.b.zww, var_0.b.yzw)), Struct_3(var_0.a.x, abs(u_input.c), false | arg_0.x));
    var_1 = Struct_4(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.c, var_1.a, 1u), u_input.a.yxw | vec3<u32>(86803u, var_0.c, var_1.a), vec3<u32>(var_0.d, u_input.a.x, 0u)), ~u_input.a.xwy, u_input.a.xwx), _wgslsmith_sub_vec3_u32(~_wgslsmith_div_vec3_u32(u_input.a.yxy, vec3<u32>(25745u, var_0.c, 4294967295u)), u_input.a.yyx)), var_1.b, Struct_3(_wgslsmith_f_op_f32(var_1.c.a + _wgslsmith_f_op_f32(trunc(var_0.a.x))), (var_0.b.x << ((var_1.a & 51597u) % 32u)) ^ u_input.c, any(select(vec4<bool>(true, var_1.e.c, true, arg_0.x), arg_0, arg_0.x))), select(2147483647i, _wgslsmith_add_i32(25741i, u_input.c), false), Struct_3(_wgslsmith_f_op_f32(step(1f, 1361f)), var_0.b.x, false));
    return vec2<bool>(var_1.c.c, func_4(Struct_5(vec4<bool>(true, false, true, all(vec4<bool>(var_1.e.c, false, false, false))), ~(~u_input.b.x), false)).x);
}

fn func_1() -> f32 {
    let var_0 = ~vec3<i32>(u_input.c, u_input.c, -1i);
    global0 = array<Struct_2, 22>();
    global0 = array<Struct_2, 22>();
    let var_1 = any(vec4<bool>(true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true))), true, any(vec4<bool>(true, true, true, true)) || select(all(vec3<bool>(true, false, false)), true, true)));
    var var_2 = select(func_5(!func_4(func_2(false, 40720u))), vec2<bool>(!(!(false | var_1)), any(!(!vec4<bool>(true, var_1, var_1, var_1)))), var_1);
    return 125f;
}

fn func_6(arg_0: f32, arg_1: vec2<f32>, arg_2: vec3<bool>) -> Struct_4 {
    return Struct_4(u_input.b.x, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, -1010f, arg_0, 1692f), vec4<f32>(arg_0, 1959f, -1201f, arg_1.x))))))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - -1038f)), 0i, func_5(func_2(arg_2.x, u_input.a.x).a).x), u_input.c, Struct_3(-1185f, firstLeadingBit(~u_input.c), all(arg_2)));
}

fn func_7(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = arg_0.d;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -243f));
    var var_2 = arg_1.a.a.x;
    global0 = array<Struct_2, 22>();
    let var_3 = func_2(arg_0.e.c, arg_1.e.c);
    return Struct_1(arg_2.yz, _wgslsmith_add_vec4_i32(arg_1.a.b, vec4<i32>(_wgslsmith_div_i32(arg_0.c.b, ~arg_0.c.b), -716i, ~_wgslsmith_div_i32(arg_1.d, arg_0.c.b), 5410i)), _wgslsmith_mod_u32(func_2(true, ~_wgslsmith_dot_vec3_u32(u_input.a.xyy, u_input.a.wwy)).b, min(0u, abs(39275u)) >> (firstLeadingBit(var_3.b) % 32u)), _wgslsmith_mod_u32((arg_0.a << (4294967295u % 32u)) ^ ~_wgslsmith_dot_vec2_u32(vec2<u32>(25906u, 1u), u_input.b), 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 22>();
    let var_0 = !select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(all(vec2<bool>(true, true)), true, any(vec3<bool>(false, true, false))), all(vec2<bool>(true, false)) && true), true);
    var var_1 = func_7(func_6(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -600f) - _wgslsmith_f_op_f32(-1023f * 853f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - _wgslsmith_f_op_f32(max(-603f, -423f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-222f, 711f) * vec2<f32>(-1516f, -590f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-228f, 425f), vec2<f32>(-1614f, 1306f), vec2<bool>(false, var_0.x)))))), var_0), global0[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(~u_input.b.x, 16041u)) ^ abs(u_input.b.x), 22u)], _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1013f, -364f, _wgslsmith_f_op_f32(select(2200f, _wgslsmith_f_op_f32(-2108f + -567f), any(vec3<bool>(var_0.x, var_0.x, true))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(410f, -286f, -1111f)) * _wgslsmith_div_vec3_f32(vec3<f32>(1689f, -1152f, 1000f), vec3<f32>(566f, 736f, 454f))) + vec3<f32>(_wgslsmith_f_op_f32(-393f + 550f), _wgslsmith_div_f32(420f, -2212f), _wgslsmith_f_op_f32(select(-840f, -1048f, var_0.x)))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -878f, -1554f)))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(round(var_1.a.x)))) + var_1.a.x), 1334f, _wgslsmith_f_op_f32(func_1())), func_4(Struct_5(!(!vec4<bool>(false, var_0.x, var_0.x, var_0.x)), ~(~26483u), var_0.x)).wzx));
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-329f, _wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - var_2.x))), var_2.x));
    let var_4 = var_3;
    let var_5 = vec2<bool>(false, func_4(Struct_5(vec4<bool>(false, true, var_0.x, false), _wgslsmith_mult_u32(u_input.b.x, var_1.c), !var_0.x)).x != false);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_add_u32(307u, ~u_input.a.x)) ^ var_1.d, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.d, u_input.b.x) >> (vec2<u32>(37528u, ~var_1.d) % vec2<u32>(32u)), abs(u_input.a.zy)), -2147483647i, ~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 128742u) & vec2<u32>(1u, u_input.b.x), u_input.b), u_input.a.x, ~1u), 0i);
}

