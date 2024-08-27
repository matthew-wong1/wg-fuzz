struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<u32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: vec3<f32>,
    d: bool,
    e: vec2<bool>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(507f + 151f) + _wgslsmith_f_op_f32(round(2057f))))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1064f - -737f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2252f * -1000f))))));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-362f - _wgslsmith_f_op_f32(f32(-1f) * -203f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(180f))))) * 1f) > -2062f;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-461f, 812f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-938f - 303f))))), 160f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2087f + 338f) - _wgslsmith_f_op_f32(f32(-1f) * -999f))), _wgslsmith_f_op_f32(f32(-1f) * -667f))));
    let var_2 = 356f;
    let var_3 = 49439u;
    return ~countOneBits(4294967295u);
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_2(!(!select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false), true)), Struct_1(~countOneBits(u_input.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(30465u, _wgslsmith_dot_vec2_u32(vec2<u32>(54160u, 21931u), u_input.b), min(u_input.b.x, 4294967295u)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 4294967295u, 55925u), vec4<u32>(u_input.a, 100582u, u_input.a, u_input.b.x)), 24815u, select(u_input.b.x, 32000u, false)))), ~vec4<u32>(4294967295u, ~62767u, 93387u, u_input.a), _wgslsmith_mult_u32(_wgslsmith_div_u32(~(~u_input.b.x), func_3(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, 52569i), vec2<i32>(0i, 1i)))), ~(u_input.a << (firstTrailingBit(1u) % 32u))));
    var var_1 = 28019i;
    var var_2 = _wgslsmith_f_op_f32(-713f + -1368f);
    let var_3 = Struct_3(Struct_1(min(countOneBits(19053u) & ~u_input.b.x, u_input.a), ~(~4294967295u)), -(~(~_wgslsmith_mod_i32(46250i, 2222i))));
    var var_4 = 1i;
    return Struct_4(all(!vec2<bool>(true, false || var_0.a.x)), var_0, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1214f + 314f) * 625f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -109f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(680f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -242f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(820f)))))), any(vec2<bool>(!var_0.a.x, any(!vec4<bool>(false, var_0.a.x, false, true)))), vec2<bool>(var_0.a.x, all(select(select(vec4<bool>(var_0.a.x, var_0.a.x, true, false), vec4<bool>(var_0.a.x, true, true, var_0.a.x), true), vec4<bool>(true, var_0.a.x, false, var_0.a.x), vec4<bool>(false, false, var_0.a.x, true)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: i32, arg_3: Struct_5) -> f32 {
    var var_0 = !select(vec4<bool>(true, true, all(vec3<bool>(true, false, true)), arg_1.a), select(!(!vec4<bool>(arg_1.d, true, arg_1.b.a.x, false)), select(vec4<bool>(arg_1.b.a.x, arg_1.a, arg_1.e.x, false), select(vec4<bool>(true, true, true, arg_1.e.x), vec4<bool>(arg_1.b.a.x, arg_1.d, true, false), arg_1.b.a.x), vec4<bool>(false, arg_1.a, true, arg_1.b.a.x)), select(vec4<bool>(arg_1.a, false, true, true), vec4<bool>(true, false, arg_1.b.a.x, true), true)), !select(vec4<bool>(true, arg_1.b.a.x, false, false), vec4<bool>(false, false, false, true), !arg_1.d));
    var var_1 = arg_2;
    var_1 = arg_2;
    var var_2 = func_2().b;
    var var_3 = false;
    return _wgslsmith_f_op_f32(f32(-1f) * -961f);
}

fn func_1() -> Struct_1 {
    let var_0 = true;
    var var_1 = 1i;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(898f, -1000f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-496f, -399f), vec2<f32>(478f, -507f))))), func_2(), -2147483647i, Struct_5(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1496f, -282f), vec2<f32>(798f, 598f))), Struct_1(u_input.b.x, u_input.a), func_2().b.b, -17883i, vec3<f32>(1f, 1f, 1f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-332f + 980f), _wgslsmith_f_op_f32(ceil(1035f))))) - _wgslsmith_f_op_f32(710f + 233f)));
    global0 = 807f;
    var var_2 = _wgslsmith_mult_vec4_i32(abs(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -45555i, 50085i, 31487i), ~vec4<i32>(-28473i, 5155i, 56414i, -4179i), vec4<i32>(0i, -20148i, -75653i, -45190i)), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, 71079i, 9504i, 0i), vec4<i32>(-34459i, 24349i, -2147483647i, -19268i)), vec4<bool>(true, true, false, true))), firstTrailingBit(vec4<i32>(-1i, 1i, -1i, 1i >> (~4294967295u % 32u))));
    return func_2().b.b;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>) -> i32 {
    var var_0 = Struct_1(~u_input.a, _wgslsmith_mult_u32(u_input.a, arg_0.b));
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -563f) + _wgslsmith_f_op_f32(f32(-1f) * -553f)) * 197f), 440f)), _wgslsmith_f_op_f32(-168f - -281f), true));
    var var_2 = _wgslsmith_mult_i32(1i, 40102i);
    var var_3 = func_2().b.c.x;
    var var_4 = ~(~vec4<i32>(-2147483647i, abs(~15605i), ~min(0i, 1i), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-2147483647i, -1i)), vec2<i32>(-1i, 1i))));
    return var_4.x;
}

