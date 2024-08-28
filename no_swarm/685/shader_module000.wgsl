struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
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

var<private> global0: u32 = 21334u;

var<private> global1: vec4<u32> = vec4<u32>(32594u, 4294967295u, 6727u, 1u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> bool {
    var var_0 = vec4<i32>(i32(-1i) * -1i, countOneBits(_wgslsmith_add_i32(u_input.d, 1i)), u_input.b, u_input.d);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -1092f) - _wgslsmith_f_op_f32(max(1022f, 1127f))) - 1f))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -369f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(929f, -655f) * _wgslsmith_div_f32(354f, -1134f))) + 1f);
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: i32, arg_3: vec3<u32>) -> i32 {
    let var_0 = min(~vec4<u32>(~u_input.e, _wgslsmith_clamp_u32(u_input.e, arg_3.x, 0u), _wgslsmith_add_u32(108988u, arg_3.x), 2787u) << (~countOneBits(vec4<u32>(u_input.e, 0u, 57712u, arg_3.x) ^ vec4<u32>(arg_3.x, arg_3.x, 4294967295u, 6303u)) % vec4<u32>(32u)), vec4<u32>(abs(1u) ^ _wgslsmith_mod_u32(global1.x, 22517u), 0u, 4294967295u, 0u) ^ ((select(vec4<u32>(0u, arg_3.x, 30266u, global1.x), vec4<u32>(13417u, u_input.c, u_input.e, 0u), false) << (max(vec4<u32>(38761u, 4294967295u, arg_3.x, u_input.c), vec4<u32>(0u, 45362u, 327u, u_input.e)) % vec4<u32>(32u))) ^ _wgslsmith_div_vec4_u32(min(vec4<u32>(global1.x, 0u, u_input.e, u_input.c), vec4<u32>(global1.x, arg_3.x, 27881u, u_input.c)), abs(vec4<u32>(arg_3.x, global1.x, 6258u, u_input.c)))));
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-534f)))) * _wgslsmith_f_op_f32(select(-1012f, _wgslsmith_f_op_f32(sign(-1227f)), any(vec4<bool>(false, false, arg_0, false))))) - _wgslsmith_f_op_f32(-215f * 977f))));
    global0 = reverseBits(_wgslsmith_add_u32((35021u | arg_3.x) ^ 51971u, 88679u)) & arg_3.x;
    global1 = _wgslsmith_clamp_vec4_u32(min(var_0, _wgslsmith_mod_vec4_u32(~(vec4<u32>(u_input.e, global1.x, var_0.x, 0u) << (var_0 % vec4<u32>(32u))), vec4<u32>(var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, var_0.x, 24422u, arg_3.x), vec4<u32>(105828u, 22059u, 50047u, global1.x)), countOneBits(u_input.c), 4294967295u ^ arg_3.x))), var_0 << (abs(~var_0) % vec4<u32>(32u)), ~(~vec4<u32>(_wgslsmith_div_u32(global1.x, u_input.c), ~0u, _wgslsmith_dot_vec4_u32(var_0, var_0), ~4294967295u)));
    var var_2 = select(vec2<bool>(!(!arg_0), !all(vec3<bool>(arg_0, false, false))), select(select(!select(vec2<bool>(false, arg_0), vec2<bool>(true, arg_0), false), vec2<bool>(all(vec3<bool>(arg_0, arg_0, arg_0)), all(vec4<bool>(false, false, true, true))), select(vec2<bool>(true, arg_0), select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, true), arg_0), !vec2<bool>(true, arg_0))), !select(vec2<bool>(arg_0, arg_0), select(vec2<bool>(false, arg_0), vec2<bool>(true, false), false), arg_2 >= -1i), !(!select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, false), true))), !(!vec2<bool>(!arg_0, arg_0)));
    return -_wgslsmith_dot_vec4_i32(-(vec4<i32>(54413i, arg_2, -8197i, arg_2) | abs(vec4<i32>(arg_1.x, arg_2, arg_2, arg_2))), select(vec4<i32>(countOneBits(-1i), select(-43679i, arg_2, false), ~(-1i), arg_1.x & arg_2), vec4<i32>(1i, u_input.a, countOneBits(-1i), reverseBits(arg_1.x)), vec4<bool>(var_2.x, false, true, arg_0)));
}

