struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec2<i32>,
    d: bool,
    e: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 14>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2, arg_3: vec3<bool>) -> u32 {
    global0 = array<vec4<i32>, 14>();
    let var_0 = Struct_5(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1689f)))), Struct_1(arg_2.a.b, arg_2.a.b, arg_2.a.c, arg_0.d), arg_2, arg_0, Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(ceil(arg_2.a.a)), vec4<f32>(-698f, -980f, 326f, arg_2.a.a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, -829f, arg_2.a.a.x) - vec3<f32>(-154f, arg_2.a.a.x, 1499f)), arg_1), _wgslsmith_add_u32(arg_1, arg_0.d) <= arg_0.d, -_wgslsmith_mod_i32(u_input.a.x, arg_2.c))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-var_0.e.a.a.b.yxz);
    let var_2 = !vec2<bool>(any(arg_3.xy), false);
    global0 = array<vec4<i32>, 14>();
    return ~(firstTrailingBit(1u) >> (var_0.b.d % 32u));
}

fn func_2(arg_0: vec2<bool>) -> vec4<i32> {
    global0 = array<vec4<i32>, 14>();
    var var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(0u, ~4294967295u), countOneBits(vec2<u32>(~func_3(Struct_1(vec4<f32>(963f, 1140f, -1076f, -219f), vec4<f32>(-1377f, 488f, 332f, -574f), vec3<f32>(-119f, 1678f, -714f), 0u), 72230u, Struct_2(Struct_1(vec4<f32>(279f, 941f, -167f, 1000f), vec4<f32>(1999f, -655f, -2465f, -126f), vec3<f32>(-1330f, 1000f, -338f), 4294967295u), true, u_input.b.x), vec3<bool>(arg_0.x, arg_0.x, true)), countOneBits(4294967295u))));
    var var_1 = (_wgslsmith_dot_vec4_i32(vec4<i32>(abs(u_input.b.x), 31559i, _wgslsmith_dot_vec3_i32(vec3<i32>(27897i, u_input.a.x, -32576i), vec3<i32>(-1i, 33592i, u_input.c)), _wgslsmith_clamp_i32(38607i, u_input.c, u_input.c)), vec4<i32>(select(-21439i, u_input.b.x, true), _wgslsmith_dot_vec2_i32(u_input.a, u_input.b.wy), ~u_input.c, _wgslsmith_add_i32(13413i, u_input.b.x))) << (~12082u % 32u)) & firstTrailingBit(~23001i);
    var var_2 = 120992u;
    var_2 = _wgslsmith_mult_u32(~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 1u, 0u), vec4<u32>(1u, 4294967295u, 0u, 50780u)))), abs(26489u));
    return -vec4<i32>(-60866i, i32(-1i) * -1i, u_input.a.x, ~0i);
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_5, arg_2: Struct_5, arg_3: vec4<f32>) -> f32 {
    var var_0 = ~func_2(vec2<bool>(arg_2.c.b, arg_2.c.b | (arg_1.e.a.a.d >= arg_2.c.a.d)));
    let var_1 = ~(~select(~vec4<u32>(4294967295u, 20524u, 44177u, 1u), ~(vec4<u32>(1u, arg_2.b.d, 36736u, arg_2.c.a.d) | vec4<u32>(1u, arg_1.d.d, 1u, 50541u)), false));
    global0 = array<vec4<i32>, 14>();
    let var_2 = _wgslsmith_f_op_f32(floor(749f));
    var var_3 = arg_0.x;
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-438f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1353f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<bool>(false, false, true), Struct_5(312f, Struct_1(vec4<f32>(-620f, -1019f, -670f, 386f), vec4<f32>(-279f, 284f, -1156f, 1017f), vec3<f32>(-1000f, 200f, -1161f), 63984u), Struct_2(Struct_1(vec4<f32>(-587f, 135f, -803f, 150f), vec4<f32>(1000f, -1000f, -251f, 1050f), vec3<f32>(-459f, -467f, 1000f), 4294967295u), true, 2147483647i), Struct_1(vec4<f32>(714f, -202f, 1000f, 1681f), vec4<f32>(1038f, 1013f, -643f, -1000f), vec3<f32>(-1160f, -993f, 1000f), 73666u), Struct_4(Struct_2(Struct_1(vec4<f32>(-353f, -1839f, -1000f, 734f), vec4<f32>(1294f, -626f, -392f, 256f), vec3<f32>(-830f, 1492f, -1065f), 44506u), false, u_input.a.x))), Struct_5(-392f, Struct_1(vec4<f32>(-1834f, 147f, 674f, 155f), vec4<f32>(218f, 1253f, 2153f, -362f), vec3<f32>(-1437f, -1389f, -743f), 1u), Struct_2(Struct_1(vec4<f32>(640f, -2194f, -1500f, -799f), vec4<f32>(-930f, 1492f, 145f, -1098f), vec3<f32>(803f, 900f, -993f), 81790u), true, u_input.c), Struct_1(vec4<f32>(2083f, -705f, 1993f, -975f), vec4<f32>(-351f, -287f, 1055f, -1996f), vec3<f32>(1000f, -899f, -1000f), 5535u), Struct_4(Struct_2(Struct_1(vec4<f32>(968f, -1558f, -1256f, 667f), vec4<f32>(1000f, -445f, 1033f, -647f), vec3<f32>(-1388f, 486f, -479f), 1u), false, 4135i))), vec4<f32>(-1000f, 347f, -1020f, -1657f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1590f, -512f, 406f, 855f))))), vec4<f32>(_wgslsmith_f_op_f32(-729f - 919f), _wgslsmith_f_op_f32(1138f * 373f), 1568f, 1718f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-771f, 129f, 279f))))))), 15338u);
    global0 = array<vec4<i32>, 14>();
    global0 = array<vec4<i32>, 14>();
    var var_1 = Struct_4(Struct_2(var_0, true, i32(-1i) * -2147483647i));
    global0 = array<vec4<i32>, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(var_1.a.c, ~(-u_input.b.x)) | _wgslsmith_mod_i32(_wgslsmith_mod_i32(-34242i, var_1.a.c >> (var_1.a.a.d % 32u)), var_1.a.c), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-227f - var_1.a.a.c.x) - _wgslsmith_f_op_f32(var_0.a.x * -969f)))))));
}

