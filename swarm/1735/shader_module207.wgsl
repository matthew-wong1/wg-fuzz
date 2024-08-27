struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: vec3<u32>) -> vec2<u32> {
    let var_0 = countOneBits(2147483647i);
    let var_1 = -(~vec3<i32>(41244i, 1i, var_0));
    var var_2 = arg_2;
    var var_3 = Struct_3(~reverseBits(select(~vec4<u32>(4294967295u, u_input.a, arg_2.x, arg_2.x), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 10295u, global0.x, 44132u), vec4<u32>(arg_2.x, 1u, 37860u, global0.x)), vec4<bool>(false, false, false, false))));
    global0 = arg_2.zx;
    return select(~vec2<u32>(abs(0u), 0u), var_2.yx, vec2<bool>(true, true));
}

fn func_1(arg_0: i32) -> vec3<bool> {
    global0 = min(_wgslsmith_sub_vec2_u32(firstLeadingBit(~_wgslsmith_add_vec2_u32(vec2<u32>(69426u, u_input.a), vec2<u32>(global0.x, u_input.a))), ~(vec2<u32>(global0.x, 1u) | func_2(Struct_4(vec3<i32>(arg_0, 22295i, -1i)), vec3<f32>(-140f, -493f, 1000f), vec3<u32>(global0.x, 55686u, global0.x)))), _wgslsmith_mult_vec2_u32(~((vec2<u32>(global0.x, global0.x) << (vec2<u32>(1u, 53194u) % vec2<u32>(32u))) | ~vec2<u32>(global0.x, 4294967295u)), countOneBits(vec2<u32>(abs(5361u), u_input.a >> (u_input.a % 32u)))));
    var var_0 = false;
    global0 = _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), max(vec2<u32>(global0.x, u_input.a), ~(vec2<u32>(46931u, global0.x) | vec2<u32>(33146u, 14309u)))), firstLeadingBit(vec2<u32>(abs(u_input.a) << (4294967295u % 32u), _wgslsmith_dot_vec2_u32(~vec2<u32>(21548u, 86312u), vec2<u32>(4294967295u, 4294967295u)))));
    let var_1 = abs(vec2<u32>(~global0.x, ~0u));
    var var_2 = !(!all(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))));
    return select(!(!vec3<bool>(true, true, select(true, true, true))), !select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), all(vec4<bool>(true, false, false, true))), true);
}

fn func_3(arg_0: vec2<bool>, arg_1: u32, arg_2: vec3<i32>) -> u32 {
    global0 = vec2<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(global0.x, 54818u), 53465u) & ((global0.x << (arg_1 % 32u)) ^ _wgslsmith_add_u32(arg_1, 4294967295u)), 1u), global0.x);
    var var_0 = ~(~(-select(~vec4<i32>(arg_2.x, arg_2.x, arg_2.x, 0i), max(vec4<i32>(arg_2.x, -2147483647i, arg_2.x, arg_2.x), vec4<i32>(arg_2.x, -1i, arg_2.x, -46663i)), select(vec4<bool>(false, arg_0.x, arg_0.x, false), vec4<bool>(false, false, arg_0.x, arg_0.x), arg_0.x))));
    var_0 = ~(~_wgslsmith_mod_vec4_i32(firstLeadingBit(firstTrailingBit(vec4<i32>(arg_2.x, var_0.x, arg_2.x, var_0.x))), reverseBits(abs(vec4<i32>(38151i, var_0.x, var_0.x, -13626i)))));
    let var_1 = vec4<bool>(1u > (~_wgslsmith_add_u32(28608u, u_input.a) | firstLeadingBit(u_input.a)), true, false, true);
    var var_2 = arg_2.x;
    return ~(~(~arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~vec2<u32>(35775u, ~4294967295u);
    let var_0 = func_1(abs(firstLeadingBit(1i)));
    global0 = abs(vec2<u32>(3726u, global0.x));
    global0 = ~(~vec2<u32>(_wgslsmith_mod_u32(2809u, global0.x) >> (func_3(vec2<bool>(true, var_0.x), 35165u, vec3<i32>(-1i, -19171i, 5192i)) % 32u), _wgslsmith_mod_u32(_wgslsmith_mult_u32(71819u, 43260u), ~u_input.a)));
    var var_1 = abs(vec2<i32>(~(-1i), _wgslsmith_mult_i32(~_wgslsmith_sub_i32(1i, 721i), 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(~(~13792i), ~var_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-763f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -111f)))))), ~max(max(vec4<i32>(var_1.x, -27352i, var_1.x, -15801i), vec4<i32>(2147483647i, 0i, var_1.x, var_1.x)), abs(vec4<i32>(-1i, 20250i, var_1.x, 0i))) & countOneBits(vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x) << (vec4<u32>(u_input.a, global0.x, global0.x, global0.x) % vec4<u32>(32u))), _wgslsmith_f_op_f32(max(206f, _wgslsmith_f_op_f32(step(1f, _wgslsmith_div_f32(-798f, 445f))))), min(vec3<i32>(-reverseBits(var_1.x), var_1.x, abs(~(-1i))), vec3<i32>(var_1.x, firstLeadingBit(~var_1.x), 1i)));
}

