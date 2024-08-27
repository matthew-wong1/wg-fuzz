struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: f32) -> bool {
    let var_0 = !vec4<bool>(~(~48428u) <= u_input.b.x, any(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true))), 36599i <= u_input.a.x, true);
    var var_1 = ~(~vec3<i32>(10370i, ~(~(-19807i)), u_input.a.x));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(f32(-1f) * -251f)) * arg_0));
    var var_3 = Struct_1((all(vec3<bool>(true, true, true)) == (!var_0.x | true)) != !((i32(-1i) * -13846i) < _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.d.x, -5041i), u_input.d)));
    let var_4 = Struct_1(all(vec4<bool>(var_3.a && (var_3.a & false), false, true, !(!var_3.a))));
    return false;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: i32) -> Struct_1 {
    var var_0 = !vec2<bool>(arg_1.a, !func_2(_wgslsmith_f_op_f32(-arg_2.x)));
    var var_1 = vec3<bool>(!arg_1.a, any(select(!vec3<bool>(arg_1.a, true, true), select(!vec3<bool>(true, arg_1.a, var_0.x), vec3<bool>(true, false, false), true), select(vec3<bool>(var_0.x, arg_1.a, arg_1.a), select(vec3<bool>(true, arg_1.a, var_0.x), vec3<bool>(true, false, var_0.x), var_0.x), !vec3<bool>(var_0.x, false, false)))), arg_1.a);
    let var_2 = Struct_1(!any(vec3<bool>(false, func_2(-2394f), true)));
    var var_3 = var_2;
    let var_4 = arg_3;
    return Struct_1(!arg_1.a);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = u_input.d;
    var var_1 = vec3<bool>(arg_2.a, func_2(arg_1) || true, arg_0.a);
    var var_2 = !(!select(!var_1.x, !arg_2.a, var_1.x && any(vec4<bool>(false, false, var_1.x, arg_2.a))));
    let var_3 = Struct_1(arg_2.a | !func_1(vec3<f32>(arg_1, arg_1, arg_1), func_1(vec3<f32>(-1133f, arg_1, arg_1), Struct_1(false), vec2<f32>(351f, 695f), 1i), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, 393f) * vec2<f32>(660f, arg_1)), u_input.a.x).a);
    let var_4 = vec2<u32>(u_input.b.x, ~(~(~u_input.c.x) >> (u_input.c.x % 32u)));
    return Struct_1(false);
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> StorageBuffer {
    var var_0 = firstTrailingBit(~u_input.c);
    var_0 = ~(~(~(~(~u_input.c))));
    var_0 = reverseBits(firstTrailingBit(~(~vec3<u32>(var_0.x, arg_1, var_0.x)) ^ u_input.c));
    let var_1 = Struct_1(true);
    let var_2 = var_1;
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-648f, 1000f, _wgslsmith_f_op_f32(923f * -505f), _wgslsmith_f_op_f32(f32(-1f) * -1193f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(496f, 1234f, 1382f, -287f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1585f, 211f, 1000f, -632f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_3(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, 409f, 460f)))), Struct_1(u_input.c.x <= 4294967295u), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * vec2<f32>(460f, -1676f)), min(u_input.a.x, u_input.a.x) << (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 82451u, u_input.b.x), vec3<u32>(1u, 3723u, u_input.c.x)) % 32u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -229f)))), Struct_1(any(vec2<bool>(true, true)))), _wgslsmith_mult_u32(u_input.c.x, _wgslsmith_sub_u32(~1u, _wgslsmith_div_u32(1u, 2742u))));
}

