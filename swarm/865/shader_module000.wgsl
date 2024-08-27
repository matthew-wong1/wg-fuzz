struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: i32,
    d: vec3<f32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(-701f, Struct_1(-1000f), 471f);

var<private> global1: array<Struct_2, 24>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<f32> {
    global0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -772f)) - global0.c), Struct_1(-1069f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)) - 700f) + -850f));
    var var_0 = ~(~_wgslsmith_clamp_vec4_u32(select(vec4<u32>(4294967295u, 29029u, 26983u, u_input.c), vec4<u32>(4294967295u, u_input.c, u_input.c, u_input.c), vec4<bool>(false, false, false, false)), vec4<u32>(1u, u_input.c, 9754u, 5119u), countOneBits(vec4<u32>(u_input.c, u_input.c, 86022u, u_input.c))) & vec4<u32>(62913u, ~(~u_input.c), 4294967295u, ~_wgslsmith_mult_u32(1u, 3098u)));
    var_0 = ~vec4<u32>(var_0.x, min(select(var_0.x, ~u_input.c, true), ~(~var_0.x)), 0u, reverseBits(max(u_input.c, var_0.x) | 1u));
    let var_1 = countOneBits(var_0.wxz);
    var var_2 = Struct_5(Struct_3(select(-vec3<i32>(19379i, u_input.b.x, 0i), _wgslsmith_mult_vec3_i32(abs(vec3<i32>(-2147483647i, u_input.b.x, u_input.b.x)), vec3<i32>(0i, 1i, u_input.a) ^ vec3<i32>(u_input.b.x, 55700i, u_input.a)), true), global0.b, _wgslsmith_sub_i32(_wgslsmith_div_i32(~1i, u_input.b.x & u_input.a), u_input.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-2916f, global0.b.a, global0.c), vec3<f32>(1000f, 1084f, -285f))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, global0.c, global0.a), vec3<f32>(global0.a, global0.b.a, -1157f), vec3<bool>(true, true, true)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.c, global0.c, 1025f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.a, -1604f, global0.a) - vec3<f32>(-1269f, global0.b.a, global0.b.a))))), Struct_3(~(~abs(vec3<i32>(u_input.a, -10657i, u_input.a))), Struct_1(global0.b.a), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, u_input.a, u_input.b.x, -1i), select(vec4<i32>(u_input.a, -2147483647i, u_input.b.x, 0i), vec4<i32>(u_input.a, u_input.b.x, -2147483647i, u_input.a), vec4<bool>(true, true, false, true))), 0i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c, global0.b.a, -608f)))), Struct_3((vec3<i32>(2147483647i, u_input.b.x, u_input.b.x) ^ firstTrailingBit(vec3<i32>(u_input.a, -2147483647i, u_input.a))) << (var_0.wwz % vec3<u32>(32u)), global0.b, -29066i, vec3<f32>(_wgslsmith_f_op_f32(-global0.c), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-global0.c)), global0.c)));
    return vec4<f32>(global0.b.a, 2348f, -1000f, global0.b.a);
}

fn func_2() -> Struct_1 {
    var var_0 = ~_wgslsmith_div_vec2_i32(vec2<i32>(1i, u_input.a), abs(vec2<i32>(24218i, 62838i)));
    let var_1 = _wgslsmith_f_op_vec4_f32(func_3());
    var var_2 = vec2<u32>(u_input.c, 1u);
    var_2 = _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(~u_input.c, _wgslsmith_add_u32(4597u, 1u)), min(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, var_2.x), max(vec2<u32>(u_input.c, u_input.c), vec2<u32>(4294967295u, u_input.c))), _wgslsmith_div_vec2_u32(vec2<u32>(1426u, 0u), max(vec2<u32>(58147u, 50803u), vec2<u32>(u_input.c, var_2.x))))), _wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(var_2.x, ~6500u)), ~(vec2<u32>(4294967295u, u_input.c) >> ((vec2<u32>(133372u, 65143u) & vec2<u32>(var_2.x, 66934u)) % vec2<u32>(32u)))));
    let var_3 = vec3<i32>(1i, -2147483647i, _wgslsmith_dot_vec2_i32(abs(u_input.b) | -(~vec2<i32>(-7230i, 0i)), -(~(~vec2<i32>(u_input.a, 9224i)))));
    return global0.b;
}

fn func_1(arg_0: vec3<i32>) -> bool {
    global0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2092f)), func_2(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.a) - _wgslsmith_div_f32(global0.c, _wgslsmith_f_op_f32(min(global0.b.a, -846f)))) - func_2().a));
    var var_0 = ~vec2<u32>(~u_input.c, _wgslsmith_mod_u32(u_input.c, select(_wgslsmith_mult_u32(1u, u_input.c), ~1u, true)));
    let var_1 = select(vec3<i32>(u_input.a, arg_0.x, _wgslsmith_mult_i32(u_input.a << (u_input.c % 32u), ~_wgslsmith_add_i32(-1i, arg_0.x))), vec3<i32>(-36050i ^ _wgslsmith_dot_vec3_i32(arg_0, vec3<i32>(-1i, 0i, 3314i)), _wgslsmith_add_i32(-arg_0.x, u_input.a), -23766i) ^ arg_0, any(vec2<bool>(true, true)));
    let var_2 = Struct_5(Struct_3(abs(vec3<i32>(arg_0.x, u_input.b.x, _wgslsmith_div_i32(2147483647i, arg_0.x))), Struct_1(-515f), -48472i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.b.a, global0.c, global0.b.a))))), Struct_3(reverseBits(select(~arg_0, arg_0, any(vec3<bool>(true, false, true)))), func_2(), -2147483647i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, 1210f, 508f) + vec3<f32>(1331f, 764f, 194f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-687f, global0.b.a, -2521f) + vec3<f32>(-1873f, global0.b.a, -915f))))), Struct_3(~vec3<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(u_input.b, u_input.b), firstLeadingBit(-1i)), func_2(), 0i, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-102f, global0.a, 347f)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1035f, -418f, global0.c), vec3<f32>(global0.b.a, global0.b.a, global0.c)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(397f, -818f, global0.b.a) * vec3<f32>(613f, global0.a, 1580f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(138f, global0.c, -1365f)))))));
    let var_3 = var_2.c;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec3<i32>(select(-u_input.a, _wgslsmith_sub_i32(u_input.a, u_input.b.x), any(vec4<bool>(false, false, true, false))) & (i32(-1i) * -5045i), ~2147483647i, u_input.a));
    var var_1 = 466f;
    var var_2 = vec2<f32>(-1885f, global0.b.a);
    var var_3 = _wgslsmith_add_i32(0i, ~(-2147483647i));
    global1 = array<Struct_2, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, u_input.a, ~(-select(~vec3<i32>(0i, -47337i, u_input.a), vec3<i32>(u_input.b.x, 16743i, 1i), false)));
}

