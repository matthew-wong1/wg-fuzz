struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1211f;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_2(arg_0, any(select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), true), vec3<bool>(true, false, u_input.c.x >= 1i), true)), select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(any(vec4<bool>(true, true, true, true)) & false, true)), arg_2);
    var var_1 = Struct_1(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, ~0u, 21351u, var_0.a.a.x ^ var_0.d.a.x), arg_2.a << ((vec4<u32>(arg_0.a.x, u_input.a.x, arg_1, arg_1) | vec4<u32>(17816u, 16575u, u_input.a.x, 43690u)) % vec4<u32>(32u))), arg_1, 47076u, arg_2.a.x), var_0.a.b);
    let var_2 = !vec2<bool>(false, var_0.b);
    let var_3 = -firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(-u_input.b.x, max(u_input.c.x, -1i)), ~u_input.c.zx));
    global0 = -656f;
    return ~_wgslsmith_add_u32(~(firstTrailingBit(0u) >> (25358u % 32u)), _wgslsmith_div_u32(select(_wgslsmith_dot_vec3_u32(u_input.a, arg_2.a.xyx), firstLeadingBit(u_input.a.x), var_0.b), ~var_1.a.x));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec4<u32>, arg_3: vec3<u32>) -> f32 {
    var var_0 = Struct_1(vec4<u32>(arg_2.x, ~func_3(Struct_1(arg_2, arg_0.d.b), 31366u, Struct_1(vec4<u32>(arg_1.x, 1u, 7814u, 0u), arg_0.d.b)) << (_wgslsmith_dot_vec4_u32(countOneBits(arg_2), abs(vec4<u32>(u_input.a.x, arg_0.d.a.x, arg_1.x, u_input.a.x))) % 32u), func_3(arg_0.a, u_input.a.x, arg_0.d), firstLeadingBit(27122u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0.a.b.x, arg_0.a.b.x))) - arg_0.a.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.b.x, -373f) - _wgslsmith_f_op_vec2_f32(arg_0.a.b + vec2<f32>(-761f, -571f))), !all(vec2<bool>(arg_0.c.x, false))))));
    global0 = _wgslsmith_f_op_f32(max(269f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.a.b.x - -345f)))));
    global0 = -710f;
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -331f) * _wgslsmith_f_op_f32(arg_0.a.b.x - arg_0.a.b.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(167f * arg_0.d.b.x)))), -190f));
    let var_1 = u_input.c.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.b.x))) + -833f);
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>) -> Struct_2 {
    var var_0 = ~abs(vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, arg_0.a.a.x, arg_0.a.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, arg_0.d.a.x, 39678u)), ~_wgslsmith_mult_u32(arg_0.d.a.x, 0u)));
    let var_1 = Struct_1(vec4<u32>(~0u, 62359u, var_0.x, arg_0.a.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0.a.b.x, arg_0.a.b.x))))) - vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a.b.x), arg_0.d.b.x)) + vec2<f32>(_wgslsmith_f_op_f32(func_2(arg_0, _wgslsmith_div_vec2_u32(vec2<u32>(0u, 49094u), vec2<u32>(4294967295u, u_input.a.x)), arg_0.d.a, vec3<u32>(4294967295u, arg_0.a.a.x, 1u))), -1000f)));
    var var_2 = arg_0.d;
    var var_3 = var_1.b.x;
    var var_4 = arg_0.b;
    return Struct_2(arg_0.a, true, select(!arg_0.c, select(arg_0.c, !arg_0.c, 4294967295u <= ~var_2.a.x), any(select(!vec3<bool>(false, arg_0.c.x, false), vec3<bool>(arg_0.c.x, true, arg_0.b), true))), var_1);
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -109f) - func_1(func_1(Struct_2(func_1(arg_2, vec2<i32>(u_input.c.x, -42124i)).d, arg_1.a.a.x == 4433u, arg_1.c, Struct_1(arg_1.a.a, vec2<f32>(arg_2.a.b.x, -430f))), select(u_input.c.zy, ~vec2<i32>(u_input.c.x, u_input.b.x), select(vec2<bool>(arg_2.b, arg_2.b), arg_2.c, vec2<bool>(arg_2.c.x, arg_0)))), reverseBits(vec2<i32>(u_input.c.x, 18730i)) << (vec2<u32>(firstTrailingBit(arg_1.a.a.x), select(arg_1.a.a.x, arg_2.a.a.x, arg_2.b)) % vec2<u32>(32u))).d.b.x);
    let var_1 = !vec2<bool>(false, arg_1.c.x);
    var var_2 = var_1;
    let var_3 = Struct_2(func_1(Struct_2(arg_1.d, !arg_1.c.x, !arg_1.c, Struct_1(arg_1.a.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(-537f, var_0) * arg_1.d.b))), vec2<i32>(u_input.b.x, u_input.c.x) >> (_wgslsmith_mod_vec2_u32(select(u_input.a.zx, vec2<u32>(arg_2.d.a.x, arg_2.d.a.x), vec2<bool>(var_2.x, var_1.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(46170u, 20202u), vec2<u32>(u_input.a.x, arg_2.d.a.x))) % vec2<u32>(32u))).a, var_2.x, select(vec2<bool>(!arg_1.c.x, any(vec3<bool>(var_2.x, false, true)) || false), arg_1.c, true), func_1(Struct_2(func_1(arg_1, _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, u_input.b.x), u_input.b.wx, u_input.b.zw)).a, arg_1.b, var_1, Struct_1(arg_1.d.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.b.x, -2565f)))), countOneBits(u_input.c.xx)).a);
    var var_4 = vec4<u32>(_wgslsmith_mod_u32(4294967295u, ~28574u), arg_1.d.a.x, var_3.d.a.x, arg_2.a.a.x) & var_3.d.a;
    return any(!(!(!select(vec3<bool>(true, var_2.x, false), vec3<bool>(arg_2.c.x, var_1.x, true), vec3<bool>(true, var_1.x, true)))));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: f32) -> Struct_1 {
    var var_0 = Struct_2(func_1(arg_0, ~u_input.b.xw ^ countOneBits(-vec2<i32>(-1i, u_input.c.x))).a, true, select(func_1(func_1(arg_0, u_input.c.yx), u_input.c.zx).c, arg_0.c, true), func_1(func_1(arg_0, u_input.c.zy), vec2<i32>(1i, -u_input.c.x)).a);
    var var_1 = arg_0;
    var var_2 = _wgslsmith_sub_i32(-1i, 27758i) & u_input.c.x;
    let var_3 = u_input.c.x;
    var var_4 = Struct_2(func_1(Struct_2(Struct_1(~var_1.d.a, arg_0.d.b), arg_1.x, !(!var_0.c), Struct_1(countOneBits(arg_0.a.a), _wgslsmith_f_op_vec2_f32(floor(var_0.d.b)))), max(u_input.b.ww, u_input.c.xz)).d, true, arg_1.zx, var_0.d);
    return var_4.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_2(Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 78504u, 1u, 29933u)) | ~vec4<u32>(9858u, 23657u, u_input.a.x, u_input.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, -1085f), vec2<f32>(-847f, -944f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-258f, 456f) - vec2<f32>(-301f, 167f)))), !func_4(true, func_1(Struct_2(Struct_1(vec4<u32>(3301u, u_input.a.x, 21614u, 0u), vec2<f32>(-1000f, -541f)), true, vec2<bool>(false, true), Struct_1(vec4<u32>(u_input.a.x, 50083u, 4294967295u, u_input.a.x), vec2<f32>(-723f, 836f))), u_input.c.wy), Struct_2(Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 21422u), vec2<f32>(994f, -147f)), false, vec2<bool>(false, false), Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x), vec2<f32>(-2017f, 610f)))), vec2<bool>(any(vec3<bool>(true, false, false)) & true, !all(vec3<bool>(true, false, true))), func_1(func_1(func_1(Struct_2(Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, 11362u, u_input.a.x), vec2<f32>(2812f, 503f)), false, vec2<bool>(true, false), Struct_1(vec4<u32>(u_input.a.x, 25012u, u_input.a.x, u_input.a.x), vec2<f32>(1531f, -602f))), vec2<i32>(u_input.c.x, 2147483647i)), max(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(u_input.b.x, 18846i))), u_input.c.wy).a), select(!select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true)), vec3<bool>(true, func_1(Struct_2(Struct_1(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 68097u), vec2<f32>(779f, -1662f)), false, vec2<bool>(false, true), Struct_1(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 36800u), vec2<f32>(-1810f, 960f))), vec2<i32>(u_input.c.x, -10851i)).c.x, true), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(458f - 1700f), _wgslsmith_f_op_f32(-516f - -128f)) + _wgslsmith_f_op_f32(f32(-1f) * -748f)), 1f));
    global0 = -2283f;
    let var_1 = -1000f;
    let var_2 = func_1(Struct_2(var_0, true, vec2<bool>(true, false), Struct_1(var_0.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(847f, -476f)))), vec2<i32>(_wgslsmith_mult_i32(max(firstTrailingBit(u_input.b.x), -26100i), 1i), max(u_input.c.x, -u_input.c.x) >> ((func_5(Struct_2(Struct_1(var_0.a, var_0.b), false, vec2<bool>(true, false), Struct_1(vec4<u32>(u_input.a.x, 9181u, u_input.a.x, u_input.a.x), vec2<f32>(-472f, var_1))), vec3<bool>(true, true, false), 1015f).a.x << (_wgslsmith_sub_u32(4294967295u, 10931u) % 32u)) % 32u)));
    let var_3 = var_2;
    let var_4 = u_input.b.x;
    global0 = var_0.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(abs(0u) >> (~var_3.a.a.x % 32u))));
}

