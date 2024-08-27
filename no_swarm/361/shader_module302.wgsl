struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: vec3<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 672u;

var<private> global1: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(Struct_1(vec2<bool>(true, false), false, vec2<bool>(false, true), false), 15215u), Struct_2(Struct_1(vec2<bool>(false, true), true, vec2<bool>(false, true), true), 1u), Struct_2(Struct_1(vec2<bool>(false, true), true, vec2<bool>(false, false), false), 32142u), Struct_2(Struct_1(vec2<bool>(true, false), false, vec2<bool>(true, true), false), 0u), Struct_2(Struct_1(vec2<bool>(false, true), true, vec2<bool>(false, false), false), 1u), Struct_2(Struct_1(vec2<bool>(true, true), false, vec2<bool>(false, false), true), 1u), Struct_2(Struct_1(vec2<bool>(true, false), false, vec2<bool>(false, false), false), 4294967295u), Struct_2(Struct_1(vec2<bool>(true, true), false, vec2<bool>(false, true), true), 1u), Struct_2(Struct_1(vec2<bool>(false, true), false, vec2<bool>(true, true), false), 27853u), Struct_2(Struct_1(vec2<bool>(false, true), false, vec2<bool>(false, false), false), 4294967295u), Struct_2(Struct_1(vec2<bool>(true, true), false, vec2<bool>(true, false), true), 0u), Struct_2(Struct_1(vec2<bool>(false, true), false, vec2<bool>(false, false), true), 38428u), Struct_2(Struct_1(vec2<bool>(false, true), false, vec2<bool>(false, false), true), 0u), Struct_2(Struct_1(vec2<bool>(false, true), false, vec2<bool>(true, false), false), 11265u), Struct_2(Struct_1(vec2<bool>(true, false), true, vec2<bool>(true, true), true), 4294967295u), Struct_2(Struct_1(vec2<bool>(false, true), false, vec2<bool>(false, false), false), 16704u), Struct_2(Struct_1(vec2<bool>(false, false), false, vec2<bool>(false, false), false), 4294967295u), Struct_2(Struct_1(vec2<bool>(true, true), true, vec2<bool>(true, true), false), 22998u), Struct_2(Struct_1(vec2<bool>(true, false), false, vec2<bool>(false, true), true), 3857u), Struct_2(Struct_1(vec2<bool>(false, true), true, vec2<bool>(false, false), true), 4156u), Struct_2(Struct_1(vec2<bool>(false, true), true, vec2<bool>(true, false), false), 4294967295u), Struct_2(Struct_1(vec2<bool>(true, false), false, vec2<bool>(false, true), false), 1u), Struct_2(Struct_1(vec2<bool>(true, false), false, vec2<bool>(true, true), true), 12987u), Struct_2(Struct_1(vec2<bool>(true, false), true, vec2<bool>(true, true), false), 50516u), Struct_2(Struct_1(vec2<bool>(false, false), false, vec2<bool>(true, false), false), 33831u), Struct_2(Struct_1(vec2<bool>(true, false), false, vec2<bool>(false, true), false), 1u), Struct_2(Struct_1(vec2<bool>(true, false), false, vec2<bool>(true, true), true), 1u), Struct_2(Struct_1(vec2<bool>(false, false), true, vec2<bool>(true, false), true), 0u), Struct_2(Struct_1(vec2<bool>(false, false), true, vec2<bool>(false, false), true), 0u), Struct_2(Struct_1(vec2<bool>(true, false), true, vec2<bool>(true, true), true), 29578u), Struct_2(Struct_1(vec2<bool>(false, true), true, vec2<bool>(true, false), false), 77852u), Struct_2(Struct_1(vec2<bool>(false, true), false, vec2<bool>(true, false), true), 27375u));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: u32, arg_3: vec3<bool>) -> vec4<bool> {
    global0 = _wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(arg_0.xx & vec2<u32>(arg_2, 4294967295u), arg_0.zy | vec2<u32>(0u, arg_2)), ~arg_0.zy);
    global1 = array<Struct_2, 32>();
    global1 = array<Struct_2, 32>();
    let var_0 = Struct_1(select(vec2<bool>(arg_3.x, _wgslsmith_f_op_f32(713f + arg_1) > _wgslsmith_f_op_f32(min(arg_1, arg_1))), vec2<bool>(true, true), arg_3.xz), all(!(!(!arg_3.xz))), !arg_3.xz, false);
    let var_1 = !select(arg_3, !vec3<bool>(true, false, arg_3.x), arg_3.x);
    return vec4<bool>(var_0.b, var_1.x, var_0.a.x, !all(vec4<bool>(arg_3.x, true, false, 10014u >= arg_0.x)));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<bool>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-996f - -1247f) - -647f)))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-678f, 1f)));
    let var_1 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 2923u, 51575u), vec3<u32>(1u, 1u, 1u)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(13744u, 58878u, 0u))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(859f, 1030f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1521f, 407f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-380f)), _wgslsmith_div_f32(504f, -122f)))));
    var var_3 = firstLeadingBit(_wgslsmith_mod_u32(var_1, var_1));
    var var_4 = select(!vec2<bool>(false, arg_0.x), arg_1, vec2<bool>(true, true));
    return arg_0.yy;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1232f);
    var var_1 = firstTrailingBit(select(vec3<i32>(11879i, _wgslsmith_dot_vec3_i32(select(u_input.b.wyy, vec3<i32>(3502i, u_input.c.x, u_input.b.x), vec3<bool>(true, true, true)), vec3<i32>(u_input.c.x, u_input.c.x, -3753i)), 24483i), -(vec3<i32>(-1i) * -u_input.b.yww), false));
    let var_2 = 4294967295u;
    var var_3 = countOneBits(_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(0u, var_2, var_2)) & vec3<u32>(~var_2, 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_2, 11780u), vec3<u32>(var_2, 0u, var_2))), _wgslsmith_mult_vec3_u32(~abs(vec3<u32>(var_2, var_2, var_2)), vec3<u32>(var_2, 1u, 1u & var_2))));
    var var_4 = ~0u;
    return Struct_1(select(func_4(select(func_3(vec3<u32>(4294967295u, 4294967295u, var_3.x), 1197f, 96536u, vec3<bool>(false, false, false)), vec4<bool>(true, true, true, true), true), select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true))), vec2<bool>(true, var_3.x > _wgslsmith_dot_vec2_u32(vec2<u32>(var_3.x, 1u), vec2<u32>(var_3.x, 4294967295u))), vec2<bool>(all(vec2<bool>(false, true)) && true, func_4(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), false), vec2<bool>(true, true)).x)), !((select(false, true, false) != true) == (var_3.x < 4294967295u)), !(!vec2<bool>(true, select(false, true, false))), !all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true)));
}

