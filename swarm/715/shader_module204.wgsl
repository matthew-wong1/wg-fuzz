struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> f32 {
    let var_0 = -2147483647i;
    global0 = ~_wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(~2745u, u_input.e.x)), u_input.c.zy);
    global0 = _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(~(~u_input.e.xz), u_input.e.xw), ~max(global0.x | 85674u, 1u)), abs(vec2<u32>(u_input.b, global0.x)));
    global0 = ~(u_input.c.ww >> ((vec2<u32>(global0.x, 4294967295u) ^ _wgslsmith_add_vec2_u32(vec2<u32>(u_input.e.x, 4294967295u), u_input.c.wx)) % vec2<u32>(32u))) >> (u_input.c.zz % vec2<u32>(32u));
    var var_1 = _wgslsmith_f_op_f32(278f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1906f, -1000f)) + 251f));
    return 479f;
}

fn func_3(arg_0: f32) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0, -1000f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -1000f)))), vec2<bool>(true, true)))));
    let var_1 = vec2<f32>(var_0.x, -1256f);
    global0 = vec2<u32>(~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.b, 1u, 1u), ~u_input.e), select(46167u >> (1u % 32u), countOneBits(global0.x), -212f < arg_0)), u_input.e.x);
    global0 = vec2<u32>(_wgslsmith_mod_u32(59899u, ~(~77859u)), u_input.b);
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(var_1)), vec2<f32>(var_1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x)))))), _wgslsmith_f_op_vec2_f32(trunc(var_1)));
    return true;
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = vec2<bool>(all(vec3<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), select(any(vec2<bool>(false, false)), true, select(false, true, false)), true)), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * -695f)));
    global0 = vec2<u32>(firstTrailingBit(1u), global0.x);
    var var_1 = true;
    var var_2 = Struct_1(u_input.e, ~u_input.c);
    global0 = ~(~u_input.c.yx);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-1241f + -1573f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(870f - 1059f), -693f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec2_i32(~countOneBits(-u_input.a.yx), vec2<i32>(-1i, 0i)) >> ((u_input.c.x & u_input.e.x) % 32u);
    let var_1 = vec4<i32>(u_input.a.x & ~u_input.d, ~abs(-(u_input.d | -32401i)), -3324i, 39579i);
    global0 = u_input.e.zz;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(~global0.x)), _wgslsmith_f_op_f32(func_2())))));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -868f), 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, -2133f)) - _wgslsmith_f_op_f32(f32(-1f) * -677f)))));
    let var_3 = Struct_1(~min(u_input.e, select(_wgslsmith_sub_vec4_u32(vec4<u32>(22836u, 4294967295u, u_input.b, global0.x), vec4<u32>(u_input.e.x, global0.x, u_input.e.x, 36058u)), ~vec4<u32>(59375u, global0.x, global0.x, u_input.b), true)), ~firstLeadingBit(firstTrailingBit(~vec4<u32>(1u, u_input.c.x, global0.x, 10374u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, u_input.a);
}

