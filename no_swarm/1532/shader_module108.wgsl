struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(46242u, 71712u, 1u);

var<private> global1: array<u32, 23>;

var<private> global2: array<u32, 20>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~1u;
    let var_1 = 1052f;
    global1 = array<u32, 23>();
    let var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, 132f, 630f) + vec3<f32>(611f, -1000f, var_1)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1081f, -1447f, -1328f))))) * _wgslsmith_div_vec3_f32(vec3<f32>(-264f, var_1, _wgslsmith_f_op_f32(-355f + -133f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(101f, 414f, 2313f)) - _wgslsmith_div_vec3_f32(vec3<f32>(var_1, var_1, -759f), vec3<f32>(var_1, -491f, var_1)))))));
    let var_3 = Struct_2(-540f);
    let var_4 = vec2<u32>(_wgslsmith_sub_u32(~_wgslsmith_clamp_u32(global0.x, reverseBits(0u), 4294967295u), global0.x), ~(min(global2[_wgslsmith_index_u32(34852u, 20u)], _wgslsmith_mult_u32(u_input.c.x, 22034u)) | ~countOneBits(4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(ceil(var_1))), -643f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_3.a)))), vec4<f32>(200f, _wgslsmith_f_op_f32(f32(-1f) * -950f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.x, var_3.a)) - -899f), -231f))), vec2<u32>(abs(var_4.x), 4294967295u));
}

