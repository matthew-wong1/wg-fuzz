struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: Struct_1,
    d: vec3<f32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: bool,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_4, arg_1: i32) -> i32 {
    var var_0 = arg_0.d.zx;
    let var_1 = !select(vec2<bool>(true, true), arg_0.d.zx, arg_0.d.yz);
    var var_2 = arg_0.a;
    let var_3 = var_2.a;
    var var_4 = _wgslsmith_f_op_f32(var_2.a * _wgslsmith_f_op_f32(sign(1f)));
    return ~(-1i);
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_mod_vec4_u32(vec4<u32>(~1u, ~abs(4294967295u), 4294967295u, ~1u), reverseBits(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, 1u, 0u), vec4<u32>(58167u, 1u, 12300u, 47974u), vec4<u32>(65213u, 13077u, 12781u, 31151u)), vec4<u32>(1u, 1u, 1u, 1u)))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, any(vec4<bool>(false, false, true, false))), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), false), Struct_1(abs(_wgslsmith_dot_vec3_u32(~vec3<u32>(6188u, 26574u, 56574u), ~vec3<u32>(15052u, 0u, 6533u))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, 1821f, -1280f, -1889f), vec4<f32>(arg_0, arg_0, arg_0, arg_0)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -1000f, arg_0, -705f) + vec4<f32>(arg_0, arg_0, arg_0, 1000f)), true)), vec4<i32>(func_3(Struct_4(Struct_3(arg_0), Struct_3(-1212f), true, vec3<bool>(false, false, true)), _wgslsmith_sub_i32(-1709i, -17101i)), _wgslsmith_add_i32(abs(-28424i), 14386i), -countOneBits(u_input.a.x), _wgslsmith_mod_i32(firstLeadingBit(32403i), -u_input.a.x)), ~u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0)))), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1f)))), arg_0), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u), vec3<u32>(select(1u, 0u, true), 37589u, ~4294967295u)));
    var var_1 = Struct_4(Struct_3(_wgslsmith_f_op_f32(sign(-1097f))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.d.x)))), var_0.b.x, !vec3<bool>(!select(var_0.b.x, true, var_0.b.x), true, all(vec3<bool>(false, false, true))));
    let var_2 = var_0.c;
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(817f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x)))))));
    let var_4 = -10992i;
    return Struct_1(var_0.e.x, var_2.b, vec4<i32>(-45432i, _wgslsmith_dot_vec2_i32(-select(var_0.c.c.xz, var_0.c.c.ww, vec2<bool>(var_0.b.x, var_0.b.x)), countOneBits(-u_input.a.yy)), -_wgslsmith_mult_i32(-1i, var_2.c.x) ^ ~(i32(-1i) * -1i), ~(func_3(Struct_4(var_1.a, Struct_3(var_0.d.x), true, var_0.b), var_0.c.c.x) | _wgslsmith_mult_i32(14437i, -61882i))), 0i, 820f);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-1f);
    return Struct_1(min(4294967295u, 2054u), arg_0.b, select(max(countOneBits(vec4<i32>(u_input.a.x, arg_1.c.c.x, -1i, arg_1.c.c.x)), vec4<i32>(u_input.a.x << (arg_0.a % 32u), 1i, arg_0.c.x, u_input.a.x)), arg_0.c, false || !all(vec2<bool>(false, arg_1.b.x))), min(firstLeadingBit(min(u_input.a.x | arg_0.d, ~(-1i))), _wgslsmith_add_i32(firstTrailingBit(arg_0.d), -2147483647i) ^ (i32(-1i) * -1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(2667f, -346f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-618f)) + -1367f), false))));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec3<bool>) -> vec4<f32> {
    var var_0 = u_input.a.x;
    let var_1 = ~vec4<u32>(~(~(~arg_0)), reverseBits(4294967295u), ~arg_0, arg_1.a);
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.e, -770f) + _wgslsmith_f_op_f32(arg_1.e * _wgslsmith_f_op_f32(arg_1.b.x - arg_1.e))) - _wgslsmith_f_op_f32(step(arg_1.b.x, _wgslsmith_f_op_f32(-arg_1.b.x)))), _wgslsmith_f_op_f32(-arg_1.e)));
    var var_2 = func_4(func_2(_wgslsmith_f_op_f32(615f * arg_1.e)), Struct_2(~max(vec4<u32>(1u, arg_1.a, 48158u, arg_1.a), ~vec4<u32>(36273u, arg_1.a, arg_0, 53741u)), !(!select(arg_2, arg_2, vec3<bool>(false, true, arg_2.x))), func_2(arg_1.e), arg_1.b.zxz, var_1.wwz), _wgslsmith_f_op_vec3_f32(vec3<f32>(590f, arg_1.b.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.b.x * arg_1.e), arg_1.e))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.e, 341f, arg_1.b.x))))));
    var var_3 = Struct_3(arg_1.e);
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(var_2.b, vec4<f32>(arg_1.e, var_2.b.x, -1000f, 234f), arg_2.x)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.e, -277f, 2076f, -1000f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(557f, var_2.e, -1000f, 784f))))), !vec4<bool>(arg_2.x, arg_2.x, false, false)))), _wgslsmith_f_op_vec4_f32(-arg_1.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -216f) - -526f);
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f - 1f), 474f));
    let x = u_input.a;
    s_output = StorageBuffer(-1273f, ~vec4<u32>(~50451u, 46485u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, 0u, 34959u), vec4<u32>(21284u, 1u, 18914u, 4294967295u)), select(vec4<u32>(4294967295u, 8569u, 4294967295u, 0u), vec4<u32>(0u, 4294967295u, 1u, 84229u), false)), 4294967295u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(762f, 1159f, -549f, 221f) - _wgslsmith_f_op_vec4_f32(func_1(0u, Struct_1(41674u, vec4<f32>(495f, 546f, 575f, 1000f), vec4<i32>(u_input.a.x, -50135i, 2147483647i, -28418i), u_input.a.x, -1500f), vec3<bool>(true, true, false)))) - vec4<f32>(-796f, 1723f, _wgslsmith_f_op_f32(1897f + -1000f), 443f))), func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(736f - 1151f), _wgslsmith_f_op_f32(floor(-364f)))).c.x | (u_input.a.x & 0i));
}

