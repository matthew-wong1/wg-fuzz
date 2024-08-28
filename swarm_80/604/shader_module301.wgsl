struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2(arg_0: vec4<u32>) -> i32 {
    let var_0 = Struct_1(vec4<i32>(~(_wgslsmith_mult_i32(8655i, u_input.c.x) & u_input.a), -1i, -28467i, _wgslsmith_add_i32(-62902i, u_input.a)), (-(~u_input.a) | u_input.c.x) == -max(-u_input.a, u_input.c.x));
    let var_1 = vec2<bool>(false, all(vec4<bool>(var_0.b, true, !var_0.b, true)) && false);
    var var_2 = Struct_1(firstLeadingBit(countOneBits(-select(var_0.a, var_0.a, var_1.x))), (-_wgslsmith_div_i32(45369i, u_input.c.x) >> (arg_0.x % 32u)) < _wgslsmith_add_i32(~u_input.a | _wgslsmith_mult_i32(0i, -2147483647i), u_input.c.x));
    var_2 = var_0;
    let var_3 = var_0;
    return var_0.a.x;
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = ~(~0u);
    var var_1 = arg_1;
    return vec4<u32>(firstTrailingBit(_wgslsmith_mod_u32(reverseBits(var_0) ^ ~u_input.b, 4294967295u)), _wgslsmith_add_u32(~(~_wgslsmith_mod_u32(0u, 8139u)), ~(var_0 >> (~u_input.b % 32u))), reverseBits(u_input.b), ~39730u);
}

fn func_1(arg_0: vec2<u32>) -> i32 {
    var var_0 = ~153922u | ~firstLeadingBit(_wgslsmith_mod_u32(arg_0.x, ~1u));
    let var_1 = vec2<i32>(select(func_2(~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.x, u_input.b, 0u, 0u), vec4<u32>(arg_0.x, 4294967295u, arg_0.x, u_input.b))), 2766i, true), max(-_wgslsmith_mult_i32(u_input.c.x, -23959i), -13269i) >> (~arg_0.x % 32u));
    let var_2 = ~(abs(vec4<u32>(1u, arg_0.x & arg_0.x, 0u, ~u_input.b)) & func_3(u_input.c.x, Struct_1(vec4<i32>(-23851i, u_input.a, 43659i, 4621i), select(false, false, false))));
    let var_3 = Struct_1(vec4<i32>(-1i) * -(~_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, 0i, 2147483647i, var_1.x), vec4<i32>(var_1.x, u_input.c.x, var_1.x, 0i))), -1744f <= _wgslsmith_f_op_f32(-151f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-140f, -300f)), _wgslsmith_f_op_f32(sign(-939f))))));
    var_0 = 49121u & arg_0.x;
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<i32>(-func_1(~vec2<u32>(4294967295u, 28341u)), -1i, firstLeadingBit(u_input.c.x), u_input.a), true);
    var var_1 = var_0.b;
    let var_2 = vec2<i32>(-1i) * -(~(~_wgslsmith_sub_vec2_i32(u_input.c, var_0.a.wx)));
    var var_3 = select(var_0.a, var_0.a, var_0.b);
    let var_4 = Struct_1(var_0.a, true != !any(vec2<bool>(var_0.b, false)));
    let x = u_input.a;
    s_output = StorageBuffer(~min(-(~var_0.a.x), ~(~u_input.c.x)), vec2<i32>(var_2.x, ~(-1i)) >> (countOneBits(vec2<u32>(countOneBits(1u), _wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.b))) % vec2<u32>(32u)));
}

