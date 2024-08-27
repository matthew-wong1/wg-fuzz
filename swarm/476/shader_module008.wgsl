struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: f32,
    d: vec3<f32>,
    e: bool,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec2<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(1032f, -689f, -485f, 1000f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec4<f32> {
    global0 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(max(-624f, _wgslsmith_f_op_f32(global0.x + global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(global0.x))))), global0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-960f, _wgslsmith_f_op_f32(sign(global0.x)), -837f, -491f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, global0.x, global0.x, -1162f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 570f, -152f))), vec4<bool>(true, true, true, true))))));
    global0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -373f, 1000f, global0.x)), vec4<f32>(282f, 210f, 752f, 1524f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-374f, -486f, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x) * vec4<f32>(-133f, global0.x, global0.x, 1383f)), true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -269f, global0.x, 1000f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(119f, global0.x, -1929f, -1467f) * vec4<f32>(global0.x, global0.x, global0.x, 743f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, 2455f, global0.x, 1004f))))))))));
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-484f, _wgslsmith_f_op_f32(ceil(global0.x)), global0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-857f, -665f))))) + vec4<f32>(-460f, global0.x, global0.x, global0.x)), Struct_3(false, _wgslsmith_mult_u32(0u, 1u), ~min(vec2<u32>(3989u, 4294967295u), abs(vec2<u32>(48599u, 72442u)))));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(max(var_0.a.x, global0.x))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), 412f)), var_0.a.x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(ceil(-927f)), _wgslsmith_f_op_f32(abs(var_0.a.x)), 903f))));
}

fn func_2(arg_0: u32, arg_1: vec4<f32>) -> u32 {
    global0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-863f, global0.x, arg_1.x, arg_1.x))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-380f, global0.x, arg_1.x, global0.x)))) * _wgslsmith_f_op_vec4_f32(trunc(arg_1)))), _wgslsmith_f_op_vec4_f32(func_3())));
    var var_0 = any(vec4<bool>(true, !(true == any(vec4<bool>(false, false, true, true))), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), true));
    var var_1 = Struct_3(true, 4294967295u, ~(_wgslsmith_mod_vec2_u32(vec2<u32>(15608u, arg_0), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(arg_0, arg_0))) | ~select(vec2<u32>(0u, arg_0), vec2<u32>(0u, arg_0), vec2<bool>(true, false))));
    var var_2 = _wgslsmith_mult_vec2_i32(~(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x) >> (var_1.c % vec2<u32>(32u)), u_input.a.xx) << (var_1.c % vec2<u32>(32u))), ~vec2<i32>(u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.a, min(u_input.a, u_input.a))));
    var_1 = Struct_3(any(select(select(!vec4<bool>(true, false, var_1.a, false), !vec4<bool>(false, var_1.a, var_1.a, var_1.a), select(vec4<bool>(false, var_1.a, var_1.a, var_1.a), vec4<bool>(false, var_1.a, var_1.a, var_1.a), vec4<bool>(false, var_1.a, var_1.a, var_1.a))), select(vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a), !vec4<bool>(var_1.a, true, var_1.a, false), select(vec4<bool>(true, true, var_1.a, var_1.a), vec4<bool>(true, false, var_1.a, true), false)), vec4<bool>(true, false, !var_1.a, var_1.a))), 69475u, vec2<u32>(_wgslsmith_clamp_u32(0u, arg_0, arg_0), countOneBits(~min(var_1.b, 0u))));
    return ~(~_wgslsmith_sub_u32(0u, 0u));
}

fn func_1(arg_0: f32, arg_1: vec2<f32>) -> i32 {
    let var_0 = true;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, arg_1.x, -116f, 871f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(274f, -494f, -161f, arg_1.x) - vec4<f32>(arg_0, 1266f, 291f, 1028f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1178f, arg_1.x, global0.x, arg_0)))))));
    var var_1 = true;
    var_1 = any(select(vec2<bool>(-1926f > global0.x, all(vec4<bool>(var_0, false, var_0, false))), !select(vec2<bool>(var_0, var_0), vec2<bool>(true, var_0), vec2<bool>(var_0, false)), var_0)) & true;
    let var_2 = !(func_2(_wgslsmith_div_u32(24534u, 40178u) << (0u % 32u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(590f, arg_1.x, 139f, global0.x))) > ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(23404u, 19452u, 40338u), vec3<u32>(71093u, 1u, 0u))));
    return _wgslsmith_dot_vec3_i32(u_input.a, select(~(~u_input.a), vec3<i32>(i32(-1i) * -2147483647i, countOneBits(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(12002i, -25778i, 48619i, u_input.a.x), vec4<i32>(1i, -1i, u_input.a.x, 2147483647i))), vec3<bool>(var_0, u_input.a.x <= u_input.a.x, true))) >> (_wgslsmith_mult_u32(~firstLeadingBit(~1u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u) >> (firstTrailingBit(vec2<u32>(57735u, 28578u)) % vec2<u32>(32u)), ~abs(vec2<u32>(4294967295u, 0u)))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_i32(39548i, func_1(_wgslsmith_f_op_f32(f32(-1f) * -287f), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1224f), global0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.yx + global0.xz)))));
    var var_1 = any(vec4<bool>(select(_wgslsmith_mult_i32(11526i, u_input.a.x) < u_input.a.x, all(vec4<bool>(true, false, true, true)), (16314i >> (1u % 32u)) < -u_input.a.x), true, true, firstLeadingBit(u_input.a.x) == 2147483647i));
    var_1 = false;
    var_0 = min(-42949i, max(u_input.a.x, u_input.a.x));
    let var_2 = reverseBits(_wgslsmith_div_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(16671u, 1u, 0u, 0u), vec4<u32>(17215u, 1u, 104747u, 4294967295u)), ~27988u, ~60436u, ~1u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_mult_vec4_i32(~vec4<i32>(9578i, 0i, abs(-16238i), -34432i), -vec4<i32>(1i, u_input.a.x, 0i, u_input.a.x)), _wgslsmith_clamp_i32(-(~(-u_input.a.x)), _wgslsmith_add_i32(0i, ~u_input.a.x), _wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.a), vec3<i32>(u_input.a.x | 25059i, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x), -u_input.a.x))));
}

