struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32, arg_1: vec2<bool>) -> f32 {
    var var_0 = Struct_3(-873f, 0u << (u_input.c.x % 32u), vec2<bool>(false | select(true, all(vec4<bool>(arg_1.x, false, true, false)), arg_1.x), (arg_1.x || !arg_1.x) & !(42398u > u_input.b.x)));
    var var_1 = Struct_2(Struct_1(~_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b.x, var_0.b, var_0.b, var_0.b), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, u_input.b.x, 43219u), vec4<u32>(var_0.b, 11027u, var_0.b, 0u))), ~32115i));
    var var_2 = 2147483647i;
    global0 = _wgslsmith_dot_vec3_i32(~select(firstLeadingBit(abs(u_input.e)), vec3<i32>(u_input.d, ~arg_0, _wgslsmith_mult_i32(u_input.e.x, u_input.e.x)), true), max(countOneBits(u_input.e ^ vec3<i32>(25963i, arg_0, 2147483647i)), _wgslsmith_div_vec3_i32(-vec3<i32>(var_1.a.b, u_input.d, u_input.a), (u_input.e & u_input.e) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, var_1.a.b, u_input.e.x), u_input.e))));
    let var_3 = _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(select(-1i, u_input.e.x, var_0.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, -4201i, -1i, arg_0), vec4<i32>(-45298i, arg_0, var_1.a.b, 52156i)), 4425i >> (u_input.b.x % 32u), _wgslsmith_mult_i32(-842i, var_1.a.b)), _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 9933i, arg_0, arg_0), vec4<i32>(0i, var_1.a.b, -1i, u_input.e.x)), ~vec4<i32>(26116i, 0i, arg_0, var_1.a.b)), _wgslsmith_div_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(48941i, 3849i, 2147483647i, 59619i)), ~vec4<i32>(arg_0, var_1.a.b, 1i, var_1.a.b)), select(~_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0, 0i, arg_0, var_1.a.b), vec4<i32>(-82914i, 4982i, u_input.e.x, 7457i)), select(vec4<i32>(6i, 1i, var_1.a.b, u_input.e.x) ^ vec4<i32>(18325i, -39367i, u_input.e.x, u_input.a), ~vec4<i32>(var_1.a.b, arg_0, arg_0, 2147483647i), select(vec4<bool>(var_0.c.x, arg_1.x, arg_1.x, true), vec4<bool>(arg_1.x, false, false, true), false)), select(!vec4<bool>(false, true, arg_1.x, false), !vec4<bool>(var_0.c.x, false, arg_1.x, false), select(vec4<bool>(false, true, true, var_0.c.x), vec4<bool>(false, false, arg_1.x, arg_1.x), false)))), vec4<i32>(4355i, ~(-27190i), firstTrailingBit(~2974i), u_input.a));
    return -297f;
}

fn func_2() -> bool {
    let var_0 = Struct_2(Struct_1(vec4<u32>(~(~u_input.b.x), u_input.b.x, firstLeadingBit(~u_input.c.x), ~u_input.b.x), 6366i));
    var var_1 = ~min(select(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.a.a.x, 59392u, var_0.a.a.x), var_0.a.a.yxy) >> (abs(vec3<u32>(8660u, 60729u, 4294967295u)) % vec3<u32>(32u)), countOneBits(vec3<u32>(4294967295u, 4294967295u, 4294967295u)), vec3<bool>(true, all(vec4<bool>(false, true, false, true)), all(vec2<bool>(true, true)))), var_0.a.a.wyy);
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1812f))), _wgslsmith_f_op_f32(func_3(_wgslsmith_div_i32(0i, u_input.d), vec2<bool>(true, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(512f - -1000f))) * vec3<f32>(-846f, 1996f, -923f));
    var var_3 = _wgslsmith_sub_vec2_i32(u_input.e.zy, u_input.e.yx);
    let var_4 = var_0;
    return !((all(vec3<bool>(true, true, true)) == !all(vec3<bool>(true, true, false))) || true);
}

