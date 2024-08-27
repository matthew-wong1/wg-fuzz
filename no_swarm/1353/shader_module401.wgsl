struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -801f;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    let var_0 = max(u_input.a, 2147483647i) & reverseBits(u_input.a | -(u_input.a & -50352i));
    global0 = arg_0.x;
    var var_1 = Struct_1(~(~(~firstLeadingBit(u_input.c.x))));
    var var_2 = Struct_1(var_1.a);
    let var_3 = u_input.c;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.x + 498f), 268f, select(true, true, false))))));
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: vec3<i32>, arg_3: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<f32>(-251f, 1093f, 1092f, 1104f))) - -950f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-970f, -1787f) * vec2<f32>(-173f, 507f))))));
    var var_1 = Struct_1(arg_1.x);
    var var_2 = vec2<bool>(!any(vec2<bool>(true, true)), select(select(true, all(vec3<bool>(false, true, false)), true) || !(arg_1.x > var_1.a), all(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), !(-arg_2.x > ~arg_2.x)));
    var_2 = select(select(select(select(vec2<bool>(var_2.x, var_2.x), !vec2<bool>(var_2.x, var_2.x), select(vec2<bool>(false, false), vec2<bool>(true, false), var_2.x)), vec2<bool>(var_2.x, !var_2.x), !select(vec2<bool>(true, var_2.x), vec2<bool>(false, false), false)), vec2<bool>(!all(vec3<bool>(true, true, var_2.x)), false), select(vec2<bool>(false, var_2.x), vec2<bool>(!var_2.x, arg_3 >= arg_1.x), !(!var_2.x))), !(!vec2<bool>(var_2.x & var_2.x, !var_2.x)), true);
    var var_3 = Struct_1(13210u ^ reverseBits(var_1.a));
    return Struct_1(_wgslsmith_add_u32(11959u, 12710u));
}

fn func_1() -> f32 {
    var var_0 = func_2(_wgslsmith_mult_i32(u_input.a, u_input.a), u_input.c, vec3<i32>(u_input.a, -15720i, u_input.a), _wgslsmith_clamp_u32(u_input.b.x, reverseBits(select(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, 4294967295u, 4294967295u), vec4<u32>(u_input.c.x, u_input.c.x, 0u, u_input.b.x)), true)), u_input.b.x));
    var var_1 = vec2<bool>(false, true);
    let var_2 = vec2<u32>(var_0.a, abs(43224u));
    let var_3 = _wgslsmith_f_op_f32(min(-942f, -727f));
    let var_4 = true != var_1.x;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_3)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 * var_3)))), _wgslsmith_f_op_f32(f32(-1f) * -1908f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 871f;
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(716f * 937f))))))));
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1())));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -671f);
    let var_0 = 76309u;
    let x = u_input.a;
    s_output = StorageBuffer(var_0);
}

