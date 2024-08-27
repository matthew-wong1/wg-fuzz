struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
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

var<private> global0: vec2<f32> = vec2<f32>(1260f, -247f);

var<private> global1: Struct_2;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1(arg_0: vec2<u32>, arg_1: u32, arg_2: vec3<i32>) -> u32 {
    return 38374u;
}

fn func_3(arg_0: Struct_2) -> u32 {
    global1 = Struct_2(global1.a, _wgslsmith_f_op_f32(-global0.x));
    let var_0 = abs(~vec4<u32>(global1.a.x & ~16684u, 55613u, _wgslsmith_add_u32(_wgslsmith_sub_u32(4294967295u, arg_0.a.x), 4294967295u), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.a.x, 50748u, 0u, arg_0.a.x), ~vec4<u32>(2139u, 27733u, 1849u, 4294967295u))));
    return 124263u;
}

fn func_2(arg_0: vec3<f32>) -> vec2<f32> {
    global0 = arg_0.yz;
    global0 = _wgslsmith_f_op_vec2_f32(abs(arg_0.yx));
    global1 = Struct_2(vec3<u32>(func_3(Struct_2(vec3<u32>(global1.a.x, global1.a.x, 84482u), _wgslsmith_f_op_f32(select(-138f, global0.x, false)))), global1.a.x, func_3(Struct_2(vec3<u32>(global1.a.x, 25183u, global1.a.x) ^ vec3<u32>(0u, 4294967295u, global1.a.x), global0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1107f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b * global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(step(1583f, -500f)), true)))));
    var var_0 = 4294967295u;
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1.b, -889f)));
    return _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(arg_0.xx - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(arg_0.yy)) * _wgslsmith_f_op_vec2_f32(arg_0.zx - arg_0.xy)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1000f)))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.b, -1370f))), vec2<f32>(769f, 623f))));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1348f, global1.b))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * -771f))), -108f));
    var var_1 = _wgslsmith_clamp_u32(func_1(~(~vec2<u32>(global1.a.x, 0u)), 0u, ~u_input.a & u_input.a), 101189u & min(_wgslsmith_mod_u32(_wgslsmith_div_u32(global1.a.x, global1.a.x), global1.a.x), 1u), 4294967295u | global1.a.x);
    var_1 = 6345u;
    global0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2277f, global1.b)) + vec2<f32>(global1.b, -3133f)) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, global1.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -462f) * vec2<f32>(-692f, global1.b)), select(vec2<bool>(false, true), vec2<bool>(true, false), false)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, 854f))), vec2<f32>(global1.b, 272f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global1.b, -749f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 232f, -1000f) + vec3<f32>(-105f, 1093f, global0.x))))))));
    var var_2 = !(!vec4<bool>(true, false, false, false | select(false, true, false)));
    let x = u_input.a;
    s_output = StorageBuffer(min(72631u, global1.a.x));
}

