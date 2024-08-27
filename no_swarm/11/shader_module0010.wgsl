struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: u32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: i32,
    d: f32,
    e: i32,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: bool,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
    c: f32,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
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

var<private> global0: i32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec3<u32> {
    global0 = firstTrailingBit(_wgslsmith_add_i32(u_input.a, _wgslsmith_div_i32(38451i, min(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(u_input.a, u_input.a))))));
    let var_0 = vec4<bool>(false, !((-1i != max(u_input.a, u_input.a)) | true), true, any(!select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), false), vec4<bool>(true, false, true, true))));
    global0 = -_wgslsmith_sub_i32(-(2147483647i >> (u_input.b % 32u)), -19068i);
    global0 = -1i;
    var var_1 = u_input.a;
    return min(~(~select(vec3<u32>(1u, 4294967295u, 22620u), vec3<u32>(1893u, 38916u, u_input.b), vec3<bool>(false, var_0.x, false))), ~(~countOneBits(~vec3<u32>(u_input.b, u_input.b, u_input.b))));
}

fn func_2() -> Struct_4 {
    return Struct_4(Struct_1(vec2<bool>(true, true), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -756f), -211f), 1f), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(1u, u_input.b)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(4294967295u, 25648u))), select(27499u, ~u_input.b, false)), firstLeadingBit((vec2<u32>(u_input.b, u_input.b) << (vec2<u32>(u_input.b, 0u) % vec2<u32>(32u))) | ~vec2<u32>(0u, 50301u))), _wgslsmith_add_vec3_u32(func_3(), vec3<u32>(~41925u, _wgslsmith_clamp_u32(~4294967295u, u_input.b, u_input.b), abs(_wgslsmith_add_u32(4294967295u, 0u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-821f, -467f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -195f))))), Struct_2(vec4<u32>(u_input.b, ~(25027u ^ u_input.b), u_input.b, 4294967295u), !vec3<bool>(all(vec3<bool>(false, true, false)), true, true), firstTrailingBit(-54972i), -859f, abs(8703i)));
}

fn func_4(arg_0: bool, arg_1: Struct_4) -> Struct_5 {
    global0 = -45516i;
    let var_0 = 1236f;
    return Struct_5(Struct_3(~(u_input.b >> (37427u % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_1.a.b, vec2<f32>(1000f, -1057f))))), !arg_1.a.a.x, func_2().a), 0u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-691f, arg_1.a.b.x)) + vec2<f32>(_wgslsmith_f_op_f32(var_0 * -237f), _wgslsmith_f_op_f32(step(var_0, var_0))))));
}

