struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>) -> u32 {
    var var_0 = Struct_5(false, ~46637u, any(vec3<bool>(any(arg_1.zy) && select(arg_0.c, false, arg_0.c), select(true, true, any(arg_1)), arg_0.b)));
    let var_1 = Struct_4(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -22137i, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, 1i, u_input.c.x, u_input.c.x)), _wgslsmith_sub_i32(u_input.c.x, -54895i)), -1713i), u_input.c));
    var_0 = Struct_5(var_0.a, var_0.b, arg_1.x);
    var_0 = Struct_5(arg_1.x, ~(~(_wgslsmith_div_u32(0u, var_0.b) ^ abs(u_input.a.x))), all(!vec2<bool>(any(vec4<bool>(var_0.a, arg_1.x, false, var_0.c)), any(arg_1.xy))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1788f))), arg_0.a.b.x, -187f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-476f))))));
    return max(64118u, var_0.b) | min(~_wgslsmith_mult_u32(~44708u, var_0.b), ~(~arg_0.a.a.x));
}

fn func_2() -> vec3<bool> {
    let var_0 = ~(~_wgslsmith_clamp_u32(~reverseBits(1u), 45882u, func_3(Struct_2(Struct_1(u_input.a, vec4<f32>(-346f, -1596f, -1822f, -2793f)), false, true, Struct_1(vec2<u32>(u_input.b, 1u), vec4<f32>(-401f, -1834f, -135f, -160f)), vec4<f32>(-2390f, -362f, 1599f, 885f)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), true))));
    var var_1 = Struct_4(min(_wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.c.x, u_input.c.x), u_input.c), vec2<i32>(reverseBits(u_input.c.x), min(abs(u_input.c.x), select(43i, -1591i, false)))));
    var_1 = Struct_4(_wgslsmith_sub_vec2_i32(abs(var_1.a), vec2<i32>(32591i, _wgslsmith_dot_vec4_i32(min(vec4<i32>(0i, -13831i, var_1.a.x, -2147483647i), vec4<i32>(var_1.a.x, u_input.c.x, u_input.c.x, 2147483647i)), vec4<i32>(u_input.c.x, var_1.a.x, var_1.a.x, var_1.a.x) & vec4<i32>(9551i, u_input.c.x, u_input.c.x, -1i)))));
    var_1 = Struct_4(-vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.c.x, -2147483647i, var_1.a.x), vec4<i32>(var_1.a.x, u_input.c.x, u_input.c.x, -43420i)), ~(-9134i)) & -vec2<i32>(u_input.c.x, u_input.c.x));
    var_1 = Struct_4(abs(-u_input.c));
    return select(vec3<bool>(true, select(all(select(vec2<bool>(false, true), vec2<bool>(false, true), false)), false, any(vec4<bool>(true, true, true, true))), true), !(!(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false))), !(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true)));
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> Struct_1 {
    let var_0 = Struct_5(_wgslsmith_f_op_f32(-422f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.b.x + -463f) * arg_1.e.x)) >= _wgslsmith_f_op_f32(221f + -1178f), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a.a.x, u_input.b, arg_1.d.a.x), vec3<u32>(arg_1.a.a.x, 0u, arg_1.a.a.x))) | 1u, true);
    var var_1 = ~(vec4<i32>(-1i) * -select(~vec4<i32>(u_input.c.x, -10920i, 0i, u_input.c.x), firstLeadingBit(vec4<i32>(2224i, u_input.c.x, u_input.c.x, 1778i)), select(vec4<bool>(arg_1.b, var_0.c, var_0.c, arg_0), vec4<bool>(arg_0, true, arg_0, arg_1.b), vec4<bool>(true, var_0.c, arg_0, arg_0))));
    var_1 = vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(var_1.xyx, vec3<i32>(15685i, u_input.c.x, var_1.x)), ~(~vec3<i32>(0i, 8992i, -1i))), u_input.c.x), -(~(~_wgslsmith_sub_i32(u_input.c.x, 17741i))), _wgslsmith_clamp_i32(var_1.x, firstTrailingBit(-26879i), u_input.c.x), var_1.x);
    let var_2 = arg_1;
    var var_3 = select(!func_2(), vec3<bool>((var_1.x ^ var_1.x) != _wgslsmith_mult_i32(-9534i, abs(24263i)), true, false), arg_1.c);
    return arg_1.d;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-995f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1210f + 826f) * -670f))));
    let var_1 = Struct_4(u_input.c);
    var var_2 = Struct_5(abs(-46728i) <= u_input.c.x, 1u, arg_1.x && true);
    let var_3 = Struct_4(countOneBits(_wgslsmith_add_vec2_i32(u_input.c, vec2<i32>(-2147483647i, -var_1.a.x))));
    let var_4 = arg_0;
    return vec2<i32>(var_3.a.x, i32(-1i) * -u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(0i, _wgslsmith_dot_vec2_i32(func_4(Struct_3(func_1(true, Struct_2(Struct_1(vec2<u32>(u_input.a.x, 9133u), vec4<f32>(-1023f, 1009f, 484f, -878f)), true, false, Struct_1(vec2<u32>(u_input.a.x, u_input.b), vec4<f32>(555f, -533f, 740f, -1205f)), vec4<f32>(-663f, 2043f, -1000f, -871f))), func_1(false, Struct_2(Struct_1(vec2<u32>(1621u, u_input.b), vec4<f32>(386f, -1885f, 1081f, 1398f)), true, false, Struct_1(u_input.a, vec4<f32>(-294f, -1096f, 511f, -662f)), vec4<f32>(787f, 1000f, -180f, 1254f)))), vec3<bool>(true, true, false)), u_input.c));
    let var_1 = true;
    var var_2 = func_1(var_1, Struct_2(func_1(var_1, Struct_2(Struct_1(vec2<u32>(u_input.b, u_input.b), vec4<f32>(1000f, 174f, 747f, -121f)), var_1, var_1, func_1(false, Struct_2(Struct_1(vec2<u32>(u_input.b, u_input.b), vec4<f32>(1000f, 158f, -1527f, -535f)), var_1, false, Struct_1(u_input.a, vec4<f32>(-1968f, -1000f, -127f, -1211f)), vec4<f32>(-271f, -167f, -518f, 1101f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(751f, -361f, -428f, -283f)))), true, var_1, Struct_1(_wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(u_input.b, u_input.b)), reverseBits(vec2<u32>(0u, u_input.a.x))), vec4<f32>(627f, -245f, _wgslsmith_div_f32(1440f, 640f), _wgslsmith_f_op_f32(619f * -795f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1000f + -685f), _wgslsmith_f_op_f32(select(461f, -1000f, var_1)), _wgslsmith_f_op_f32(floor(271f)), func_1(false, Struct_2(Struct_1(vec2<u32>(u_input.a.x, 4294967295u), vec4<f32>(779f, -1038f, -609f, 2626f)), var_1, false, Struct_1(u_input.a, vec4<f32>(-1534f, -798f, -1077f, -201f)), vec4<f32>(-376f, -436f, 643f, -500f))).b.x))));
    let var_3 = reverseBits(4294967295u);
    let var_4 = func_1(any(!func_2().xy), Struct_2(Struct_1(vec2<u32>(var_3, 68707u) & countOneBits(u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(var_2.b)) + _wgslsmith_div_vec4_f32(vec4<f32>(var_2.b.x, -480f, var_2.b.x, var_2.b.x), vec4<f32>(var_2.b.x, 543f, -931f, -745f)))), var_2.b.x == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.x * var_2.b.x) - -358f), var_1, func_1(all(vec4<bool>(var_1, false, var_1, false)), Struct_2(func_1(true, Struct_2(Struct_1(vec2<u32>(u_input.b, var_2.a.x), var_2.b), var_1, true, Struct_1(u_input.a, var_2.b), vec4<f32>(var_2.b.x, var_2.b.x, -779f, var_2.b.x))), any(vec3<bool>(var_1, var_1, var_1)), var_1, Struct_1(u_input.a, vec4<f32>(var_2.b.x, -492f, var_2.b.x, -1576f)), var_2.b)), var_2.b)).a.x;
    var_2 = func_1(false, Struct_2(Struct_1(abs(u_input.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.b * vec4<f32>(-1894f, -951f, var_2.b.x, var_2.b.x)))), u_input.c.x <= _wgslsmith_sub_i32(_wgslsmith_mult_i32(-74949i, -19310i), abs(52371i)), true, func_1(~var_2.a.x >= var_2.a.x, Struct_2(Struct_1(vec2<u32>(30765u, 1u), var_2.b), !var_1, var_1 & var_1, func_1(var_1, Struct_2(Struct_1(vec2<u32>(4294967295u, var_2.a.x), vec4<f32>(1930f, -459f, -125f, -646f)), true, var_1, Struct_1(u_input.a, vec4<f32>(-2383f, 1853f, var_2.b.x, -1966f)), vec4<f32>(788f, var_2.b.x, -580f, -695f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-697f, -1000f, -538f, 1120f)))), vec4<f32>(_wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-169f, var_2.b.x))), _wgslsmith_f_op_f32(-1010f * _wgslsmith_f_op_f32(var_2.b.x - var_2.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) * _wgslsmith_f_op_f32(select(var_2.b.x, var_2.b.x, var_1))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_div_vec4_i32(select(vec4<i32>(u_input.c.x, 1i, 0i, -12247i), ~vec4<i32>(var_0, u_input.c.x, var_0, u_input.c.x), vec4<bool>(var_1, var_1, false, var_1)), reverseBits(select(vec4<i32>(4107i, -1i, -10989i, var_0), vec4<i32>(var_0, var_0, -1i, -2147483647i), false))) ^ -vec4<i32>(var_0, _wgslsmith_add_i32(8124i, -19665i), ~u_input.c.x, 14043i));
}

