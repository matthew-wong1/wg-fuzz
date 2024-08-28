struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: Struct_1) -> vec2<f32> {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-568f, global0.x)) * vec2<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1565f, global0.x) * 549f))));
    global0 = vec2<f32>(265f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - global0.x));
    var var_0 = arg_2;
    var_0 = Struct_1(_wgslsmith_div_u32(_wgslsmith_add_u32(1u, u_input.c.x), ~(~(0u ^ var_0.a))), select(select(vec2<bool>(arg_1.x, all(vec2<bool>(var_0.b.x, false))), arg_1.xy, any(vec4<bool>(false, arg_1.x, var_0.b.x, false))), select(arg_2.b, !select(arg_0, arg_1.yx, vec2<bool>(arg_2.b.x, arg_1.x)), !(!arg_2.b)), global0.x < -284f));
    let var_1 = u_input.b.x;
    return _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-179f)) * 225f))));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_mod_i32(~(2147483647i << ((~u_input.e.x << (u_input.c.x % 32u)) % 32u)), u_input.a.x);
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.x, -2131f))) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-478f, -286f), vec2<f32>(-304f, global0.x)))))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * 147f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(115f - global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(max(-345f, 428f))))));
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_vec2_f32(func_2(vec2<bool>(false, false), vec4<bool>(false, true, true, false), Struct_1(1u, vec2<bool>(true, true)))).x, global0.x))), _wgslsmith_div_u32(~(~4438u), ~u_input.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1049f - 1f) - global0.x));
    var var_2 = var_1;
    var var_3 = var_1;
    return firstLeadingBit(max(6770u, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(33074u, 38378u, var_3.b, 1u)), _wgslsmith_mult_vec4_u32(~vec4<u32>(0u, 417u, 1u, 27257u), _wgslsmith_div_vec4_u32(vec4<u32>(var_1.b, u_input.c.x, 4294967295u, u_input.c.x), vec4<u32>(var_2.b, var_2.b, 0u, 1u))))));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: bool) -> Struct_1 {
    var var_0 = global0.x;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(select(vec2<bool>(arg_2, false), vec2<bool>(!arg_2, true), !arg_2 && false), !(!vec4<bool>(arg_2, arg_2, arg_2, arg_2)), Struct_1(u_input.c.x, select(vec2<bool>(false, false), select(vec2<bool>(false, arg_2), vec2<bool>(arg_2, arg_2), vec2<bool>(false, true)), vec2<bool>(arg_2, false))))));
    var var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(~arg_1.b, _wgslsmith_sub_u32(~1u, arg_1.b) >> (1u % 32u), 2253u, ~(~abs(arg_1.b))), reverseBits(_wgslsmith_add_vec4_u32(select(vec4<u32>(arg_1.b, 4294967295u, 41592u, 88193u) << (vec4<u32>(arg_1.b, arg_1.b, arg_1.b, u_input.e.x) % vec4<u32>(32u)), reverseBits(vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, arg_1.b)), !vec4<bool>(false, arg_2, false, arg_2)), vec4<u32>(u_input.d, ~0u, ~33354u, func_3()))));
    var var_2 = firstTrailingBit(vec2<i32>(-abs(0i), u_input.a.x));
    var_2 = _wgslsmith_mod_vec2_i32(u_input.a, arg_0);
    return Struct_1(u_input.c.x, select(!select(!vec2<bool>(true, arg_2), vec2<bool>(arg_2, true), vec2<bool>(false, arg_2)), !select(select(vec2<bool>(false, arg_2), vec2<bool>(arg_2, true), vec2<bool>(arg_2, arg_2)), select(vec2<bool>(false, true), vec2<bool>(arg_2, true), arg_2), select(true, false, true)), vec2<bool>(false, !any(vec3<bool>(arg_2, arg_2, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec3<bool>(any(vec2<bool>(true, true)), true, ~u_input.c.x <= _wgslsmith_add_u32(min(u_input.d, 0u), ~10073u)));
    var var_1 = func_1(_wgslsmith_mult_vec2_i32(u_input.b.zw, (firstLeadingBit(vec2<i32>(18524i, -1i)) << (u_input.e.xz % vec2<u32>(32u))) ^ -_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, -35409i), vec2<i32>(u_input.b.x, -45521i))), Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1031f, 291f, 409f))), u_input.c.x, global0.x), true);
    var var_2 = Struct_1(1u, !vec2<bool>(any(select(vec4<bool>(false, false, var_1.b.x, var_1.b.x), vec4<bool>(true, var_1.b.x, var_1.b.x, var_1.b.x), var_1.b.x)), true));
    let x = u_input.a;
    s_output = StorageBuffer(-(_wgslsmith_add_i32(_wgslsmith_mult_i32(9915i, u_input.b.x), u_input.a.x) << (0u % 32u)), ~u_input.e.x);
}

