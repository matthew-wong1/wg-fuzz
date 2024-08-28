struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(all(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false))) != false, select(1i, -48351i, !all(vec3<bool>(false, false, true))) > 0i, true, true);
    global0 = vec4<f32>(-993f, 597f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-376f, global0.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(global0.x, -1297f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), -1124f)), global0.x), true)));
    var var_1 = ~_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.c), vec4<u32>(1u, u_input.c, 53652u, 1u) & vec4<u32>(u_input.a, 1u, u_input.c, u_input.b.x)) | u_input.b, u_input.b);
    var_1 = ~u_input.b;
    let var_2 = max(vec2<u32>(~countOneBits(u_input.b.x), u_input.b.x), u_input.b.yx) << (_wgslsmith_sub_vec2_u32(u_input.b.xw, ~countOneBits(vec2<u32>(var_1.x, var_1.x))) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(sign(-1243f)))), _wgslsmith_clamp_u32(u_input.a, ~(~(0u & var_2.x)), _wgslsmith_add_u32(~_wgslsmith_div_u32(var_2.x, 22580u), abs(1u & var_2.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -161f), -1000f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.yx)))), vec3<u32>(41305u, 0u, 7079u) | vec3<u32>(countOneBits(8159u), _wgslsmith_mod_u32(24725u, var_1.x), 4294967295u));
}

