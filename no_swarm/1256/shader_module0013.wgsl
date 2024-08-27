struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: f32,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: f32,
    d: u32,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: Struct_1,
    d: u32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.e.x, arg_1.c));
    var var_1 = ~(~vec2<u32>(~(~45454u), 26909u));
    var var_2 = Struct_1(vec2<u32>(_wgslsmith_mult_u32(67478u, 28248u), _wgslsmith_dot_vec2_u32(vec2<u32>(56846u, var_1.x) ^ (vec2<u32>(arg_1.d, 82476u) >> (vec2<u32>(arg_0.a, 1u) % vec2<u32>(32u))), select(vec2<u32>(4294967295u, 79698u), vec2<u32>(51580u, 0u), !vec2<bool>(arg_3, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_0.e.xzy, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-486f, 668f, 116f))), any(vec2<bool>(arg_3, arg_3))))), -1185f, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(arg_0.e, arg_0.e))))), _wgslsmith_f_op_vec4_f32(floor(arg_0.e)), arg_0.d == ~13440u)), u_input.d.x);
    let var_3 = arg_1.e;
    var var_4 = select(vec4<bool>(true, any(select(select(vec4<bool>(arg_3, false, false, arg_3), vec4<bool>(arg_3, arg_3, arg_3, true), false), vec4<bool>(arg_3, arg_3, false, true), true)), _wgslsmith_f_op_f32(sign(arg_0.c)) > _wgslsmith_f_op_f32(min(arg_1.e.x, -1384f)), true), vec4<bool>(true, -459f < arg_2.x, true, arg_3), all(vec3<bool>(arg_3, any(select(vec4<bool>(true, arg_3, arg_3, arg_3), vec4<bool>(true, arg_3, arg_3, true), vec4<bool>(true, arg_3, false, true))), arg_3)));
    return var_0.x;
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_5(abs(firstLeadingBit(u_input.b)));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -741f)), 870f), _wgslsmith_f_op_f32(func_3(Struct_2(var_0.a, vec2<f32>(437f, 118f), _wgslsmith_f_op_f32(trunc(-606f)), u_input.b, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1545f, 900f, 596f, 987f)))), Struct_2(var_0.a, vec2<f32>(-550f, 927f), _wgslsmith_f_op_f32(f32(-1f) * -1016f), firstLeadingBit(u_input.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-793f, 148f, -1016f, -1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2447f, -1959f) - vec2<f32>(502f, 432f))), true)), !(4294967295u <= u_input.b))), Struct_3(Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.a, var_0.a) >> (vec2<u32>(var_0.a, var_0.a) % vec2<u32>(32u)), vec2<u32>(u_input.b, u_input.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1438f, 278f, -404f) + vec3<f32>(-2113f, -1000f, -2195f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-912f, -1229f, 1261f) * vec3<f32>(-1325f, -206f, 1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-900f * -781f), -1278f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-471f, -643f, 206f, 756f) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-907f, -1071f, 2168f, -802f)))), -18658i)), Struct_1(vec2<u32>(var_0.a, (var_0.a << (60150u % 32u)) & u_input.b), vec3<f32>(1f, 1f, 1f), 1f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-265f, -1392f, 2599f, 1083f))))), 1i), ~(~(~var_0.a)));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_1.c.b.x)), -210f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(var_1.c.b.zx)), vec2<f32>(_wgslsmith_f_op_f32(round(var_1.b.a.b.x)), _wgslsmith_f_op_f32(min(1275f, 561f))), any(vec4<bool>(true, true, true, true)))) + var_1.c.d.wy));
    var var_3 = 1i;
    var_3 = _wgslsmith_mult_i32((firstLeadingBit(_wgslsmith_clamp_i32(2147483647i, 2147483647i, var_1.c.e)) & -818i) | (-firstTrailingBit(u_input.a.x) & -select(49052i, var_1.c.e, false)), _wgslsmith_add_i32(u_input.a.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(var_1.c.e, u_input.a.x, var_1.b.a.e, var_1.b.a.e), vec4<i32>(countOneBits(u_input.d.x), var_1.c.e, -u_input.d.x, 46454i))));
    return Struct_4(_wgslsmith_div_f32(var_1.b.a.b.x, 1103f), var_1.b, Struct_1(~vec2<u32>(~var_1.d, u_input.b), _wgslsmith_f_op_vec3_f32(max(var_1.c.d.wyy, _wgslsmith_div_vec3_f32(var_1.b.a.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, 1576f))))), var_2.x, _wgslsmith_f_op_vec4_f32(select(var_1.c.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-723f, -356f, 1185f, var_2.x)), any(vec2<bool>(true, true)))), abs(1i)), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(0u, select(3694u, u_input.b, false)), firstTrailingBit(reverseBits(43797u)), _wgslsmith_add_u32(select(var_1.d, var_1.b.a.a.x, false), _wgslsmith_mult_u32(u_input.b, 1u))), ~vec3<u32>(4294967295u, var_1.b.a.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, var_0.a, 0u), vec3<u32>(var_0.a, var_0.a, 54587u)))));
}

fn func_1(arg_0: vec3<i32>) -> f32 {
    let var_0 = func_2();
    var var_1 = _wgslsmith_f_op_f32(-797f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.a))))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.b.a.c, var_0.b.a.c), _wgslsmith_f_op_f32(-var_0.a))))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-766f - 1519f))));
    var var_3 = ~(firstTrailingBit(select(-22944i, var_0.c.e, true)) | arg_0.x) < var_0.b.a.e;
    var_1 = _wgslsmith_f_op_f32(var_0.c.b.x - _wgslsmith_f_op_f32(f32(-1f) * -1555f));
    return _wgslsmith_f_op_f32(-228f * -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(floor(-1426f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(624f * -493f) + 1f) - _wgslsmith_f_op_f32(func_1(reverseBits(u_input.a.xwy))))));
    let var_1 = -470f;
    var var_2 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(min(_wgslsmith_mod_vec3_u32(vec3<u32>(26828u, u_input.b, 40681u), min(vec3<u32>(u_input.b, u_input.b, 66310u), vec3<u32>(u_input.b, 48066u, u_input.b))), firstTrailingBit(~vec3<u32>(4294967295u, u_input.b, u_input.b))), vec3<u32>(~89024u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.b) | vec3<u32>(u_input.b, u_input.b, 22618u), max(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, 31269u, 1u))), select(u_input.b << (u_input.b % 32u), max(40203u, 1u), true))), ~(~(~u_input.b)));
    let var_3 = _wgslsmith_clamp_vec4_u32(reverseBits(firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, 4294967295u, 1212u), ~vec4<u32>(u_input.b, u_input.b, u_input.b, 0u), ~vec4<u32>(u_input.b, u_input.b, u_input.b, 1u)))), vec4<u32>(abs(u_input.b), 0u, 0u, 0u), select(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.b, 4294967295u, 4294967295u) ^ vec4<u32>(1u, 0u, 40686u, 4294967295u), ~vec4<u32>(23696u, 119951u, u_input.b, u_input.b)), _wgslsmith_clamp_vec4_u32(~reverseBits(vec4<u32>(39053u, 4294967295u, u_input.b, u_input.b)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 11313u, 26578u, u_input.b), vec4<u32>(3783u, 53184u, u_input.b, 1u)) | vec4<u32>(83478u, u_input.b, 52035u, u_input.b), max(vec4<u32>(0u, 22397u, u_input.b, u_input.b) & vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u), vec4<u32>(u_input.b, u_input.b, u_input.b, 0u))), true));
    var_2 = ~1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(504f - _wgslsmith_f_op_f32(min(-773f, var_0.x)))));
}