fn func_2(arg_0: Struct_2) -> bool {
    let var_0 = 28169u;
    global0 = 42107u;
    var var_1 = abs(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a << (u_input.c % 32u), ~(-2786i), u_input.b, 1i ^ arg_0.a.a.x), ~vec4<i32>(64350i, -2147483647i, arg_0.b.a.x, -3306i))) >> (vec4<u32>(53676u, 4294967295u, ~(~min(68332u, u_input.e)), 1u) % vec4<u32>(32u));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1402f)))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(348f, arg_0.e.x)))));
    let var_3 = _wgslsmith_mult_vec4_i32(select(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(var_1.x, -2765i, var_1.x, arg_0.a.a.x), vec4<i32>(var_1.x, u_input.a, var_1.x, arg_0.a.a.x)), vec4<i32>(29444i, arg_0.b.a.x, ~52814i, _wgslsmith_add_i32(2147483647i, 0i)), _wgslsmith_add_vec4_i32(vec4<i32>(-11726i, 2147483647i, 2998i, 2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.d.a.x, u_input.b, var_1.x, 1i), vec4<i32>(20161i, var_1.x, arg_0.a.a.x, -8152i)))), vec4<i32>(_wgslsmith_dot_vec3_i32(~var_1.wzy, var_1.xzz), -1i, firstLeadingBit(select(51357i, var_1.x, false)), func_3(all(vec3<bool>(true, false, false)), ~arg_0.a.a, arg_0.a.a.x, firstLeadingBit(global1.zwz))), !vec4<bool>(var_2 < arg_0.c.x, any(vec4<bool>(false, false, false, false)), 9438i < arg_0.a.a.x, any(vec4<bool>(true, false, false, false)))), abs(_wgslsmith_div_vec4_i32(-reverseBits(vec4<i32>(2147483647i, var_1.x, var_1.x, var_1.x)), min(vec4<i32>(36516i, u_input.d, -30301i, arg_0.a.a.x), vec4<i32>(arg_0.b.a.x, 27512i, -2147483647i, var_1.x) ^ vec4<i32>(2147483647i, arg_0.d.a.x, var_1.x, u_input.d)))));
    return !select(~(global1.x & 0u) >= ~0u, true, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(951f, 2445f, -1223f)))) * vec3<f32>(_wgslsmith_f_op_f32(abs(-465f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-118f, 940f)) - -968f), _wgslsmith_f_op_f32(round(-173f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), !vec3<bool>(true, false, !all(vec3<bool>(false, true, true)))));
    let var_1 = !select(vec4<bool>(true, true, true, true), vec4<bool>(true, !(var_0.x == 495f), any(vec4<bool>(true, true, true, true)), func_1()), vec4<bool>(u_input.b > u_input.d, (u_input.b <= -21004i) || true, any(vec2<bool>(true, true)), !func_2(Struct_2(Struct_1(vec2<i32>(u_input.d, u_input.a)), Struct_1(vec2<i32>(22910i, u_input.a)), vec2<f32>(191f, -1862f), Struct_1(vec2<i32>(u_input.a, -43636i)), vec3<f32>(-1423f, -668f, var_0.x)))));
    var var_2 = Struct_1(~(vec2<i32>(-2147483647i & u_input.d, u_input.a << (u_input.e % 32u)) >> (global1.xx % vec2<u32>(32u))));
    global1 = abs(~vec4<u32>(~(48684u >> (u_input.e % 32u)), 12360u, countOneBits(u_input.c), global1.x));
    let var_3 = Struct_1(var_2.a);
    let var_4 = vec4<f32>(_wgslsmith_div_f32(349f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(var_0.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) * 766f))), var_0.x, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-401f))) + _wgslsmith_div_f32(var_0.x, var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(57946u, 59584u, 0u, 4294967295u), vec4<u32>(8859u, 0u, 0u, 0u)) & vec4<u32>(_wgslsmith_add_u32(u_input.e, u_input.c), ~103769u, _wgslsmith_div_u32(u_input.e, 0u), 45860u), ~(abs(vec4<u32>(u_input.e, 61517u, u_input.c, 104972u)) ^ (vec4<u32>(4294967295u, 33392u, 40149u, 0u) | vec4<u32>(u_input.c, u_input.e, 29747u, 1u)))));
}

