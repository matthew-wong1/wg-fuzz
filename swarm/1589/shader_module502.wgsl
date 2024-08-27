struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec4<u32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, 1422f, 0u, false, vec3<u32>(31359u, 72096u, 13937u));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> vec3<u32> {
    global0 = Struct_1(!global0.a, -312f, arg_0, u_input.c > arg_0, ~_wgslsmith_mod_vec3_u32(~(~global0.e), ~global0.e ^ firstTrailingBit(global0.e)));
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b, 929f, 982f) * vec3<f32>(global0.b, global0.b, -741f)))), vec3<f32>(global0.b, -326f, _wgslsmith_f_op_f32(f32(-1f) * -1677f)), !(!(!vec3<bool>(global0.a, false, global0.a)))))));
    let var_1 = false;
    global0 = Struct_1(false, _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(2695f * -310f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) - _wgslsmith_f_op_f32(global0.b - var_0.x))))), u_input.b.x, var_1, vec3<u32>(1u, max(16081u, ~_wgslsmith_div_u32(global0.c, u_input.a)), _wgslsmith_add_u32(u_input.b.x, min(~1u, global0.e.x))));
    global0 = Struct_1(!(reverseBits(global0.c) > abs(u_input.c ^ global0.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.b)))))), 4294967295u, var_0.x < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -364f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(607f + -625f)), false)), _wgslsmith_div_vec3_u32(global0.e, ~(vec3<u32>(7823u, 54798u, 0u) >> (global0.e % vec3<u32>(32u))) & vec3<u32>(~4294967295u, countOneBits(1u), select(u_input.c, arg_0, var_1))));
    return _wgslsmith_sub_vec3_u32(~(~min(vec3<u32>(1304u, global0.e.x, u_input.b.x), ~global0.e)), vec3<u32>(reverseBits(27024u), arg_0, u_input.c));
}

