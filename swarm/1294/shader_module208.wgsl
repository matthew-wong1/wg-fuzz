struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: vec4<u32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = select(!vec4<bool>(global0.x & true, false, global0.x, any(vec4<bool>(global0.x, global0.x, false, global0.x)) & global0.x), !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(false, false, global0.x, global0.x), global0.x), true & global0.x)), vec4<bool>(true, any(vec4<bool>(true, true, all(vec2<bool>(false, global0.x)), true)), any(vec2<bool>(all(vec4<bool>(global0.x, global0.x, false, global0.x)), all(vec2<bool>(false, true)))), (min(u_input.c.x, u_input.a) ^ arg_0) > u_input.c.x));
    let var_1 = vec3<i32>(arg_0, -u_input.d, arg_0);
    let var_2 = vec4<i32>(~arg_0, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.c, -vec4<i32>(2147483647i, -1i, var_1.x, var_1.x)), (u_input.a | -17913i) & -2147483647i), abs(abs(u_input.c.yy >> (u_input.b.zz % vec2<u32>(32u))))), min(-4836i, _wgslsmith_add_i32(min(-arg_0, ~arg_0), 0i << (max(13273u, u_input.b.x) % 32u))), -2147483647i);
    global0 = var_0.xy;
    var var_3 = abs(vec4<i32>(-1i, countOneBits(~548i), -u_input.d, 28196i));
    return !any(select(vec3<bool>(all(var_0.wy), var_0.x, global0.x), select(vec3<bool>(false, false, true), var_0.zyz, !var_0.wzy), true));
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: u32) -> Struct_3 {
    return Struct_3(func_3(-15463i));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3) -> Struct_3 {
    global0 = vec2<bool>(global0.x, all(!(!select(vec3<bool>(global0.x, false, arg_1.a), vec3<bool>(arg_1.a, arg_1.a, arg_0.a), vec3<bool>(true, arg_1.a, true)))));
    let var_0 = all(vec2<bool>(false, all(vec3<bool>(true, u_input.b.x >= u_input.b.x, all(vec4<bool>(arg_1.a, false, arg_1.a, false))))));
    var var_1 = true;
    return func_2(1560f, Struct_3(true), 1u);
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: vec2<i32>, arg_3: Struct_3) -> u32 {
    var var_0 = global0.x;
    let var_1 = ~4294967295u ^ _wgslsmith_add_u32(u_input.b.x, ~_wgslsmith_mult_u32(arg_0 ^ u_input.b.x, arg_0));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(144f + -1000f), 181f))));
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(1764f, _wgslsmith_f_op_f32(f32(-1f) * -422f)), _wgslsmith_f_op_f32(1171f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-844f + -1498f), 267f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1384f + -163f)))));
    let var_1 = var_0.x;
    var var_2 = -_wgslsmith_sub_i32(u_input.c.x, ~2147483647i);
    let var_3 = func_4(u_input.b.x, var_1, vec2<i32>(~_wgslsmith_dot_vec3_i32(u_input.c.wzw, abs(vec3<i32>(62230i, u_input.c.x, 33337i))), _wgslsmith_mod_i32(-45033i, _wgslsmith_add_i32(-2147483647i, -1i) << (0u % 32u))), func_1(Struct_3(global0.x), Struct_3(false)));
    var_2 = select(-33544i, -8756i, var_1 == _wgslsmith_f_op_f32(-var_1));
    var var_4 = all(vec2<bool>(global0.x, all(select(select(vec3<bool>(false, global0.x, true), vec3<bool>(global0.x, false, global0.x), vec3<bool>(global0.x, false, global0.x)), vec3<bool>(global0.x, false, false), true))));
    let var_5 = reverseBits(abs(firstTrailingBit(firstLeadingBit(select(vec4<u32>(26825u, u_input.b.x, 4294967295u, u_input.b.x), vec4<u32>(26881u, 4294967295u, var_3, var_3), vec4<bool>(global0.x, global0.x, false, global0.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-(_wgslsmith_add_vec4_i32(vec4<i32>(-56710i, 1i, u_input.c.x, -25909i), u_input.c) | select(vec4<i32>(u_input.a, -1i, u_input.c.x, u_input.a), vec4<i32>(22531i, -32975i, u_input.c.x, -2147483647i), vec4<bool>(false, global0.x, false, global0.x)))), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(min(u_input.a, u_input.c.x), u_input.c.x), -1i, 1i, 0i), vec4<i32>(-2147483647i, -25617i, firstTrailingBit(0i), ~u_input.c.x) ^ (-vec4<i32>(u_input.a, 29958i, -54601i, u_input.d) | -vec4<i32>(1i, u_input.a, 1i, 0i)), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.d, 6457i, u_input.a), vec4<i32>(u_input.c.x, -2147483647i, 12867i, 7377i)), _wgslsmith_mult_i32(u_input.d, u_input.d)), 14739i, _wgslsmith_mod_i32(u_input.a, -6725i) ^ _wgslsmith_sub_i32(-1i, 2147483647i), ~(i32(-1i) * -2147483647i))), var_5.x);
}

