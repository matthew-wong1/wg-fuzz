struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<i32>) -> u32 {
    let var_0 = -10383i;
    var var_1 = Struct_2(~max(-6940i ^ u_input.b, -5141i) >> (~(~(~arg_1.c.a)) % 32u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.b)) * _wgslsmith_f_op_vec4_f32(-arg_1.b)), Struct_1(arg_1.c.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)) * _wgslsmith_f_op_f32(step(arg_0.b, _wgslsmith_f_op_f32(exp2(arg_0.b)))))));
    global0 = true;
    let var_2 = vec3<u32>(~var_1.c.a, ~var_1.c.a, arg_1.c.a);
    global0 = !all(select(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false), vec3<bool>(false, false, true))));
    return 1u;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: f32, arg_3: u32) -> vec2<bool> {
    let var_0 = 1u ^ ~abs(func_3(arg_1.c, arg_1, vec4<i32>(0i, arg_1.a, arg_1.a, u_input.b) & vec4<i32>(-1i, u_input.b, -28559i, u_input.b)));
    var var_1 = arg_1;
    let var_2 = arg_0.x;
    var var_3 = arg_1;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(f32(-1f) * -3121f)))));
    return vec2<bool>(true, true);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: f32) -> vec4<f32> {
    let var_0 = Struct_1(u_input.c.x, arg_2);
    global0 = any(!select(!vec4<bool>(true, false, true, arg_0.x), !vec4<bool>(arg_0.x, false, false, arg_1.x), func_2(vec2<f32>(1097f, -1876f), Struct_2(u_input.a.x, vec4<f32>(434f, var_0.b, -109f, 978f), Struct_1(var_0.a, 1000f)), var_0.b, var_0.a).x)) || (-727f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-765f, arg_2, arg_0.x))))));
    global0 = any(vec3<bool>(!(1u >= _wgslsmith_add_u32(1u, u_input.c.x)), true, select(all(vec4<bool>(arg_0.x, true, false, true)), true, arg_1.x == arg_1.x) != all(vec3<bool>(arg_1.x, arg_1.x, true))));
    var var_1 = false;
    let var_2 = select(vec3<bool>(all(arg_1), any(!(!vec4<bool>(arg_1.x, arg_1.x, arg_0.x, true))), (_wgslsmith_f_op_f32(-arg_2) <= var_0.b) != all(!vec3<bool>(arg_0.x, arg_1.x, true))), select(!(!vec3<bool>(arg_0.x, true, arg_0.x)), vec3<bool>(true == arg_1.x, any(!arg_1), true), arg_1.x), !select(!(!vec3<bool>(false, arg_1.x, arg_1.x)), !vec3<bool>(arg_1.x, false, arg_1.x), !(!vec3<bool>(arg_0.x, arg_0.x, arg_1.x))));
    return _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-530f, _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2 + var_0.b)))), _wgslsmith_f_op_f32(f32(-1f) * -242f))));
}

fn func_1() -> f32 {
    var var_0 = 122816u;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false)), !select(vec2<bool>(false, false), vec2<bool>(true, false), false)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), !func_2(vec2<f32>(617f, -1580f), Struct_2(-57790i, vec4<f32>(1884f, -991f, -826f, -533f), Struct_1(u_input.c.x, -295f)), 763f, 0u)), _wgslsmith_f_op_f32(ceil(1f)))));
    var_0 = 13783u;
    var var_2 = Struct_1(_wgslsmith_div_u32(_wgslsmith_add_u32(abs(countOneBits(u_input.c.x)), ~14540u), 1u), _wgslsmith_f_op_f32(abs(524f)));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())) > _wgslsmith_f_op_f32(round(1824f))));
    let var_0 = abs(~_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(1i, max(u_input.a.x, u_input.b))));
    global0 = true;
    let var_1 = Struct_2(i32(-1i) * -1i, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1524f, -248f, _wgslsmith_f_op_f32(select(310f, -785f, false)), _wgslsmith_f_op_f32(f32(-1f) * -161f)) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1788f), 673f, _wgslsmith_f_op_f32(step(815f, 773f)), 527f)))), Struct_1(u_input.c.x, -300f));
    let var_2 = var_1;
    var var_3 = _wgslsmith_sub_i32(-61265i, -_wgslsmith_sub_i32(~_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), -var_2.a));
    let var_4 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(4721i, var_2.c.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.b) - _wgslsmith_f_op_f32(max(-1607f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.b) - 866f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f - var_2.c.b), _wgslsmith_f_op_vec4_f32(func_4(vec2<bool>(false, true), vec2<bool>(true, true), var_4.b)).x, true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(var_1.b.x, 869f)), var_4.b)), _wgslsmith_f_op_f32(exp2(var_4.b)), _wgslsmith_f_op_f32(-var_2.b.x))));
}