fn func_1() -> vec3<u32> {
    var var_0 = func_2();
    var var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(803f + 1262f), -1364f, all(vec2<bool>(true, false)))))) - -718f), _wgslsmith_div_u32(max(abs(4294967295u ^ u_input.c.x), (28156u << (u_input.c.x % 32u)) >> (u_input.c.x % 32u)), u_input.b.x), !vec2<bool>(true, select(true, false, true)));
    var_1 = Struct_3(_wgslsmith_f_op_f32(sign(var_1.a)), max(~0u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b, 4176u, 4294967295u, 17385u), vec4<u32>(1u, 0u, var_1.b, var_1.b)), ~_wgslsmith_mod_u32(var_1.b, u_input.c.x)) & u_input.b.x, select(select(!(!var_1.c), select(select(vec2<bool>(false, var_1.c.x), vec2<bool>(var_1.c.x, false), var_1.c.x), !var_1.c, vec2<bool>(false, var_1.c.x)), select(var_1.c, var_1.c, var_1.c)), select(select(var_1.c, var_1.c, select(vec2<bool>(true, var_1.c.x), var_1.c, var_1.c)), !select(var_1.c, vec2<bool>(true, var_1.c.x), var_1.c.x), false), func_2()));
    var_1 = Struct_3(var_1.a, var_1.b, !var_1.c);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, -1978f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, var_1.a))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-242f, var_1.a)), _wgslsmith_div_vec2_f32(vec2<f32>(498f, var_1.a), vec2<f32>(-615f, var_1.a)))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1.a * var_1.a), -134f)) - vec2<f32>(-1177f, _wgslsmith_f_op_f32(f32(-1f) * -1404f))));
    return ~vec3<u32>(~_wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(var_1.b, 26609u)), ~(~countOneBits(var_1.b)), ~0u & var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = max(-2147483647i, 0i);
    global0 = -(~(~(-2147483647i)));
    let var_0 = 590f;
    let var_1 = ~1i;
    var var_2 = vec3<i32>(var_1, ~select(i32(-1i) * -9933i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, u_input.d, var_1), u_input.e), true), ~(-u_input.a << (max(u_input.b.x, 37512u) % 32u))) << (vec3<u32>(u_input.c.x, ~abs(_wgslsmith_mod_u32(0u, 21518u)), ~(~u_input.b.x) >> (45841u % 32u)) % vec3<u32>(32u));
    let var_3 = select(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(func_1(), vec3<u32>(37111u, 0u, 41654u)), ~vec3<u32>(79935u, u_input.c.x, u_input.c.x) | (vec3<u32>(u_input.c.x, u_input.b.x, 4294967295u) >> (vec3<u32>(u_input.c.x, 1u, u_input.b.x) % vec3<u32>(32u)))), func_1()), ~u_input.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(-1185f * _wgslsmith_f_op_f32(-var_0))) == -426f);
    let var_4 = !vec4<bool>(false, any(vec4<bool>(true, true, true, true)) || false, !(u_input.c.x <= 0u) | (_wgslsmith_mod_u32(u_input.c.x, 1u) > var_3), select(false, !all(vec3<bool>(false, true, true)), (var_3 < 1u) && false));
    var_2 = vec3<i32>(_wgslsmith_dot_vec2_i32(max(_wgslsmith_add_vec2_i32(firstTrailingBit(u_input.e.xy), vec2<i32>(var_2.x, -61908i) << (u_input.b % vec2<u32>(32u))), firstTrailingBit(vec2<i32>(var_1, 24915i))), -_wgslsmith_div_vec2_i32(vec2<i32>(19927i, u_input.a) & var_2.yy, vec2<i32>(var_2.x, var_2.x))), 1i, var_1);
    let x = u_input.a;
    s_output = StorageBuffer(-1225i, u_input.e);
}

