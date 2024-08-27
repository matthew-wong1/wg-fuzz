struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.c.c.c, -1808f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, arg_0.c.c.b)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, arg_0.c.c.b)))))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(478f)), _wgslsmith_f_op_f32(select(-617f, arg_0.c.c.c, arg_0.c.b))) - _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b, arg_0.b), vec2<f32>(arg_0.c.c.b, -1142f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c.c.b, -139f) - vec2<f32>(-427f, arg_0.b))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c.c.b, arg_0.b) + vec2<f32>(arg_0.b, arg_0.b)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, arg_0.c.c.b)))))));
    var var_1 = 919f <= _wgslsmith_f_op_f32(-arg_0.c.c.c);
    return arg_0.d | arg_1.x;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = arg_1;
    var_0 = arg_0;
    global0 = abs(~var_0.a ^ arg_2);
    var var_1 = ~(-9574i) & (_wgslsmith_sub_i32(~arg_1.a, reverseBits(0i)) & -arg_2);
    var_0 = Struct_1(~(-countOneBits(var_0.a)), -1459f, _wgslsmith_f_op_f32(abs(-946f)));
    return vec4<i32>(1i, -11204i, _wgslsmith_add_i32(-_wgslsmith_div_i32(countOneBits(-761i), abs(arg_1.a)), abs(60465i)), 1i);
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    var var_0 = -2147483647i;
    var_0 = ~57290i;
    let var_1 = _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(func_3(Struct_1(-1i, _wgslsmith_f_op_f32(-992f + -1000f), -714f), Struct_1(-1i, _wgslsmith_div_f32(766f, 2377f), 365f), i32(-1i) * -1i, Struct_1(firstTrailingBit(-1i), 1f, 517f)), -vec4<i32>(1i, 1i, 1i, 1i)), min(0i, countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-30194i, 15420i), vec2<i32>(2147483647i, -11326i)))) ^ _wgslsmith_dot_vec4_i32(countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(-88019i, 1718i, 1i, -1i), vec4<i32>(23326i, 48382i, -1i, -2147483647i))), vec4<i32>(2147483647i, 1i, ~7445i, 0i)));
    let var_2 = Struct_2(_wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_clamp_vec2_u32(arg_0.xy, arg_0.xx, arg_0.yx) << (arg_0.zx % vec2<u32>(32u))), ~(~(vec2<u32>(arg_0.x, 0u) << (arg_0.zz % vec2<u32>(32u))))), any(vec4<bool>(any(vec2<bool>(false, true)), true & any(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, true)), true)), Struct_1(2147483647i, -704f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1020f)))));
    global0 = -3160i;
    return Struct_2(var_2.a, true, var_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1i;
    let var_0 = u_input.a << (~(~_wgslsmith_mult_u32(func_1(Struct_3(80726u, -2334f, Struct_2(6749u, true, Struct_1(2147483647i, 1000f, 965f)), 1u), vec2<u32>(u_input.a, 4294967295u)), ~u_input.a)) % 32u);
    let var_1 = Struct_3(u_input.a, -749f, func_2(~vec3<u32>(var_0, ~u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(35227u, var_0), vec2<u32>(1u, 66304u)))), ~u_input.a);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(max(354f, var_1.c.c.c)), _wgslsmith_f_op_f32(-func_2(vec3<u32>(4294967295u, countOneBits(7871u), _wgslsmith_clamp_u32(28215u, var_0, u_input.a))).c.c), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.c.c.b, 851f))))), var_1.c.c.b)), var_1.c.c.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), ~(vec2<u32>(105128u, var_0) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)))), _wgslsmith_add_u32(max(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a, 4294967295u) << (vec2<u32>(1u, u_input.a) % vec2<u32>(32u)), vec2<u32>(u_input.a, var_1.c.a) & vec2<u32>(var_0, 0u)), _wgslsmith_mult_u32(30268u, 60814u)), ~(~(~1u))), ~(-(_wgslsmith_mod_vec2_i32(vec2<i32>(var_1.c.c.a, var_1.c.c.a), vec2<i32>(var_1.c.c.a, 0i)) << (abs(vec2<u32>(u_input.a, 24109u)) % vec2<u32>(32u)))), var_1.c.c.a);
}

