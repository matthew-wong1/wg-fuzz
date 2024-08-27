struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec2<i32>,
    d: vec3<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1022f * _wgslsmith_f_op_f32(arg_0.b.e.x - _wgslsmith_div_f32(-987f, _wgslsmith_f_op_f32(round(arg_0.a.e.x))))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1215f * 1847f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2254f, 488f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.e.x, _wgslsmith_f_op_f32(arg_0.a.e.x * 154f))))));
    let var_0 = Struct_2(arg_0.b, arg_0.a);
    let var_1 = arg_0.b;
    var var_2 = arg_0.b.d.zz;
    var var_3 = u_input.c;
    return var_0;
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_2) -> vec2<i32> {
    let var_0 = Struct_1(~select(_wgslsmith_sub_vec2_i32(arg_2.a.c, vec2<i32>(u_input.b, -1i)), ~abs(vec2<i32>(u_input.b, -1i)), arg_2.b.d.yx), false, firstLeadingBit(arg_2.b.a), !arg_2.b.d, _wgslsmith_f_op_vec4_f32(arg_2.a.e * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2.a.e))));
    var var_1 = _wgslsmith_sub_i32(firstTrailingBit(var_0.a.x), _wgslsmith_add_i32(var_0.a.x, 1i));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(arg_2.a.e.wz, var_0.e.yy, !(!(0i < var_0.a.x)) | arg_2.b.b));
    var_1 = -19836i;
    let var_3 = arg_2.a;
    return vec2<i32>(-3546i, abs(-(~u_input.b)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>) -> f32 {
    let var_0 = func_2(Struct_2(arg_0, func_2(func_2(func_2(Struct_2(arg_1, arg_1)))).b)).a;
    var var_1 = 40762u;
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1598f, arg_1.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e.x * 1465f))))));
    return 1000f;
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 2147483647i), -vec2<i32>(13991i, 0i)), reverseBits(vec2<i32>(u_input.b, u_input.b))), ~_wgslsmith_mult_i32(u_input.b, 0i) > u_input.b, _wgslsmith_clamp_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(-4568i, u_input.b), vec2<i32>(u_input.b, u_input.b)), func_3(-1000f, ~1u, func_2(Struct_2(Struct_1(vec2<i32>(u_input.b, -59296i), true, vec2<i32>(6456i, 55133i), vec3<bool>(true, true, false), vec4<f32>(463f, 919f, 328f, -1903f)), Struct_1(vec2<i32>(u_input.b, 8615i), true, vec2<i32>(u_input.b, 0i), vec3<bool>(true, true, false), vec4<f32>(-696f, -586f, 1070f, -2136f))))), func_2(Struct_2(Struct_1(vec2<i32>(7987i, u_input.b), true, vec2<i32>(u_input.b, -6008i), vec3<bool>(false, true, false), vec4<f32>(1055f, -193f, -1000f, 1000f)), Struct_1(vec2<i32>(u_input.b, -27301i), false, vec2<i32>(u_input.b, 2182i), vec3<bool>(true, false, true), vec4<f32>(-171f, 374f, -1000f, -1000f)))).a.c), vec3<bool>(all(vec3<bool>(false, false, true)), true, func_2(func_2(Struct_2(Struct_1(vec2<i32>(u_input.b, -33819i), true, vec2<i32>(27819i, -1i), vec3<bool>(true, true, true), vec4<f32>(-929f, -153f, -923f, -303f)), Struct_1(vec2<i32>(-1i, u_input.b), false, vec2<i32>(-1i, u_input.b), vec3<bool>(false, false, true), vec4<f32>(1306f, -601f, -244f, -205f))))).b.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(710f, -362f, 1746f, 1671f))) + vec4<f32>(-1000f, 2568f, 477f, 1544f)))), Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, _wgslsmith_sub_i32(-1i, u_input.b)), _wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(0i, u_input.b)), _wgslsmith_mod_vec2_i32(vec2<i32>(-20361i, -29339i), vec2<i32>(-20995i, -23826i)))), all(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false)), -max(-vec2<i32>(-95083i, u_input.b), vec2<i32>(0i, 4213i)), vec3<bool>(true, any(vec4<bool>(true, false, false, true)), any(vec4<bool>(false, false, true, false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-func_2(Struct_2(Struct_1(vec2<i32>(u_input.b, u_input.b), true, vec2<i32>(22790i, u_input.b), vec3<bool>(false, true, false), vec4<f32>(-1524f, 1591f, -1502f, 1726f)), Struct_1(vec2<i32>(0i, -29661i), true, vec2<i32>(22891i, u_input.b), vec3<bool>(true, false, false), vec4<f32>(-2541f, -495f, -2139f, -756f)))).a.e) - vec4<f32>(_wgslsmith_f_op_f32(-1412f + -1492f), _wgslsmith_f_op_f32(f32(-1f) * -849f), _wgslsmith_div_f32(725f, -189f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), firstLeadingBit(-_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(u_input.b, -10836i), vec2<i32>(u_input.b, 58246i)) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.c) ^ vec2<u32>(u_input.c, u_input.c), ~vec2<u32>(u_input.a, u_input.c)) % vec2<u32>(32u)))));
    let var_1 = !(!((func_2(Struct_2(Struct_1(vec2<i32>(u_input.b, 178i), false, vec2<i32>(0i, u_input.b), vec3<bool>(false, true, false), vec4<f32>(1204f, 241f, 325f, -525f)), Struct_1(vec2<i32>(0i, u_input.b), true, vec2<i32>(u_input.b, -70405i), vec3<bool>(false, false, false), vec4<f32>(578f, -1418f, -1000f, 2153f)))).b.d.x && true) == true));
    global0 = -921f;
    let var_2 = vec2<f32>(-420f, _wgslsmith_f_op_f32(513f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(319f * _wgslsmith_f_op_f32(abs(154f))) - -198f)));
    let var_3 = vec3<bool>((~(~u_input.c) | ~u_input.c) > ~_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(30288u, u_input.c, 4294967295u, u_input.c)), ~vec4<u32>(u_input.a, 83905u, u_input.a, 5907u)), -6369i > _wgslsmith_sub_i32(u_input.b, _wgslsmith_mod_i32(u_input.b << (u_input.a % 32u), u_input.b & u_input.b)), !var_1);
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(func_1(), -u_input.b, -_wgslsmith_mult_i32(firstTrailingBit(-16964i), -1i)), vec3<i32>(u_input.b, max(min(2147483647i, -1i), ~u_input.b), (~u_input.b ^ _wgslsmith_clamp_i32(u_input.b, u_input.b, u_input.b)) << (1u % 32u)));
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1756f - func_2(Struct_2(Struct_1(var_0.xx, true, var_0.yy, vec3<bool>(true, true, false), vec4<f32>(1405f, 281f, 1082f, -961f)), Struct_1(vec2<i32>(var_0.x, -2147483647i), true, vec2<i32>(16198i, 1i), vec3<bool>(true, false, false), vec4<f32>(1092f, -1000f, -1711f, 1693f)))).a.e.x)))))));
    global0 = 1000f;
    let var_1 = vec2<f32>(368f, _wgslsmith_f_op_f32(max(550f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-309f, _wgslsmith_f_op_f32(1286f + 124f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-786f - -1021f)))))));
    let var_2 = u_input.c;
    var var_3 = vec2<bool>(true, true);
    var var_4 = func_2(func_2(Struct_2(Struct_1(-vec2<i32>(var_0.x, var_0.x), var_3.x | var_3.x, vec2<i32>(u_input.b, 0i) << (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)), select(vec3<bool>(var_3.x, var_3.x, true), vec3<bool>(var_3.x, true, var_3.x), false), _wgslsmith_f_op_vec4_f32(vec4<f32>(1416f, var_1.x, var_1.x, -1119f) * vec4<f32>(284f, var_1.x, 1460f, -1186f))), func_2(Struct_2(Struct_1(vec2<i32>(21390i, 5707i), false, var_0.xy, vec3<bool>(false, var_3.x, var_3.x), vec4<f32>(-178f, var_1.x, 456f, var_1.x)), Struct_1(var_0.yy, var_3.x, var_0.yx, vec3<bool>(false, false, false), vec4<f32>(1301f, -1095f, 100f, var_1.x)))).a)));
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-219f + -226f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2019f)) * 608f)));
}

