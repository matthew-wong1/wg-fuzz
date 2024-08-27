struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: i32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 4>;

var<private> global1: Struct_1 = Struct_1(vec3<u32>(44086u, 61959u, 20716u), vec3<f32>(-238f, 2330f, -905f), 1i, 661f, true);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec3<u32> {
    global1 = Struct_1(~(~(~global1.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-636f + global1.b.x), 1174f, global1.d) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.b + vec3<f32>(global1.d, 526f, -1054f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d, -1165f, 1266f)))))), u_input.d.x, -1427f, global1.e);
    var var_0 = Struct_2(_wgslsmith_f_op_f32(abs(1269f)));
    let var_1 = global1.e;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1382f, -161f))) - var_0.a) - -307f));
    var_2 = Struct_2(-598f);
    return abs(u_input.e);
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-arg_2.d);
    global1 = arg_2;
    var var_1 = Struct_1(max(vec3<u32>(select(43041u, arg_2.a.x, false) | _wgslsmith_sub_u32(33850u, arg_2.a.x), 1u, 1u), func_3()), _wgslsmith_f_op_vec3_f32(-global1.b), ~_wgslsmith_dot_vec2_i32(arg_0.wx, vec2<i32>(abs(1i), 1i)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(arg_2.b.x)), arg_3.a))), _wgslsmith_f_op_f32(-966f - var_0))), arg_2.e);
    var var_2 = Struct_2(-137f);
    global1 = arg_2;
    return false;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = ~vec4<u32>(~(~u_input.c.x) ^ 0u, _wgslsmith_dot_vec4_u32(~u_input.a, firstTrailingBit(select(vec4<u32>(72844u, 29514u, 38171u, 1u), u_input.a, arg_0))), global1.a.x, 4294967295u);
    var var_1 = vec2<bool>(!(!global1.e), true);
    var var_2 = !all(vec2<bool>(true, false));
    let var_3 = Struct_1(~u_input.e, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(arg_2.b)))), u_input.b, _wgslsmith_f_op_f32(max(-849f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2252f)))))), !(!(_wgslsmith_f_op_f32(-arg_1.a) == -131f)));
    var var_4 = vec2<bool>(!var_1.x, any(select(!vec3<bool>(true, arg_2.e, arg_2.e), vec3<bool>(4294967295u == var_3.a.x, global1.e, true), !(!vec3<bool>(true, global1.e, false)))));
    return vec4<i32>(~(-(~var_3.c)), var_3.c, _wgslsmith_mod_i32(~global1.c, u_input.b) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(arg_2.a.x, var_3.a.x, 1u), abs(42595u)), vec2<u32>(var_0.x, var_0.x)) % 32u), _wgslsmith_add_i32(~_wgslsmith_mult_i32(-u_input.d.x, _wgslsmith_add_i32(29409i, arg_2.c)), arg_2.c));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    global1 = Struct_1(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(~27739u, u_input.c.x & 38396u), _wgslsmith_mult_u32(1u, arg_2.a.x)), ~4294967295u, _wgslsmith_div_u32(~global1.a.x ^ (1u & global1.a.x), global1.a.x)), _wgslsmith_f_op_vec3_f32(-arg_2.b), ~(-(~(~10114i))), global1.b.x, true);
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-437f, 335f, 321f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1323f)), -662f))));
    let var_1 = !(!(!any(vec2<bool>(global1.e, arg_2.e)))) || arg_2.e;
    global0 = array<vec2<f32>, 4>();
    let var_2 = !(!vec4<bool>(select(global1.e, true, true), select(all(vec4<bool>(false, arg_2.e, true, global1.e)), any(vec3<bool>(false, global1.e, false)), true), true, var_0.x >= global1.d));
    return Struct_1(abs(vec3<u32>(_wgslsmith_dot_vec2_u32(arg_2.a.zx, vec2<u32>(global1.a.x, 0u)), (u_input.e.x & 15321u) | 1u, 0u)), vec3<f32>(arg_2.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1655f - 187f))))), 593f), arg_0.x, arg_2.b.x, (_wgslsmith_add_i32(firstLeadingBit(arg_3), -37590i) > 1i) && all(select(vec2<bool>(true, false), var_2.wz, var_2.x)));
}

fn func_1(arg_0: vec4<f32>) -> Struct_2 {
    let var_0 = func_5(vec4<i32>(1i, 1i, global1.c, u_input.b), select(-func_4(func_2(vec4<i32>(16309i, 10887i, global1.c, -1i), Struct_2(-1000f), Struct_1(vec3<u32>(0u, global1.a.x, 6253u), vec3<f32>(global1.b.x, arg_0.x, 1840f), 0i, global1.b.x, true), Struct_2(-381f)), Struct_2(190f), Struct_1(vec3<u32>(55951u, 1u, 1u), global1.b, global1.c, -605f, global1.e)), abs(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.c, -40407i), u_input.d.zx), global1.c, ~global1.c, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, -20997i, -55817i, 1245i), vec4<i32>(global1.c, 739i, 1i, global1.c)))), !select(select(vec4<bool>(false, true, global1.e, true), vec4<bool>(global1.e, true, true, global1.e), false), vec4<bool>(global1.e, false, false, true), global1.e)), Struct_1(vec3<u32>(~func_3().x, firstLeadingBit(global1.a.x), _wgslsmith_clamp_u32(global1.a.x & 6980u, 21694u, ~global1.a.x)), vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1199f, global1.d))), -108f), global1.c, arg_0.x, global1.e), 1i);
    var var_1 = 0i;
    let var_2 = true;
    var var_3 = ~vec2<u32>(global1.a.x, 63815u);
    var var_4 = ~abs(vec2<u32>(~29703u, _wgslsmith_add_u32(23642u, 29089u)));
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))))) - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-397f, var_0.d), _wgslsmith_f_op_f32(round(global1.d)), false))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(~(~u_input.e) & (select(vec3<u32>(u_input.a.x, 4294967295u, 2873u) >> (global1.a % vec3<u32>(32u)), u_input.e, false) << (u_input.e % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.x, 102f, 962f) + vec3<f32>(global1.d, global1.d, global1.b.x)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1174f, global1.d, global1.b.x))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-2002f, -1000f, global1.d))) * vec3<f32>(-1000f, global1.d, global1.d)))), _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(global1.c, -21682i, ~(-2147483647i))), 1181f, false);
    let var_0 = func_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x)) + _wgslsmith_f_op_f32(max(-647f, global1.d))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), global1.b.x, global1.b.x));
    let var_1 = countOneBits(u_input.d.x);
    global0 = array<vec2<f32>, 4>();
    var var_2 = Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-495f, _wgslsmith_f_op_f32(min(382f, var_0.a)))) * _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(var_0.a * var_0.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, -462f, 141f), vec3<f32>(global1.d, var_0.a, var_0.a))), global1.b) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.b))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -982f)), 1048f, _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(max(-855f, var_0.a))))), -vec4<i32>(global1.c, 21013i, -(~2147483647i), func_5(reverseBits(vec4<i32>(-13816i, global1.c, u_input.b, u_input.b)), ~vec4<i32>(-2147483647i, var_1, var_1, u_input.d.x), Struct_1(u_input.e, global1.b, -6171i, global1.d, true), -35490i).c));
}