fn func_5(arg_0: Struct_5) -> i32 {
    global0 = u_input.a;
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-826f, 1000f)), func_4(false, Struct_4(arg_0.a.d, vec3<u32>(1u, 59121u, arg_0.b), -158f, Struct_2(vec4<u32>(u_input.b, 28431u, 43080u, 4294967295u), vec3<bool>(arg_0.a.c, true, arg_0.a.d.a.x), 44555i, arg_0.a.d.b.x, -1i))).c)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c.x, 1423f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2201f, arg_0.c.x))))));
    global0 = abs(max(-u_input.a, _wgslsmith_mult_i32(1i, abs(_wgslsmith_sub_i32(u_input.a, u_input.a)))));
    var var_1 = Struct_5(func_4(false, func_2()).a, 36507u, func_2().a.b);
    return _wgslsmith_sub_i32(u_input.a, u_input.a & u_input.a);
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: i32) -> f32 {
    global0 = ~firstLeadingBit(func_5(func_4(all(vec3<bool>(true, arg_1.d.a.x, arg_0.x)), func_2())));
    var var_0 = Struct_5(arg_1, ~(~abs(~1u)), arg_1.b);
    var var_1 = _wgslsmith_mult_i32(-u_input.a, i32(-1i) * -(~arg_2)) >> ((func_4(func_2().a.a.x & func_4(false, Struct_4(Struct_1(vec2<bool>(true, arg_1.d.a.x), var_0.c, var_0.a.a, vec2<u32>(arg_1.a, 187595u)), vec3<u32>(u_input.b, arg_1.d.d.x, 0u), -1332f, Struct_2(vec4<u32>(arg_1.d.c, 2694u, var_0.b, 4294967295u), vec3<bool>(var_0.a.c, var_0.a.c, arg_1.c), -41830i, var_0.a.b.x, arg_2))).a.d.a.x, func_2()).b >> (reverseBits(~(~1u)) % 32u)) % 32u);
    global0 = -_wgslsmith_mult_i32(i32(-1i) * -(arg_2 ^ -1405i), -30250i);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, -154f, arg_1.b.x, arg_1.b.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d.b.x, -1360f, 1118f, arg_1.b.x) + vec4<f32>(-1358f, var_0.a.b.x, 2031f, var_0.a.d.b.x))))) + vec4<f32>(func_4(true, Struct_4(func_4(var_0.a.c, Struct_4(arg_1.d, vec3<u32>(var_0.a.a, var_0.b, 4294967295u), 293f, Struct_2(vec4<u32>(102496u, 67013u, u_input.b, 1u), vec3<bool>(false, false, arg_1.d.a.x), arg_2, arg_1.d.b.x, 0i))).a.d, ~vec3<u32>(1u, 17212u, u_input.b), arg_1.b.x, Struct_2(vec4<u32>(arg_1.a, 16077u, 7229u, arg_1.a), vec3<bool>(arg_1.d.a.x, false, false), u_input.a, 1000f, u_input.a))).c.x, _wgslsmith_f_op_f32(round(arg_1.b.x)), var_0.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_div_f32(var_0.c.x, -708f)))));
    return _wgslsmith_f_op_f32(exp2(var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1296f - -1655f), 2532f, -686f, _wgslsmith_f_op_f32(abs(-305f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(2160f, -266f)), _wgslsmith_f_op_f32(f32(-1f) * -1162f), _wgslsmith_f_op_f32(select(-405f, -811f, false)), _wgslsmith_f_op_f32(func_1(vec3<bool>(true, true, false), Struct_3(u_input.b, vec2<f32>(-843f, 808f), true, Struct_1(vec2<bool>(false, false), vec2<f32>(317f, 365f), 47388u, vec2<u32>(u_input.b, u_input.b))), 2147483647i))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(789f, _wgslsmith_f_op_f32(f32(-1f) * -195f), func_4(true, Struct_4(Struct_1(vec2<bool>(true, false), vec2<f32>(131f, -300f), 57039u, vec2<u32>(0u, u_input.b)), vec3<u32>(28354u, u_input.b, 1u), 640f, Struct_2(vec4<u32>(0u, 4294967295u, 19206u, 4294967295u), vec3<bool>(false, false, false), -2147483647i, -145f, u_input.a))).c.x, -1566f))));
    var var_1 = Struct_2(select(~_wgslsmith_div_vec4_u32(vec4<u32>(20104u, u_input.b, u_input.b, 1u), vec4<u32>(u_input.b, u_input.b, 2246u, 76010u)) | vec4<u32>(40960u, 1u, u_input.b, ~1u), _wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.b, u_input.b, u_input.b), ~vec4<u32>(1u, u_input.b, 4294967295u, 65253u)) | select(abs(vec4<u32>(u_input.b, 55385u, u_input.b, 60000u)), firstLeadingBit(vec4<u32>(u_input.b, 0u, u_input.b, u_input.b)), 1100f >= var_0.x), !(!(-313f != var_0.x))), vec3<bool>(true, true, true), 0i, var_0.x, -2147483647i);
    global0 = countOneBits(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(-(vec4<i32>(u_input.a, -910i, var_1.c, u_input.a) & vec4<i32>(var_1.c, u_input.a, -2147483647i, var_1.e)), vec4<i32>(var_1.e ^ -14269i, _wgslsmith_mod_i32(17494i, var_1.e), 25440i, 1i)), -max(vec4<i32>(var_1.e, -2147483647i, u_input.a, 0i), vec4<i32>(0i, 32392i, 39677i, -26016i)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(42980u, u_input.b, 4906u, u_input.b), var_1.a) % vec4<u32>(32u))));
    global0 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -28906i), abs(vec2<i32>(u_input.a, u_input.a))) & -1i, u_input.a, _wgslsmith_div_i32(25746i, -59029i)), ~(select(vec3<i32>(2147483647i, u_input.a, -2147483647i), vec3<i32>(2147483647i, 0i, -1i) & vec3<i32>(var_1.c, -1i, 509i), true) << (_wgslsmith_mod_vec3_u32(var_1.a.zwx, func_2().d.a.wwx) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2528f, _wgslsmith_f_op_f32(var_1.d - var_0.x), var_1.d, -1101f) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_1.d, 1713f, -237f)))))));
}

