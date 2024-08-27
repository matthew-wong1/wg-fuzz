struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13> = array<i32, 13>(-1i, i32(-2147483648), -49000i, 0i, -37285i, 1i, -20126i, 2147483647i, i32(-2147483648), 25991i, -16199i, 49220i, 0i);

var<private> global1: array<vec3<u32>, 24>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> vec4<f32> {
    global0 = array<i32, 13>();
    global1 = array<vec3<u32>, 24>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1006f - 324f)), 152f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-992f - 802f)))));
    global1 = array<vec3<u32>, 24>();
    global1 = array<vec3<u32>, 24>();
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 24>();
    var var_0 = u_input.a.x;
    let var_1 = -min(2147483647i, u_input.a.x);
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-824f, 732f, -929f, 383f)))), vec4<f32>(_wgslsmith_f_op_f32(step(550f, 228f)), _wgslsmith_f_op_f32(min(-201f, 244f)), _wgslsmith_f_op_f32(f32(-1f) * -433f), _wgslsmith_f_op_f32(f32(-1f) * -309f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1259f, _wgslsmith_f_op_f32(256f - -754f), 693f, _wgslsmith_f_op_f32(abs(-274f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1951f, 1690f, 1094f, 654f) * vec4<f32>(671f, 513f, -470f, 895f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1155f, -807f, -958f, -660f))))));
    var var_4 = 1i;
    var var_5 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec4<u32>(1u, _wgslsmith_clamp_u32(18180u, 1u, 1u), 0u >> (1u % 32u), 1u)));
}

