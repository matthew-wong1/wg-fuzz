struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec2<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: bool = false;

var<private> global2: i32 = -1i;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: f32, arg_2: vec2<i32>) -> vec3<bool> {
    var var_0 = Struct_1(!select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true), any(vec3<bool>(true, true, true))), vec4<bool>(false, false, true, select(true, true, false)), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(arg_1 + arg_1), arg_1))))), true);
    var_0 = Struct_1(select(!select(!vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x), !vec4<bool>(var_0.a.x, var_0.a.x, true, true), !vec4<bool>(true, var_0.c, true, false)), var_0.a, !((13000u | u_input.a) >= ~u_input.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(var_0.b, var_0.b)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_1)), _wgslsmith_f_op_f32(var_0.b.x + -522f)) - var_0.b)), true);
    var var_1 = _wgslsmith_clamp_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 11923u, 1u, 0u), vec4<u32>(87633u, u_input.a, 37677u, 0u)) >> (abs(~vec4<u32>(u_input.a, 1u, u_input.a, u_input.a)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_dot_vec2_u32(max(firstLeadingBit(vec2<u32>(u_input.a, 24110u)), firstTrailingBit(vec2<u32>(4294967295u, 46927u))), ~vec2<u32>(u_input.a, 8545u)), 14257u, u_input.a & ~u_input.a, _wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(29282u, u_input.a, u_input.a, 24760u)), reverseBits(~vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a)))), vec4<u32>(9475u | _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a, 0u), u_input.a), _wgslsmith_div_u32(u_input.a >> (1u % 32u), _wgslsmith_mult_u32(0u, abs(1u))), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.a, 54089u)), vec2<u32>(~52534u, 64308u)), firstLeadingBit(abs(u_input.a)) | reverseBits(u_input.a)));
    var var_2 = 1i;
    var var_3 = _wgslsmith_clamp_u32(select(90350u, ~27839u << (_wgslsmith_sub_u32(~var_1.x, reverseBits(u_input.a)) % 32u), var_0.a.x), var_1.x, var_1.x);
    return vec3<bool>(var_0.c, var_1.x <= _wgslsmith_div_u32(69364u & var_1.x, ~(~var_1.x)), all(vec4<bool>(var_0.a.x, all(vec4<bool>(false, false, true, true)), true, !(!var_0.c))));
}

fn func_2() -> u32 {
    var var_0 = !(!select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), func_3(~vec4<i32>(-1i, 2147483647i, u_input.b.x, u_input.b.x), -433f, _wgslsmith_sub_vec2_i32(vec2<i32>(-54618i, u_input.b.x), u_input.b)), all(vec2<bool>(true, true))));
    var var_1 = ~vec4<u32>(~(~(~u_input.a)), u_input.a, u_input.a & max(0u, select(u_input.a, u_input.a, var_0.x)), 31097u);
    var_0 = vec3<bool>(var_0.x, !var_0.x, !((var_1.x == u_input.a) || all(var_0.zy)));
    var var_2 = ~max(vec2<u32>(_wgslsmith_mult_u32(var_1.x, 52567u), 1u), vec2<u32>(u_input.a, ~1u) | (~vec2<u32>(var_1.x, u_input.a) | ~var_1.wx));
    var_2 = ~_wgslsmith_sub_vec2_u32(~(var_1.wx & (var_1.yx & vec2<u32>(4294967295u, 0u))), abs(_wgslsmith_div_vec2_u32(vec2<u32>(1u, var_2.x) | vec2<u32>(var_1.x, 11130u), vec2<u32>(4294967295u, var_2.x))));
    return 20080u;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: vec2<u32>) -> f32 {
    global2 = 82071i;
    global2 = -_wgslsmith_div_i32(_wgslsmith_mod_i32(~(~0i), u_input.b.x), min(~1i, max(2109i, u_input.b.x >> (arg_3.x % 32u))));
    var var_0 = (~(~vec3<i32>(0i, -22112i, arg_2) & -vec3<i32>(0i, arg_2, -29550i)) << (vec3<u32>(_wgslsmith_clamp_u32(u_input.a, firstLeadingBit(u_input.a), ~arg_3.x), ~_wgslsmith_mod_u32(4294967295u, arg_3.x), ~abs(42172u)) % vec3<u32>(32u))) >> (vec3<u32>(~83020u, arg_3.x & _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1318u, 18548u, 12840u), vec3<u32>(0u, 96873u, arg_3.x)), abs(0u)), _wgslsmith_mult_u32(func_2(), _wgslsmith_div_u32(37267u, func_2()))) % vec3<u32>(32u));
    let var_1 = var_0.zx;
    let var_2 = ~(~(max(select(4294967295u, arg_3.x, arg_0.a.x), ~83242u) | 1u));
    return arg_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-426f + _wgslsmith_f_op_f32(abs(-1000f)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(vec4<bool>(false, true, true, true), vec2<f32>(1196f, 2208f), false), Struct_1(vec4<bool>(false, true, false, false), vec2<f32>(932f, -290f), true), u_input.b.x, vec2<u32>(0u, u_input.a))) - _wgslsmith_f_op_f32(f32(-1f) * -536f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) + _wgslsmith_f_op_f32(min(-792f, _wgslsmith_f_op_f32(abs(884f))))));
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(Struct_1(vec4<bool>(true, all(vec2<bool>(false, true)), true, select(false, false, true)), _wgslsmith_div_vec2_f32(vec2<f32>(1432f, -496f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1007f, 1000f), vec2<f32>(893f, -431f), vec2<bool>(true, false)))), true), Struct_1(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1580f, -1000f))), select(true, true, true)), _wgslsmith_mult_i32(u_input.b.x, 1i), firstTrailingBit(firstTrailingBit(vec2<u32>(u_input.a, u_input.a))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(833f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(vec4<bool>(true, false, true, true), vec2<f32>(141f, -847f), true), Struct_1(vec4<bool>(true, false, false, true), vec2<f32>(-473f, 1620f), true), u_input.b.x, vec2<u32>(22872u, u_input.a))) * -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -451f))));
    var var_0 = u_input.a;
    var var_1 = 13454u;
    let var_2 = Struct_1(vec4<bool>(all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false))), any(vec2<bool>(true, true)), func_3(countOneBits(abs(vec4<i32>(-28196i, -1i, 1i, u_input.b.x))), 1453f, vec2<i32>(max(-2147483647i, -42837i), u_input.b.x)).x, any(vec3<bool>(true, true, select(true, false, false)))), vec2<f32>(557f, _wgslsmith_f_op_f32(ceil(-1492f))), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(abs(_wgslsmith_add_vec2_i32(u_input.b, u_input.b) >> ((vec2<u32>(u_input.a, 1u) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u))), firstLeadingBit(u_input.b)), _wgslsmith_dot_vec2_u32(max(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(15634u, u_input.a)), vec2<u32>(20527u, 4294967295u)), vec2<u32>(max(u_input.a, u_input.a), abs(u_input.a))) | (~u_input.a >> (u_input.a % 32u)), min(u_input.a, u_input.a), var_2.b, _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.b, min(-vec2<i32>(u_input.b.x, 0i), _wgslsmith_add_vec2_i32(u_input.b, u_input.b))), vec2<i32>(1i, u_input.b.x), vec2<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b.x, u_input.b.x), u_input.b ^ u_input.b), (-5551i << (u_input.a % 32u)) >> (_wgslsmith_mult_u32(4294967295u, u_input.a) % 32u))));
}