fn func_2() -> i32 {
    var var_0 = (-vec3<i32>(-15383i, -56396i, -2147483647i) | countOneBits(~(vec3<i32>(u_input.d, 49298i, -11637i) << (global0.e % vec3<u32>(32u))))) << (_wgslsmith_mod_vec3_u32(func_3(firstTrailingBit(u_input.a)), func_3(~u_input.a)) % vec3<u32>(32u));
    let var_1 = Struct_4(select(!all(vec3<bool>(false, true, global0.d)), all(vec4<bool>(true || global0.a, !global0.a, any(vec4<bool>(global0.d, global0.a, global0.d, false)), false)), any(select(vec4<bool>(false, true, global0.a, false), vec4<bool>(global0.a, true, true, true), !global0.a))), abs(vec4<u32>(_wgslsmith_add_u32(global0.c, u_input.c), 1u, 2747u, ~_wgslsmith_sub_u32(0u, global0.c))), -1000f);
    var var_2 = Struct_1(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.c)) - -1273f) - -985f), global0.c, false, select(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, u_input.a, u_input.a), global0.e, ~var_1.b.wzx), global0.e, !var_1.a));
    var_2 = Struct_1(false, global0.b, firstLeadingBit(10791u), true, ~vec3<u32>(1u, ~(~var_1.b.x), u_input.c));
    global0 = Struct_1(false, var_2.b, 0u, true, vec3<u32>(93437u, min(max(global0.e.x, ~u_input.b.x), firstTrailingBit(32432u)), global0.c));
    return var_0.x;
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: u32) -> Struct_1 {
    global0 = Struct_1(!(~arg_2 >= u_input.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b, global0.b) + _wgslsmith_f_op_f32(floor(arg_0.x))) - _wgslsmith_div_f32(global0.b, 1f)))), select(42107u, 4294967295u, false), true, global0.e ^ _wgslsmith_mod_vec3_u32(global0.e, max(_wgslsmith_sub_vec3_u32(global0.e, vec3<u32>(u_input.b.x, u_input.c, 22972u)), ~global0.e)));
    var var_0 = 481f;
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -785f)), arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(step(arg_0.x, global0.b))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-510f)))))) - _wgslsmith_f_op_vec3_f32(arg_0.xzw * vec3<f32>(arg_0.x, -170f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1497f)) * _wgslsmith_f_op_f32(floor(-538f))))));
    global0 = Struct_1(true, 578f, 4294967295u, any(vec2<bool>(true, true)) == global0.d, ~_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(global0.e, ~global0.e), global0.e | max(vec3<u32>(4294967295u, 74725u, arg_2), vec3<u32>(global0.c, arg_2, u_input.b.x))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1005f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-456f, global0.b)))));
    return Struct_1(global0.a, _wgslsmith_f_op_f32(global0.b * 1415f), abs(73176u), !select(!any(vec3<bool>(true, true, true)), global0.d, all(!vec4<bool>(global0.d, global0.d, false, true))), global0.e);
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = -31418i;
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b, 821f) + vec2<f32>(1000f, global0.b))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1575f, global0.b)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(758f, global0.b) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1149f, arg_2.b)))))), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.b, 1632f, global0.b, arg_2.b), vec4<f32>(699f, global0.b, -289f, global0.b))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(307f, -456f, -546f, -1427f)))), vec4<i32>(-2147483647i, ~u_input.d, -func_2(), -var_0), ~(~(~arg_2.e.x))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(408f, arg_2.b, arg_2.d))) >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-979f + -999f), arg_2.b)), -268f, u_input.c, true & all(select(vec2<bool>(false, global0.d), vec2<bool>(arg_2.a, false), vec2<bool>(true, false))), firstLeadingBit(vec3<u32>(1u, global0.e.x, global0.c))));
    let var_2 = var_0;
    var var_3 = _wgslsmith_mod_i32(select(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.d, -60091i)), vec2<i32>(u_input.d, 23407i)), 2147483647i), select(_wgslsmith_clamp_i32(-36126i, var_2, -2147483647i) ^ -68117i, -20552i, false), global0.d), abs(var_2) & _wgslsmith_clamp_i32(_wgslsmith_mult_i32(var_0, abs(-9028i)), -16563i, _wgslsmith_sub_i32(var_2 & var_2, func_2())));
    let var_4 = abs(firstTrailingBit(global0.e.yy));
    return func_4(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1180f, arg_2.b, arg_2.b, -376f)))) + vec4<f32>(_wgslsmith_f_op_f32(abs(283f)), 122f, _wgslsmith_div_f32(global0.b, 277f), _wgslsmith_f_op_f32(min(var_1.c.b, global0.b)))), vec4<f32>(arg_2.b, _wgslsmith_f_op_f32(f32(-1f) * -662f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(global0.b)), _wgslsmith_f_op_f32(-global0.b))), var_1.b.b))), abs(firstLeadingBit((vec4<i32>(0i, var_2, -44445i, var_0) << (vec4<u32>(var_1.b.c, 7486u, global0.c, arg_1) % vec4<u32>(32u))) | vec4<i32>(var_0, u_input.d, 1i, 0i))), ~(~4294967295u));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = arg_1.a.c;
    let var_1 = countOneBits(~_wgslsmith_mult_u32(1u, func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(523f, global0.b, 1286f, -360f)), reverseBits(vec4<i32>(71018i, u_input.d, 27999i, 1i)), 0u).e.x));
    var var_2 = Struct_3(arg_1.a, arg_1.b);
    var var_3 = var_2.a;
    global0 = func_1(min(select(global0.e.x, _wgslsmith_mult_u32(abs(var_2.a.c.e.x), _wgslsmith_add_u32(6159u, 2493u)), all(vec2<bool>(var_2.a.c.d, arg_2.x))), ~arg_0.x), reverseBits(~0u), var_2.b, var_0.e);
    return func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.b, arg_1.b.b, 2612f, arg_1.b.b))))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(353f, 1277f, 856f, -756f)))))), ~(-reverseBits(vec4<i32>(-2147483647i, 2147483647i, u_input.d, 3745i))), ~4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(~(~abs(~vec4<u32>(108353u, u_input.b.x, u_input.b.x, global0.e.x))), Struct_3(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(ceil(-2500f)), _wgslsmith_f_op_f32(round(global0.b))), Struct_1(!global0.d, -1439f, u_input.b.x, global0.a, vec3<u32>(0u, global0.e.x, global0.e.x)), func_1(global0.e.x << (1591u % 32u), 4294967295u, Struct_1(global0.d, -1000f, 30080u, global0.a, vec3<u32>(47742u, 36977u, 27868u)), abs(global0.e))), func_1(func_4(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.b, 1384f, global0.b, 213f), vec4<f32>(global0.b, -342f, 1293f, 260f))), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, u_input.d, 40905i, u_input.d), vec4<i32>(2147483647i, 36372i, 2147483647i, u_input.d)), global0.c).e.x, ~select(u_input.c, u_input.a, true), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1434f, -149f, -2200f, 1070f)), select(vec4<i32>(50099i, u_input.d, -2147483647i, 1i), vec4<i32>(14466i, u_input.d, 36405i, u_input.d), false), abs(18788u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global0.e.x, 4294967295u, 1u), global0.e), ~vec3<u32>(global0.c, 4294967295u, 24921u), countOneBits(global0.e)))), select(!select(vec2<bool>(true, true), vec2<bool>(global0.d, false), global0.d), vec2<bool>(true, true), !(!(!global0.d))));
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(358f, -1506f), _wgslsmith_f_op_f32(1756f + global0.b), _wgslsmith_f_op_f32(f32(-1f) * -2508f), _wgslsmith_f_op_f32(-global0.b)))), vec4<f32>(582f, 759f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(108f, global0.b, func_1(4294967295u, 4294967295u, Struct_1(false, -199f, global0.c, false, vec3<u32>(71217u, u_input.c, 39047u)), vec3<u32>(u_input.c, 104743u, 4294967295u)).d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)))), _wgslsmith_f_op_f32(-global0.b)), global0.d));
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.xy * var_0.yy) + var_0.xw), func_1(u_input.a, func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-491f, -1000f, var_0.x, -907f)), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 1i, 2147483647i, -1i), vec4<i32>(-7286i, u_input.d, u_input.d, -13640i)), ~1u).e.x, Struct_1(true, -1566f, ~0u, global0.a | global0.a, vec3<u32>(u_input.b.x, u_input.b.x, u_input.a) | global0.e), ~_wgslsmith_mod_vec3_u32(vec3<u32>(31356u, 2686u, global0.c), vec3<u32>(1u, 1u, global0.c))), func_5(vec4<u32>(global0.e.x, ~global0.e.x, 9258u, u_input.c), Struct_3(Struct_2(var_0.yy, Struct_1(true, 121f, u_input.c, global0.d, global0.e), Struct_1(false, 1911f, global0.c, global0.a, global0.e)), func_1(0u, 0u, Struct_1(global0.d, -396f, 4294967295u, true, global0.e), vec3<u32>(u_input.b.x, 42389u, 1u))), select(!vec2<bool>(true, global0.d), vec2<bool>(global0.d, global0.a), !global0.d))), Struct_1(global0.a, global0.b, 0u, global0.d, vec3<u32>(_wgslsmith_add_u32(~8206u, u_input.b.x & global0.c), 0u, ~(global0.c >> (global0.e.x % 32u)))));
    var var_2 = firstTrailingBit(u_input.d);
    var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(335f + 1097f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1764f, var_1.b.b)), _wgslsmith_div_f32(var_1.a.c.b, var_1.a.b.b)), _wgslsmith_f_op_f32(min(150f, _wgslsmith_f_op_f32(var_1.a.c.b * var_0.x))), _wgslsmith_f_op_f32(var_1.b.b + global0.b))), vec4<f32>(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(-func_5(abs(vec4<u32>(1u, 118563u, 4564u, 65849u)), Struct_3(var_1.a, Struct_1(true, -513f, global0.c, false, var_1.a.c.e)), !vec2<bool>(global0.d, true)).b), global0.b, -1561f), vec4<bool>(false | all(!vec3<bool>(false, global0.d, true)), all(select(select(vec4<bool>(global0.d, var_1.b.d, true, false), vec4<bool>(true, true, var_1.b.a, global0.a), var_1.b.a), vec4<bool>(true, var_1.b.d, false, true), select(vec4<bool>(global0.d, global0.d, true, global0.a), vec4<bool>(false, global0.a, global0.d, true), vec4<bool>(global0.d, true, true, false)))), !global0.a, any(select(select(vec2<bool>(false, false), vec2<bool>(global0.a, var_1.a.c.a), vec2<bool>(true, false)), select(vec2<bool>(false, var_1.a.b.a), vec2<bool>(global0.d, global0.d), global0.a), !vec2<bool>(true, global0.a))))));
    let var_3 = Struct_3(Struct_2(var_1.a.a, func_5(~_wgslsmith_add_vec4_u32(vec4<u32>(7853u, 4294967295u, var_1.a.c.c, var_1.b.e.x), vec4<u32>(global0.c, u_input.a, 78324u, 0u)), Struct_3(Struct_2(vec2<f32>(var_1.a.a.x, global0.b), var_1.b, Struct_1(global0.a, var_0.x, 38001u, global0.a, global0.e)), var_1.b), select(vec2<bool>(var_1.b.a, global0.a), vec2<bool>(global0.a, true), select(vec2<bool>(true, var_1.a.c.d), vec2<bool>(false, true), vec2<bool>(global0.a, false)))), Struct_1(true, var_0.x, global0.e.x, false, global0.e)), Struct_1(true, _wgslsmith_f_op_f32(func_1(4294967295u, 37749u, var_1.b, select(global0.e, vec3<u32>(37143u, var_1.b.e.x, var_1.a.c.c), var_1.b.a)).b - _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_mult_u32(firstTrailingBit(var_1.a.b.e.x), ~0u) << (4294967295u % 32u), !var_1.b.d, vec3<u32>(0u, ~var_1.b.c, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(0u, var_1.a.b.e.x)), u_input.b.x))));
    var_1 = Struct_3(var_3.a, Struct_1(!var_1.a.c.d, _wgslsmith_f_op_f32(-var_3.b.b), 62139u, !global0.d, select(~(vec3<u32>(1u, 48798u, 4294967295u) ^ vec3<u32>(var_3.a.b.c, u_input.c, 4294967295u)), var_1.a.c.e, select(var_3.b.c, var_3.a.c.c, false) > _wgslsmith_sub_u32(48556u, var_3.a.b.c))));
    let var_4 = Struct_2(vec2<f32>(var_1.a.c.b, _wgslsmith_f_op_f32(-func_1(~4294967295u, abs(global0.c), Struct_1(var_1.b.a, -105f, var_1.b.e.x, global0.d, var_1.b.e), vec3<u32>(global0.c, 1u, global0.c)).b)), var_3.b, var_3.a.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_sub_i32(reverseBits(~1i), 23890i), abs(-u_input.d)), reverseBits(vec2<u32>(45948u, ~0u)), var_0.yxw);
}

