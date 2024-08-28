struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 14> = array<vec4<f32>, 14>(vec4<f32>(1555f, 658f, -726f, 2031f), vec4<f32>(-1000f, 292f, -392f, 753f), vec4<f32>(929f, 182f, 712f, -600f), vec4<f32>(818f, -532f, -1127f, -350f), vec4<f32>(-2287f, -1391f, 1380f, 617f), vec4<f32>(-1592f, -793f, -486f, -874f), vec4<f32>(-856f, 2572f, 543f, 507f), vec4<f32>(1930f, 2013f, -1000f, -1033f), vec4<f32>(-1000f, -399f, 286f, -1000f), vec4<f32>(959f, -785f, -1000f, 1079f), vec4<f32>(662f, -742f, -1000f, 1674f), vec4<f32>(248f, 1223f, 595f, 1000f), vec4<f32>(-385f, 1493f, 839f, 741f), vec4<f32>(245f, 1000f, -1123f, -180f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(63682u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-772f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -248f))))), 480f), u_input.b);
    global0 = array<vec4<f32>, 14>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.b - var_0.b))), _wgslsmith_div_f32(694f, _wgslsmith_f_op_f32(var_0.b - var_0.b))))) < _wgslsmith_f_op_f32(round(var_0.b));
    var var_2 = var_1;
    var_0 = Struct_1(0u, _wgslsmith_f_op_f32(-1040f * 563f), ~_wgslsmith_clamp_vec4_u32(u_input.a, ~(~var_0.c), max(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.b.x, 0u), vec4<u32>(1u, 35948u, u_input.b.x, var_0.c.x))));
    global0 = array<vec4<f32>, 14>();
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1241f)) * _wgslsmith_f_op_f32(f32(-1f) * -322f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(var_0.b + var_0.b))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1579f))), -1734f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-2188f)))), _wgslsmith_f_op_f32(-var_0.b)), vec3<u32>(firstTrailingBit(_wgslsmith_div_u32(u_input.a.x, 1u)) << (var_0.c.x % 32u), ~0u, 0u), abs(u_input.c.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), -1281f) * -2181f));
}