fn func_6(arg_0: bool, arg_1: Struct_2, arg_2: vec3<i32>) -> vec4<f32> {
    global0 = -1000f;
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -352f);
    global0 = _wgslsmith_f_op_f32(-431f + 997f);
    let var_0 = func_2();
    var var_1 = Struct_2(!func_2().b.a, func_2().b.b, var_0.b.c, 4294967295u);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, var_0.c.x), var_0.c.xz), var_0, -1i, Struct_5(vec2<f32>(var_0.c.x, var_0.c.x), var_0.b.b, var_0.b.b, -67548i, vec3<f32>(-608f, var_0.c.x, var_0.c.x))))), _wgslsmith_f_op_f32(f32(-1f) * -769f), var_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -112f)) * _wgslsmith_f_op_f32(abs(-1000f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_6(true, Struct_2(vec3<bool>(true, true, true), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.b.x, u_input.a), vec3<u32>(1u, u_input.a, u_input.a)), firstLeadingBit(28200u)), countOneBits(vec4<u32>(1u, 65262u, u_input.b.x, 1u) ^ vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x)), ~(~74992u)), vec3<i32>(_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(3387i, -1i)), vec2<i32>(1i, -27817i)), func_5(func_1(), vec2<u32>(u_input.a, 56822u)), 1i | _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, 1i), vec3<i32>(-2147483647i, 8423i, 36900i))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))));
    var var_1 = u_input.b.x;
    var var_2 = select(true, !(!(!any(vec4<bool>(true, false, true, true)))), all(vec2<bool>(true, all(vec4<bool>(true, true, true, true)))));
    let var_3 = _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-_wgslsmith_clamp_i32(0i, -40323i, -9834i), ~_wgslsmith_sub_i32(1i, 246i), _wgslsmith_clamp_i32(~2147483647i, i32(-1i) * -1i, -14500i), max(1i, abs(-48294i))), vec4<i32>(-_wgslsmith_sub_i32(2147483647i, 2147483647i), 1i, 1i, _wgslsmith_dot_vec3_i32(-vec3<i32>(-38903i, -1i, -34867i), vec3<i32>(-1i, -31996i, 2147483647i))), vec4<i32>(_wgslsmith_div_i32(12153i, 35658i), ~(-2147483647i), 0i, abs(-33993i)) >> (func_2().b.c % vec4<u32>(32u))), ~_wgslsmith_div_vec4_i32(-(~vec4<i32>(-54266i, 60356i, -4006i, 1i)), ~vec4<i32>(-1915i, -30083i, 3909i, 71623i)));
    let var_4 = Struct_2(!(!vec3<bool>(true, any(vec2<bool>(false, false)), select(true, true, false))), Struct_1(~(~u_input.a ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 21074u, 49257u), vec3<u32>(17054u, u_input.b.x, 4294967295u))), u_input.a), vec4<u32>(abs(~(~u_input.b.x)), firstLeadingBit(21154u), u_input.b.x, (u_input.a >> (func_3(vec2<i32>(-18217i, var_3)) % 32u)) | u_input.b.x), firstLeadingBit(u_input.a));
    var_1 = _wgslsmith_div_u32(u_input.a | (_wgslsmith_add_u32(11962u, firstLeadingBit(29074u)) | func_1().b), 0u);
    let var_5 = false;
    let var_6 = Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(func_2().c.xy, vec2<f32>(131f, var_0.x)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.x, -471f))))))) - var_0.zx), var_4.b, func_1(), 24997i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(-1258f, _wgslsmith_f_op_f32(1521f - var_0.x))), _wgslsmith_f_op_vec4_f32(func_6(false, Struct_2(var_4.a, var_4.b, vec4<u32>(1u, 0u, 0u, u_input.b.x), var_4.c.x), select(vec3<i32>(var_3, var_3, 1471i), vec3<i32>(15347i, 1282i, var_3), var_4.a.x))).x, -1580f)));
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_6.e.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(0u, _wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(17437u, var_4.d), vec2<u32>(1u, 0u)), countOneBits(u_input.b.x)), 4294967295u)), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), -1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))), var_0.x), select(reverseBits(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(49151i, 8058i, 1i), vec3<i32>(var_3, var_6.d, var_6.d)), vec3<i32>(48067i, var_3, 0i))), _wgslsmith_div_vec3_i32(vec3<i32>(var_3, var_3, 3631i) << (max(var_4.c.wyy, var_4.c.wxz) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(-vec3<i32>(0i, var_6.d, var_3), vec3<i32>(-1i, -24439i, var_3) ^ vec3<i32>(var_3, 2147483647i, var_6.d), vec3<i32>(-39157i, var_6.d, 5717i) >> (vec3<u32>(var_6.b.a, 34099u, 1u) % vec3<u32>(32u)))), true));
}

