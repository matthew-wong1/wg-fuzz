struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: f32) -> vec3<bool> {
    var var_0 = Struct_1(-1716f);
    var var_1 = 12113u;
    return arg_0;
}

fn func_1(arg_0: bool) -> u32 {
    global0 = _wgslsmith_div_i32(u_input.a, u_input.d.x);
    let var_0 = !(!func_2(select(vec3<bool>(arg_0, arg_0, true), select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, false, false), false), arg_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1307f, 577f, -745f)))), _wgslsmith_f_op_f32(f32(-1f) * -133f)));
    return u_input.b.x;
}

fn func_3(arg_0: vec4<u32>) -> Struct_2 {
    let var_0 = u_input.c;
    global0 = _wgslsmith_div_i32(var_0, ~firstLeadingBit(abs(2147483647i | u_input.d.x)));
    global0 = reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, 0i), reverseBits(vec3<i32>(_wgslsmith_sub_i32(38624i, var_0), _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(2147483647i, u_input.d.x, var_0)), var_0 & var_0))));
    let var_1 = _wgslsmith_div_vec2_u32(u_input.b, firstTrailingBit(select(min(~u_input.b, vec2<u32>(50970u, arg_0.x)), countOneBits(~vec2<u32>(1u, 1u)), vec2<bool>(true, true))));
    var var_2 = Struct_2(vec2<u32>(45898u, 29980u));
    return Struct_2(~max(~var_2.a, firstLeadingBit(_wgslsmith_mult_vec2_u32(arg_0.wz, var_1))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>) -> Struct_2 {
    let var_0 = Struct_2(arg_0.a);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-916f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1222f + -731f)))))));
    let var_2 = var_0.a.x;
    var var_3 = _wgslsmith_mult_u32(12984u, ~arg_0.a.x);
    var var_4 = var_1;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = i32(-1i) * -abs(-_wgslsmith_div_i32(u_input.a, 1i));
    var var_0 = func_4(func_3(min(vec4<u32>(0u, ~u_input.b.x, _wgslsmith_mod_u32(41743u, u_input.b.x), ~83706u), vec4<u32>(34653u, func_1(true), u_input.b.x, select(u_input.b.x, u_input.b.x, true)))), vec2<bool>(true, true));
    var_0 = Struct_2(_wgslsmith_mult_vec2_u32(firstLeadingBit(select(var_0.a, var_0.a, true)), vec2<u32>(countOneBits(u_input.b.x), ~49067u)) ^ var_0.a);
    let var_1 = vec3<f32>(601f, _wgslsmith_f_op_f32(f32(-1f) * -486f), -397f);
    var_0 = func_3(~vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.b.x, var_0.a.x), 22857u), ~0u << (var_0.a.x % 32u), ~var_0.a.x, 17021u));
    let x = u_input.a;
    s_output = StorageBuffer(-489f, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_1.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2007f))), 164f), min(max(func_4(func_3(vec4<u32>(0u, 0u, 1u, var_0.a.x)), vec2<bool>(true, true)).a, select(firstTrailingBit(var_0.a), vec2<u32>(0u, 4294967295u), true)), ~(~_wgslsmith_add_vec2_u32(var_0.a, u_input.b))), max(~u_input.d.x, u_input.a), _wgslsmith_mult_i32(2147483647i, ~u_input.d.x));
}

