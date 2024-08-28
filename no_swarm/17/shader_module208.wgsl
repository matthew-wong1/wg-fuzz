struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(147f, 1731f) + vec2<f32>(2209f, -119f)), _wgslsmith_div_vec2_f32(vec2<f32>(1518f, -1000f), vec2<f32>(103f, 203f))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(482f, 965f) - vec2<f32>(-1000f, -960f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec4<i32>(2147483647i, -2163i, u_input.d.x, 1i)), u_input.b.yx, vec3<i32>(_wgslsmith_div_i32(~_wgslsmith_clamp_i32(u_input.d.x, u_input.d.x, 2763i), _wgslsmith_div_i32(1i, 1i)), 0i, u_input.d.x), _wgslsmith_f_op_f32(-var_0.x));
}

