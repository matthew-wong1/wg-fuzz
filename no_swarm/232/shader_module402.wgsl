struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: u32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_2,
    c: vec2<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<f32>, 20>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> i32 {
    var var_0 = !vec2<bool>(all(!select(vec4<bool>(true, global0.a, global0.a, false), vec4<bool>(global0.a, true, global0.a, global0.a), vec4<bool>(true, global0.a, global0.a, true))), global0.a);
    global1 = array<vec3<f32>, 20>();
    global0 = Struct_1(false, -53044i, ~_wgslsmith_mult_vec4_u32(vec4<u32>(~4294967295u, _wgslsmith_clamp_u32(global0.c.x, u_input.a.x, 1u), ~u_input.a.x, countOneBits(36358u)), _wgslsmith_add_vec4_u32(~global0.e, vec4<u32>(global0.e.x, 37334u, global0.c.x, global0.e.x))), _wgslsmith_dot_vec2_i32(min(vec2<i32>(global0.d, global0.b), select(vec2<i32>(global0.d, 0i), vec2<i32>(global0.d, global0.d), false)) << (_wgslsmith_sub_vec2_u32(global0.e.xw, global0.e.xz) % vec2<u32>(32u)), -(~_wgslsmith_sub_vec2_i32(vec2<i32>(global0.b, global0.d), vec2<i32>(global0.b, 78052i)))), ~_wgslsmith_sub_vec4_u32(~global0.e, countOneBits(vec4<u32>(u_input.a.x, 52734u, 4294967295u, 1u) << (vec4<u32>(0u, global0.c.x, global0.e.x, global0.e.x) % vec4<u32>(32u)))));
    let var_1 = var_0.x;
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -572f)))))));
    return _wgslsmith_add_i32(_wgslsmith_mult_i32(~1i, global0.d), max(global0.b, ~(-1i)));
}

fn func_2(arg_0: bool, arg_1: bool) -> vec2<f32> {
    global1 = array<vec3<f32>, 20>();
    var var_0 = ~vec4<i32>(-(0i << (_wgslsmith_div_u32(global0.c.x, global0.c.x) % 32u)), _wgslsmith_dot_vec2_i32(countOneBits(-vec2<i32>(global0.d, -36966i)), vec2<i32>(68483i, -global0.d)), _wgslsmith_mod_i32(min(global0.b, 2147483647i), ~(-global0.b)), global0.b);
    let var_1 = -15556i;
    var var_2 = Struct_5(Struct_2(var_0.x < 2147483647i, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1035f, -2660f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1862f, 261f) * vec2<f32>(1155f, 588f))))), 68849u, Struct_1(arg_0, func_3(), vec4<u32>(u_input.a.x, u_input.a.x, global0.c.x, 27005u) & _wgslsmith_mod_vec4_u32(global0.c, global0.c), select(-var_1, ~24441i, !global0.a), vec4<u32>(~u_input.a.x, select(24230u, 0u, true), abs(1u), global0.e.x)), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(4294967295u, global0.c.x, global0.c.x, u_input.a.x)), abs(global0.e))), firstLeadingBit(~u_input.a.x));
    var_2 = Struct_5(var_2.a, 61320u);
    return var_2.a.b;
}

fn func_1(arg_0: vec2<u32>, arg_1: f32) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(775f, arg_1) * vec2<f32>(_wgslsmith_f_op_f32(round(-864f)), _wgslsmith_f_op_f32(1450f - arg_1))) - vec2<f32>(2081f, arg_1)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(true, _wgslsmith_f_op_f32(arg_1 * -1000f) >= arg_1)) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(987f, 1656f) + vec2<f32>(-602f, 749f)), vec2<f32>(arg_1, arg_1))))));
    let var_1 = Struct_1(true, global0.d & _wgslsmith_add_i32(global0.b, func_3()), _wgslsmith_clamp_vec4_u32(~global0.e, global0.e, _wgslsmith_sub_vec4_u32(countOneBits(global0.c), global0.e)), -global0.d, global0.e);
    let var_2 = !(!(!select(vec4<bool>(global0.a, false, false, var_1.a), !vec4<bool>(true, true, global0.a, global0.a), select(vec4<bool>(var_1.a, true, true, var_1.a), vec4<bool>(global0.a, global0.a, var_1.a, var_1.a), vec4<bool>(global0.a, var_1.a, true, global0.a)))));
    global0 = var_1;
    let var_3 = -4228i;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 20>();
    let var_0 = ~u_input.a;
    global0 = func_1(u_input.a.yy, _wgslsmith_f_op_f32(max(1234f, -762f)));
    global1 = array<vec3<f32>, 20>();
    var var_1 = Struct_1(true, reverseBits(i32(-1i) * -2147483647i), firstTrailingBit(vec4<u32>(_wgslsmith_mult_u32(42342u, ~var_0.x), _wgslsmith_dot_vec4_u32(global0.e ^ global0.c, vec4<u32>(4294967295u, 32979u, global0.e.x, 95121u) >> (vec4<u32>(global0.e.x, global0.e.x, 0u, var_0.x) % vec4<u32>(32u))), u_input.a.x, u_input.a.x)), 14809i, ~vec4<u32>(~_wgslsmith_div_u32(u_input.a.x, var_0.x), _wgslsmith_sub_u32(u_input.a.x, global0.e.x) << (4294967295u % 32u), _wgslsmith_clamp_u32(u_input.a.x, ~1u, 20048u), _wgslsmith_sub_u32(0u, var_0.x)));
    var var_2 = global0.d;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.e.x, firstLeadingBit(_wgslsmith_div_vec2_u32(u_input.a.yy, var_1.e.xx)), global1[_wgslsmith_index_u32(4294967295u, 20u)], _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~(vec4<u32>(global0.c.x, 0u, 2036u, 11379u) << (global0.e % vec4<u32>(32u))), firstTrailingBit(var_1.c) >> (var_1.e % vec4<u32>(32u))), 29126u, (~var_1.c.x << (17694u % 32u)) << (1u % 32u)), global0.b);
}

