struct Struct_1 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<vec3<i32>, 2>;

var<private> global2: array<Struct_1, 13>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-global0.x);
    global2 = array<Struct_1, 13>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-global0.zx);
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -398f);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -860f))));
    global0 = vec3<f32>(746f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(228f - 3302f)))))), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), select(abs(vec4<u32>(1u, 1u, 1u, 1u)), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(41755u, 1u, 1u, 4294967295u), vec4<u32>(27226u, 53915u, 17537u, 28164u), vec4<u32>(0u, 1u, 279u, 0u)), vec4<u32>(1u, 1u, 1u, 1u), vec4<bool>(true, true, true, true)), select(false, false, false) || false)), ~(~(~vec4<u32>(4294967295u, 3556u, 1u, 1u))), ~1i, 209f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1314f)) - -826f) - _wgslsmith_f_op_f32(exp2(var_1.x)))));
}