fn func_1() -> Struct_1 {
    let var_0 = -2181i <= u_input.b.x;
    let var_1 = global1[_wgslsmith_index_u32(abs(55937u) | firstTrailingBit(_wgslsmith_mult_u32(~4294967295u, 28733u)), 32u)];
    global0 = 1u;
    var var_2 = true;
    let var_3 = Struct_2(func_2(), abs(var_1.b));
    return Struct_1(vec2<bool>((25208u | ~var_1.b) < ~(~62496u), !var_3.a.c.x), func_2().a.x, !var_3.a.a, true);
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> vec2<bool> {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(24757u, _wgslsmith_dot_vec3_u32(vec3<u32>(select(1u, 44122u, arg_0.b), ~reverseBits(10367u), 1u), select(_wgslsmith_mult_vec3_u32(max(vec3<u32>(25673u, 30071u, 0u), vec3<u32>(0u, 0u, 26705u)), vec3<u32>(1u, 1u, 1u)), vec3<u32>(1u, 1u, 1u), false))), 32u)];
    var var_1 = u_input.a;
    let var_2 = vec2<u32>(var_0.b, _wgslsmith_mod_u32(_wgslsmith_div_u32(countOneBits(var_0.b | 1u), abs(var_0.b)), var_0.b));
    let var_3 = firstTrailingBit(var_0.b);
    let var_4 = true;
    return !(!(!var_0.a.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!(!func_5(func_1(), true)), !(!func_4(vec4<bool>(true, true, false, false), vec2<bool>(true, true)).x && false), select(!vec2<bool>(func_1().b, true), func_1().c, func_5(func_1(), all(vec2<bool>(false, true)) & all(vec2<bool>(false, false))).x), true);
    global0 = 14456u;
    global1 = array<Struct_2, 32>();
    var var_1 = var_0;
    var var_2 = 368f;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_div_i32(u_input.c.x, ~(~u_input.c.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(-1082f, 1000f), vec2<f32>(-503f, -326f)))) + vec2<f32>(_wgslsmith_f_op_f32(-580f * -394f), _wgslsmith_f_op_f32(889f - 1582f))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -131f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-160f, -685f) + vec2<f32>(-926f, -1123f)))))), ~(~(~1u)), _wgslsmith_clamp_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 0u, 7200u), vec3<u32>(12996u, 25813u, 0u), vec3<u32>(1u, 89090u, 22382u)), vec3<u32>(1u, ~44356u, 117118u), vec3<u32>(~1u, min(4294967295u, 1u), 20875u)) | ~firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(84802u, 0u, 1703u), vec3<u32>(12340u, 4294967295u, 12337u), vec3<u32>(1183u, 78127u, 1u))), vec4<u32>(reverseBits(~(~0u)), 4662u >> (firstLeadingBit(select(72806u, 46581u, var_1.b)) % 32u), 1u, abs(_wgslsmith_sub_u32(~1u, ~15755u))));
}

