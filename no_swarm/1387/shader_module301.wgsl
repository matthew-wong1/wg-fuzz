struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec2<f32>,
    d: f32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.x)))), u_input.b.x, any(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), true)) | !(!all(vec4<bool>(false, true, false, true))), _wgslsmith_f_op_vec4_f32(arg_0 * arg_0));
    var var_1 = 15720u;
    var_1 = abs(~_wgslsmith_dot_vec2_u32(~select(vec2<u32>(4294967295u, 4354u), vec2<u32>(19801u, 53351u), vec2<bool>(false, var_0.c)), ~(~vec2<u32>(var_0.b, 0u))));
    let var_2 = vec2<bool>(true, !var_0.c);
    var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.b, 20931u) | _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.b.xww, vec3<u32>(var_0.b, 55766u, 4294967295u)), _wgslsmith_add_vec3_u32(u_input.b.xxw, vec3<u32>(0u, u_input.b.x, 43525u))), u_input.b.wzw) >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x & u_input.b.x, ~59375u, 0u, var_0.b), abs(~abs(u_input.b))) % 32u);
    return true;
}

fn func_2() -> Struct_2 {
    global0 = func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1f), -705f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1686f), _wgslsmith_f_op_f32(-1719f * 1926f), true)), -1000f)));
    global0 = true;
    let var_0 = Struct_4(vec4<i32>(u_input.a.x, ~u_input.a.x, -_wgslsmith_sub_i32(u_input.a.x | u_input.a.x, _wgslsmith_div_i32(-27434i, u_input.a.x)), -2147483647i), Struct_2(true, select(select(vec2<bool>(true, true), vec2<bool>(true, true), -2147483647i <= u_input.a.x), vec2<bool>(false, true), false)));
    let var_1 = ~abs(u_input.b.zzz);
    global0 = (u_input.a.x >= _wgslsmith_add_i32(min(u_input.a.x, var_0.a.x), reverseBits(var_0.a.x) & ~1i)) == false;
    return Struct_2(all(var_0.b.b), !vec2<bool>(any(select(vec4<bool>(var_0.b.b.x, true, true, true), vec4<bool>(var_0.b.a, var_0.b.b.x, var_0.b.b.x, var_0.b.b.x), vec4<bool>(true, true, var_0.b.b.x, false))), true));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: i32) -> Struct_4 {
    global0 = !(0u >= u_input.b.x);
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(-1930f, -309f)), -620f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1074f, 1448f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(520f, 1000f, -1156f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-163f, -1000f, 416f))), select(vec3<bool>(arg_2.a, arg_2.b.x, arg_0.b.a), vec3<bool>(false, arg_0.b.b.x, arg_2.b.x), arg_0.b.a))), vec3<f32>(_wgslsmith_f_op_f32(-2286f + -389f), _wgslsmith_div_f32(819f, 421f), _wgslsmith_f_op_f32(-1000f + 839f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-226f, 895f, 1211f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-159f, 917f, 1159f), vec3<f32>(1248f, -889f, -1000f), true))))));
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~u_input.b.x), vec2<u32>(firstLeadingBit(select(firstLeadingBit(32177u), 1u, !arg_2.b.x)), 1u));
    var_1 = _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.b.x, firstTrailingBit(min(~23777u, min(1u, u_input.b.x)))), ((u_input.b.x & min(1u, 4294967295u)) | 76092u) << (~u_input.b.x % 32u));
    let var_2 = Struct_3(~(~_wgslsmith_sub_u32(u_input.b.x, _wgslsmith_mult_u32(1u, 0u))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * 504f)), _wgslsmith_div_u32(_wgslsmith_add_u32(0u, 11487u), _wgslsmith_dot_vec2_u32(vec2<u32>(4553u, u_input.b.x), u_input.b.yz)) ^ u_input.b.x, select(2796f != var_0.x, !arg_0.b.b.x & false, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1361f, var_0.x, 196f, -232f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1184f, -867f, -417f, 1171f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(573f, var_0.x, var_0.x, var_0.x))))), var_0.zy, _wgslsmith_div_f32(var_0.x, var_0.x));
    return arg_0;
}

fn func_1(arg_0: u32, arg_1: Struct_4) -> f32 {
    global0 = true;
    let var_0 = arg_1;
    let var_1 = func_4(Struct_4(vec4<i32>(-arg_1.a.x, ~12812i, -u_input.a.x >> (19069u % 32u), 1i), arg_1.b), select(~vec4<i32>(_wgslsmith_sub_i32(2147483647i, u_input.a.x), _wgslsmith_div_i32(7472i, arg_1.a.x), u_input.a.x, -2147483647i << (arg_0 % 32u)), _wgslsmith_clamp_vec4_i32(~vec4<i32>(-10297i, var_0.a.x, 25069i, -2147483647i), arg_1.a, arg_1.a), !(!(!vec4<bool>(arg_1.b.a, true, false, var_0.b.b.x)))), func_2(), _wgslsmith_sub_i32(-max(-u_input.a.x, var_0.a.x | -12182i), 20681i));
    let var_2 = Struct_1(-977f, _wgslsmith_mod_u32(3608u, ~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.b.x, 1u), u_input.b, vec4<u32>(u_input.b.x, 0u, 4294967295u, 18361u)), vec4<u32>(43051u, 0u, 0u, u_input.b.x))), ~_wgslsmith_clamp_u32(17903u, 1u, _wgslsmith_mult_u32(arg_0, arg_0)) < 0u, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-237f))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1018f, 130f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -296f), -1349f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1377f, -1216f, 1000f, -913f) - vec4<f32>(498f, 275f, -1657f, 455f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-173f, -436f, -154f, -1270f) + vec4<f32>(-458f, -1683f, -1749f, 1754f)))))));
    let var_3 = var_2.d.x;
    return _wgslsmith_f_op_f32(-var_3);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(~14321u ^ ~min(~u_input.b.x, min(4294967295u, 17950u)), Struct_1(1070f, u_input.b.x, all(vec3<bool>(all(vec2<bool>(true, false)), false, false)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-936f + -624f), _wgslsmith_div_f32(1324f, 450f), 421f, _wgslsmith_f_op_f32(trunc(-192f)))))), vec2<f32>(-850f, -517f), _wgslsmith_f_op_f32(-1f));
    var var_1 = u_input.b;
    global0 = true;
    var_1 = vec4<u32>(u_input.b.x, ~1u, reverseBits(1u), 16021u);
    var_1 = ~(~(~u_input.b));
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(var_1.x, Struct_4(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i), Struct_2(false, vec2<bool>(false, true))))) * -1399f))), 1f, var_0.b.c));
    var var_3 = u_input.a.x;
    var_3 = _wgslsmith_div_i32(u_input.a.x, reverseBits(u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.d.x), _wgslsmith_f_op_f32(trunc(var_2)), _wgslsmith_f_op_f32(exp2(var_2)), var_2))) * vec4<f32>(1002f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), -755f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(490f)))))), _wgslsmith_add_vec3_u32(~firstTrailingBit(vec3<u32>(40064u, var_1.x, 4294967295u)) & vec3<u32>(~var_0.a, var_0.b.b >> (var_0.b.b % 32u), min(39988u, var_0.a)), abs(min(vec3<u32>(var_1.x, u_input.b.x, var_1.x), vec3<u32>(var_0.a, var_0.b.b, 1u)) | (vec3<u32>(39317u, var_0.b.b, 1u) >> (var_1.zwz % vec3<u32>(32u))))), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(69888u), _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, 67009u, u_input.b.x, 25144u))), var_1.xz), ~1u << (0u % 32u)));
}

