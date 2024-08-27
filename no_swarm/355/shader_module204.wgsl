struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<u32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: i32) -> f32 {
    let var_0 = arg_1;
    let var_1 = true;
    let var_2 = arg_1;
    var var_3 = !(firstTrailingBit(firstTrailingBit(-arg_2)) > u_input.b);
    let var_4 = 1u;
    return _wgslsmith_div_f32(arg_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - var_0.b)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b))));
}

fn func_4(arg_0: vec2<bool>, arg_1: f32) -> bool {
    return true;
}

fn func_2() -> vec3<u32> {
    var var_0 = select(vec4<bool>(true, select(select(true, true, true), true, true), any(vec3<bool>(true, true, true)), ((-2147483647i != u_input.b) || true) | true), vec4<bool>(true, true, true, true), !(0u == _wgslsmith_add_u32(global1.x, _wgslsmith_mult_u32(global1.x, 1u))));
    var var_1 = Struct_1((~0u & countOneBits(u_input.a)) != global1.x, -2720f, vec2<bool>(!var_0.x, var_0.x));
    global0 = var_1.a;
    global0 = ~(-_wgslsmith_add_i32(_wgslsmith_div_i32(0i, -7806i), -18934i)) >= -(~u_input.b);
    let var_2 = Struct_1(!func_4(!vec2<bool>(var_1.a, false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(577f * var_1.b) + _wgslsmith_f_op_f32(func_3(vec3<u32>(global1.x, u_input.a, 49896u), Struct_1(var_0.x, -2506f, vec2<bool>(true, true)), u_input.b)))), var_1.b, var_1.c);
    return vec3<u32>(66996u, 0u, 7877u);
}

fn func_1() -> Struct_1 {
    global1 = vec3<u32>(9863u, _wgslsmith_mult_u32(0u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(41496u, global1.x, u_input.a, global1.x), vec4<u32>(u_input.a, 124329u, 4294967295u, 15536u))), global1.x) ^ max(func_2(), vec3<u32>(func_2().x, global1.x, global1.x | u_input.a) >> (~(~vec3<u32>(4294967295u, 1u, u_input.a)) % vec3<u32>(32u)));
    global1 = ~(~vec3<u32>(global1.x, _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a, 4294967295u), abs(93269u)), _wgslsmith_mod_u32(countOneBits(global1.x), _wgslsmith_mult_u32(4294967295u, 1u))));
    global0 = false;
    let var_0 = Struct_1(any(select(vec4<bool>(false, true, all(vec2<bool>(false, false)), true), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false)), select(true, false, any(vec4<bool>(true, true, false, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(637f)), _wgslsmith_f_op_f32(508f + -638f)))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1357f)), -1000f, true))), !(!vec2<bool>(true, all(vec4<bool>(true, false, true, true)))));
    global1 = vec3<u32>(u_input.a, (1u << ((global1.x >> (min(u_input.a, 12053u) % 32u)) % 32u)) | ~_wgslsmith_dot_vec4_u32(~vec4<u32>(3613u, global1.x, global1.x, 0u), ~vec4<u32>(u_input.a, u_input.a, global1.x, 21576u)), ~global1.x);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = true;
    let var_1 = ~(-_wgslsmith_mod_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, -2147483647i, u_input.b), vec3<i32>(1i, u_input.b, -36510i)), _wgslsmith_clamp_vec3_i32(-vec3<i32>(-25763i, 678i, u_input.b), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, u_input.b, -29081i), vec3<i32>(2147483647i, u_input.b, u_input.b)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, -23623i, u_input.b), vec3<i32>(u_input.b, 0i, 0i), vec3<i32>(u_input.b, u_input.b, 1i)))));
    let var_2 = var_1.yz;
    global1 = max(~select(abs(vec3<u32>(4294967295u, 49943u, u_input.a)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a, 18655u, 34144u), vec3<u32>(1u, u_input.a, 22988u), vec3<u32>(global1.x, 40388u, global1.x)), var_0.c.x), _wgslsmith_div_vec3_u32(~(~_wgslsmith_add_vec3_u32(vec3<u32>(99250u, 20635u, u_input.a), vec3<u32>(1u, global1.x, u_input.a))), vec3<u32>(49176u, 1u, global1.x)));
    global0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, -2158f))), -reverseBits(abs(max(vec4<i32>(var_1.x, -1i, u_input.b, var_2.x), vec4<i32>(var_2.x, -35968i, -13148i, var_2.x)))), _wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-745f - _wgslsmith_f_op_f32(f32(-1f) * -1954f)), -393f, _wgslsmith_f_op_f32(f32(-1f) * -640f)))));
}

