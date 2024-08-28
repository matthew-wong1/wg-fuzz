struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1() -> bool {
    global0 = ~u_input.c;
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1264f + -607f))), _wgslsmith_f_op_f32(trunc(-818f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-352f)), _wgslsmith_f_op_f32(sign(-890f)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-129f, -430f))));
    global0 = u_input.a;
    let var_1 = ~u_input.a;
    var var_2 = _wgslsmith_f_op_f32(-311f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))));
    return !(true & any(vec2<bool>(true, var_1 < u_input.c)));
}

fn func_2(arg_0: vec4<bool>, arg_1: u32) -> bool {
    var var_0 = Struct_3(~(~(~abs(vec4<u32>(38233u, 4294967295u, arg_1, arg_1)))));
    var_0 = Struct_3(~var_0.a);
    let var_1 = -(~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, _wgslsmith_add_i32(u_input.b, u_input.b)), -abs(vec2<i32>(u_input.b, 1i))));
    var var_2 = abs(firstLeadingBit(var_0.a));
    var var_3 = arg_0.zw;
    return !(max(arg_1, _wgslsmith_div_u32(1u, abs(var_2.x))) >= (countOneBits(_wgslsmith_mult_u32(4294967295u, var_2.x)) >> (~(~var_2.x) % 32u)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_3) -> vec4<f32> {
    global0 = u_input.c;
    global0 = arg_0.a.x;
    let var_0 = Struct_2(abs(~(~arg_0.a.x)) >> (arg_0.a.x % 32u));
    global0 = _wgslsmith_div_u32(4294967295u, _wgslsmith_mult_u32(1u, _wgslsmith_clamp_u32(~0u, 1u, reverseBits(u_input.c))) ^ ~_wgslsmith_mod_u32(select(1u, 66171u, true), _wgslsmith_mod_u32(0u, arg_0.a.x)));
    let var_1 = arg_1;
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(arg_1.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2106f, arg_1.b.x, var_1.a, arg_1.a))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.a, var_1.a, 853f, var_1.b.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(vec4<bool>(true, true, true, all(vec2<bool>(true, true))), !(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), true)), vec4<bool>(false, any(vec4<bool>(false, false, false, false)), select(func_1(), all(vec2<bool>(true, true)), true), true)), !(!vec4<bool>(true, true, true, func_2(vec4<bool>(true, false, true, false), 4294967295u))), ~(~(~u_input.c)) >= _wgslsmith_sub_u32(u_input.a, u_input.c));
    global0 = abs(u_input.a);
    let var_1 = Struct_3(~reverseBits(~(~vec4<u32>(u_input.a, u_input.a, 4294967295u, 4294967295u))));
    var var_2 = Struct_1(1f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-599f, -118f, 1300f, -102f), vec4<f32>(1947f, -2071f, 577f, 881f), true)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(var_1, Struct_1(636f, vec4<f32>(-391f, 318f, -1000f, 517f)), var_1)) * _wgslsmith_div_vec4_f32(vec4<f32>(2623f, -153f, -329f, -1000f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-886f, -2305f, -823f, -996f), vec4<f32>(-2097f, -209f, -510f, 250f)))))));
    let var_3 = countOneBits(1u);
    global0 = abs(~_wgslsmith_clamp_u32(~var_1.a.x, ~(~var_1.a.x), 36292u));
    let x = u_input.a;
    s_output = StorageBuffer(var_3, _wgslsmith_div_u32(u_input.c, _wgslsmith_mult_u32(~79102u, ~u_input.a | select(58590u, var_1.a.x, var_0.x))));
}

